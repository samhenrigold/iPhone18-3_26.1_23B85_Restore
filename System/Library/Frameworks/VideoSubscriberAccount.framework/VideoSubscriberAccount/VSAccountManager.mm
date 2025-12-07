@interface VSAccountManager
- (BOOL)viewServiceRequestOperation:(id)operation shouldAuthenticateAccountProviderWithIdentifier:(id)identifier;
- (VSAccountManager)init;
- (VSAccountManagerResult)enqueueAccountMetadataRequest:(VSAccountMetadataRequest *)request completionHandler:(void *)completionHandler;
- (id)_enqueueViewServiceRequest:(id)request completionHandler:(id)handler;
- (id)delegate;
- (void)checkAccessStatusWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
- (void)viewServiceRequestOperation:(id)operation dismissViewController:(id)controller;
- (void)viewServiceRequestOperation:(id)operation presentViewController:(id)controller;
@end

@implementation VSAccountManager

- (VSAccountManager)init
{
  v12.receiver = self;
  v12.super_class = VSAccountManager;
  v2 = [(VSAccountManager *)&v12 init];
  if (v2)
  {
    v3 = +[VSSecurityTask currentSecurityTask];
    securityTask = v2->_securityTask;
    v2->_securityTask = v3;

    v5 = +[VSPrivacyInfoCenter sharedPrivacyInfoCenter];
    privacyInfoCenter = v2->_privacyInfoCenter;
    v2->_privacyInfoCenter = v5;

    v7 = +[VSViewServiceRequestCenter sharedViewServiceRequestCenter];
    requestCenter = v2->_requestCenter;
    v2->_requestCenter = v7;

    v9 = objc_alloc_init(VSLinkedOnOrAfterChecker);
    linkedOnOrAfterChecker = v2->_linkedOnOrAfterChecker;
    v2->_linkedOnOrAfterChecker = v9;
  }

  return v2;
}

- (void)viewServiceRequestOperation:(id)operation presentViewController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = VSDefaultLogObject(controllerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "VSAccountManagerDelegate";
    v14 = 2080;
    v15 = "accountManager:presentViewController:";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will call [%s %s]", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke;
  v10[3] = &unk_278B73708;
  v10[4] = self;
  v11 = controllerCopy;
  v7 = controllerCopy;
  __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke(v10);
  v9 = VSDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "VSAccountManagerDelegate";
    v14 = 2080;
    v15 = "accountManager:presentViewController:";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Did call [%s %s]", buf, 0x16u);
  }
}

void __70__VSAccountManager_viewServiceRequestOperation_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountManager:*(a1 + 32) presentViewController:*(a1 + 40)];
}

- (void)viewServiceRequestOperation:(id)operation dismissViewController:(id)controller
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = VSDefaultLogObject(controllerCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "VSAccountManagerDelegate";
    v14 = 2080;
    v15 = "accountManager:dismissViewController:";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Will call [%s %s]", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke;
  v10[3] = &unk_278B73708;
  v10[4] = self;
  v11 = controllerCopy;
  v7 = controllerCopy;
  __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke(v10);
  v9 = VSDefaultLogObject(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "VSAccountManagerDelegate";
    v14 = 2080;
    v15 = "accountManager:dismissViewController:";
    _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Did call [%s %s]", buf, 0x16u);
  }
}

void __70__VSAccountManager_viewServiceRequestOperation_dismissViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountManager:*(a1 + 32) dismissViewController:*(a1 + 40)];
}

- (BOOL)viewServiceRequestOperation:(id)operation shouldAuthenticateAccountProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(VSAccountManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate accountManager:self shouldAuthenticateAccountProviderWithIdentifier:identifierCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)checkAccessStatusWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = options;
  v7 = completionHandler;
  v8 = VSDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  VSRequireUsageInfoPlistKey();
  if (v6)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The options parameter must not be nil."];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_5:
  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9];
  securityTask = [(VSAccountManager *)self securityTask];
  v35 = 0;
  v10 = VSCheckEntitlementForTask(securityTask, &v35);
  v11 = v35;

  if (v10)
  {
    privacyInfoCenter = [(VSAccountManager *)self privacyInfoCenter];
    accountAccessStatus = [privacyInfoCenter accountAccessStatus];
    v15 = accountAccessStatus;
    if ((accountAccessStatus - 1) < 3)
    {
      requestCenter = [(VSAccountManager *)self requestCenter];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_90;
      v29[3] = &unk_278B73B58;
      v31 = v15;
      v30 = v7;
      v17 = [requestCenter enqueueCompletionHandlerBlock:v29];

      v18 = v30;
LABEL_15:

      goto LABEL_16;
    }

    if (!accountAccessStatus)
    {
      v18 = objc_alloc_init(VSViewServiceRequest);
      v22 = [(NSDictionary *)v6 objectForKey:@"VSCheckAccessOptionPrompt"];
      bOOLValue = [v22 BOOLValue];

      [(VSViewServiceRequest *)v18 setAllowsPrivacyUI:bOOLValue];
      [(VSViewServiceRequest *)v18 setRequiresPrivacyUI:bOOLValue];
      linkedOnOrAfterChecker = [(VSAccountManager *)self linkedOnOrAfterChecker];
      -[VSViewServiceRequest setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:](v18, "setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:", [linkedOnOrAfterChecker shouldPerformBehavior:2]);

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2;
      v32[3] = &unk_278B73988;
      v33 = privacyInfoCenter;
      v34 = v7;
      v25 = [(VSAccountManager *)self _enqueueViewServiceRequest:v18 completionHandler:v32];

      goto LABEL_15;
    }
  }

  else
  {
    v19 = VSErrorLogObject(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VSAccountManager checkAccessStatusWithOptions:v11 completionHandler:v19];
    }

    requestCenter2 = [(VSAccountManager *)self requestCenter];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_91;
    v26[3] = &unk_278B737F8;
    v28 = v7;
    v27 = v11;
    v21 = [requestCenter2 enqueueCompletionHandlerBlock:v26];

    privacyInfoCenter = v28;
  }

LABEL_16:
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  if ([@"VSCheckAccessOptionPrompt" isEqual:v7])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = CFGetTypeID(v4), v5 != CFBooleanGetTypeID()))
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported value %@ for %@ option", v4, v7}];
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported option: %@", v7, v6}];
  }
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84;
  v8[3] = &unk_278B73848;
  v9 = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 40);
  v5 = v3;
  v6 = (__67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84)(v8);
  v7 = VSDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VSAccountManager checkAccessStatusWithOptions:completionHandler:]_block_invoke_4";
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_84(uint64_t a1)
{
  v2 = [*(a1 + 32) accountAccessStatus];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_2_85;
  v7[3] = &unk_278B73B08;
  v3 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_3;
  v4[3] = &unk_278B73B30;
  v5 = *(a1 + 48);
  v6 = v2;
  [v3 unwrapObject:v7 error:v4];
}

void __67__VSAccountManager_checkAccessStatusWithOptions_completionHandler___block_invoke_90(uint64_t a1)
{
  if (*(a1 + 40) == 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = VSPublicError(0, 0, 0);
  }

  v3 = v2;
  (*(*(a1 + 32) + 16))();
}

- (id)_enqueueViewServiceRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  privacyInfoCenter = [(VSAccountManager *)self privacyInfoCenter];
  requestCenter = [(VSAccountManager *)self requestCenter];
  accountAccessStatus = [privacyInfoCenter accountAccessStatus];
  if ((accountAccessStatus - 1) < 2)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke;
    v18[3] = &unk_278B73938;
    v12 = &v19;
    v19 = handlerCopy;
    v13 = [requestCenter enqueueCompletionHandlerBlock:v18];
LABEL_6:

    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!accountAccessStatus || accountAccessStatus == 3)
  {
    delegate = [(VSAccountManager *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_2;
    v15[3] = &unk_278B73988;
    v12 = &v16;
    v16 = privacyInfoCenter;
    v17 = handlerCopy;
    v13 = [requestCenter enqueueRequest:requestCopy withAccountManagerDelegate:delegate operationDelegate:self completionHandler:v15];

    goto LABEL_6;
  }

LABEL_7:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
  v13 = 0;
LABEL_8:

  return v13;
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke(uint64_t a1)
{
  v4 = VSPublicError(0, 0, 0);
  v2 = *(a1 + 32);
  v3 = [VSFailable failableWithError:v4];
  (*(v2 + 16))(v2, v3);
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_3;
  v9[3] = &unk_278B73B80;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_4;
  v6[3] = &unk_278B73BA8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v5 unwrapObject:v9 error:v6];
}

uint64_t __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) updateAccountAccessStatusWithResponse:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __65__VSAccountManager__enqueueViewServiceRequest_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) updateAccountAccessStatusWithError:a2];
  v3 = *(a1 + 40);
  v4 = [VSFailable failableWithError:v5];
  (*(v3 + 16))(v3, v4);
}

- (VSAccountManagerResult)enqueueAccountMetadataRequest:(VSAccountMetadataRequest *)request completionHandler:(void *)completionHandler
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = request;
  v7 = completionHandler;
  v8 = VSDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  VSRequireUsageInfoPlistKey();
  if (v6)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
    if (v7)
    {
      goto LABEL_5;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_5:
  securityTask = [(VSAccountManager *)self securityTask];
  v25 = 0;
  v10 = VSCheckEntitlementForTask(securityTask, &v25);
  v11 = v25;

  if (v10)
  {
    v13 = objc_alloc_init(VSViewServiceRequest);
    [(VSViewServiceRequest *)v13 setAccountMetadataRequest:v6];
    linkedOnOrAfterChecker = [(VSAccountManager *)self linkedOnOrAfterChecker];
    -[VSViewServiceRequest setShouldInferFeaturedProviders:](v13, "setShouldInferFeaturedProviders:", [linkedOnOrAfterChecker shouldPerformBehavior:1] ^ 1);

    [(VSViewServiceRequest *)v13 setAllowsPrivacyUI:[(VSAccountMetadataRequest *)v6 isInterruptionAllowed]];
    [(VSViewServiceRequest *)v13 setRequiresPrivacyUI:0];
    delegate = [(VSAccountManager *)self delegate];
    [(VSViewServiceRequest *)v13 setCanVetoAuthentication:objc_opt_respondsToSelector() & 1];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke;
    v23[3] = &unk_278B73BF8;
    v24 = v7;
    v16 = [(VSAccountManager *)self _enqueueViewServiceRequest:v13 completionHandler:v23];
  }

  else
  {
    v17 = VSErrorLogObject(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VSAccountManager enqueueAccountMetadataRequest:v11 completionHandler:v17];
    }

    requestCenter = [(VSAccountManager *)self requestCenter];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_101;
    v20[3] = &unk_278B737F8;
    v22 = v7;
    v21 = v11;
    v16 = [requestCenter enqueueCompletionHandlerBlock:v20];

    v13 = v22;
  }

  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The managerResult parameter must not be nil."];
  }

  return v16;
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]_block_invoke";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will call completion handler passed to %s", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99;
  v8[3] = &unk_278B73758;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = (__68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99)(v8);
  v7 = VSDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSAccountManager enqueueAccountMetadataRequest:completionHandler:]_block_invoke_4";
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Did call completion handler passed to %s", buf, 0xCu);
  }
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_99(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_2;
  v5[3] = &unk_278B73BD0;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_3;
  v3[3] = &unk_278B73910;
  v4 = *(a1 + 40);
  [v2 unwrapObject:v5 error:v3];
}

void __68__VSAccountManager_enqueueAccountMetadataRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accountMetadata];
  (*(*(a1 + 32) + 16))();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)checkAccessStatusWithOptions:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Check access caller process lacks entitlement: %@", &v2, 0xCu);
}

- (void)enqueueAccountMetadataRequest:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Metadata request caller process lacks entitlement: %@", &v2, 0xCu);
}

@end