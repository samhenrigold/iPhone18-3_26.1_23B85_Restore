@interface NPKSubcredentialProvisioningService
- (BOOL)isPairedDeviceConnected;
- (NPKSubcredentialProvisioningService)init;
- (id)_sendOptions;
- (id)_sendProtobuf:(id)protobuf responseExpected:(BOOL)expected extraOptions:(id)options;
- (void)_setUpSubcredentialProvisioningQueue;
- (void)_setUpSubcredentialProvisioningService;
- (void)_trackOutstandingRequestWithMessageIdentifier:(id)identifier completionHandler:(id)handler errorHandler:(id)errorHandler;
- (void)registerProtobufActionsForService:(id)service;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation NPKSubcredentialProvisioningService

- (NPKSubcredentialProvisioningService)init
{
  v13.receiver = self;
  v13.super_class = NPKSubcredentialProvisioningService;
  v2 = [(NPKSubcredentialProvisioningService *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassKit.NPKSubcredentialProvisioningService", 0);
    subcredentialProvisioningQueue = v2->_subcredentialProvisioningQueue;
    v2->_subcredentialProvisioningQueue = v3;

    v5 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.passbook.maintenance"];
    subcredentialService = v2->_subcredentialService;
    v2->_subcredentialService = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v2->_outstandingRequests;
    v2->_outstandingRequests = dictionary;

    v9 = v2->_subcredentialProvisioningQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKSubcredentialProvisioningService_init__block_invoke;
    block[3] = &unk_279944F98;
    v12 = v2;
    dispatch_sync(v9, block);
  }

  return v2;
}

uint64_t __43__NPKSubcredentialProvisioningService_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpSubcredentialProvisioningQueue];
  v2 = *(a1 + 32);

  return [v2 _setUpSubcredentialProvisioningService];
}

- (void)registerProtobufActionsForService:(id)service
{
  v13 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    v3 = pk_General_log(self);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v6 = pk_General_log(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136446722;
        v8 = "[NPKSubcredentialProvisioningService registerProtobufActionsForService:]";
        v9 = 2082;
        v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKSubcredentialProvisioningService.m";
        v11 = 2048;
        v12 = 47;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected service to be non-nil!)", &v7, 0x20u);
      }
    }

    _NPKAssertAbort();
  }
}

- (BOOL)isPairedDeviceConnected
{
  subcredentialService = [(NPKSubcredentialProvisioningService *)self subcredentialService];
  v3 = NPKIsConnectedToPairedOrPairingDeviceFromService(subcredentialService);

  return v3;
}

- (void)_setUpSubcredentialProvisioningQueue
{
  subcredentialProvisioningQueue = self->_subcredentialProvisioningQueue;
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_set_target_queue(subcredentialProvisioningQueue, v3);
}

- (void)_setUpSubcredentialProvisioningService
{
  v24 = *MEMORY[0x277D85DE8];
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  dispatch_assert_queue_V2(subcredentialProvisioningQueue);

  subcredentialService = [(NPKSubcredentialProvisioningService *)self subcredentialService];
  if (subcredentialService && (v5 = subcredentialService, [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    subcredentialService2 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
    [(NPKSubcredentialProvisioningService *)self registerProtobufActionsForService:subcredentialService2];

    subcredentialService3 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
    subcredentialProvisioningQueue2 = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
    [subcredentialService3 addDelegate:self queue:subcredentialProvisioningQueue2];
  }

  else
  {
    v9 = pk_General_log(subcredentialService);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        subcredentialService4 = [(NPKSubcredentialProvisioningService *)self subcredentialService];
        subcredentialProvisioningQueue3 = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
        *buf = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = subcredentialService4;
        v22 = 2112;
        v23 = subcredentialProvisioningQueue3;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected subcredentialProvisioningService and subcredentialProvisioningQueue to be non-nil! subcredentialProvisioningService: %@ subcredentialProvisioningQueue: %@", buf, 0x20u);
      }
    }
  }
}

- (id)_sendOptions
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D185D0];
  v5[0] = *MEMORY[0x277D185A0];
  v5[1] = v2;
  v6[0] = MEMORY[0x277CBEC38];
  v6[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (id)_sendProtobuf:(id)protobuf responseExpected:(BOOL)expected extraOptions:(id)options
{
  expectedCopy = expected;
  v37 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  optionsCopy = options;
  v10 = pk_General_log(optionsCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      npkDescription = [protobufCopy npkDescription];
      v17 = npkDescription;
      v18 = @"NO";
      *buf = 138544130;
      v30 = v15;
      if (expectedCopy)
      {
        v18 = @"YES";
      }

      v31 = 2112;
      v32 = npkDescription;
      v33 = 2112;
      v34 = v18;
      v35 = 2112;
      v36 = optionsCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending protobuf: %@ with response expected: %@ extra options: %@", buf, 0x2Au);
    }
  }

  _sendOptions = [(NPKSubcredentialProvisioningService *)self _sendOptions];
  v20 = [_sendOptions mutableCopy];

  if (expectedCopy)
  {
    v21 = &unk_286CE77D8;
  }

  else
  {
    v21 = &unk_286CE77E8;
  }

  [v20 setObject:v21 forKey:*MEMORY[0x277D18650]];
  if (optionsCopy)
  {
    [v20 addEntriesFromDictionary:optionsCopy];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__NPKSubcredentialProvisioningService__sendProtobuf_responseExpected_extraOptions___block_invoke;
  aBlock[3] = &unk_279945058;
  v28 = protobufCopy;
  v22 = protobufCopy;
  v23 = _Block_copy(aBlock);
  subcredentialService = [(NPKSubcredentialProvisioningService *)self subcredentialService];
  v25 = NPKProtoSendWithOptions(subcredentialService, v22, 200, 0, expectedCopy, v23, v20);

  return v25;
}

void __83__NPKSubcredentialProvisioningService__sendProtobuf_responseExpected_extraOptions___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: IDS failed to send protobuf %@", &v7, 0xCu);
    }
  }
}

- (void)_trackOutstandingRequestWithMessageIdentifier:(id)identifier completionHandler:(id)handler errorHandler:(id)errorHandler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  v11 = objc_alloc_init(NPKProvisioningServiceOutstandingRequest);
  [(NPKProvisioningServiceOutstandingRequest *)v11 setCompletionHandler:handlerCopy];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setErrorHandler:errorHandlerCopy];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setMessageIdentifier:identifierCopy];
  objc_initWeak(&location, self);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke;
  v18 = &unk_279945A98;
  objc_copyWeak(&v21, &location);
  v12 = identifierCopy;
  v19 = v12;
  v13 = errorHandlerCopy;
  v20 = v13;
  [(NPKProvisioningServiceOutstandingRequest *)v11 setTimeoutHandler:&v15];
  [(NPKProvisioningServiceOutstandingRequest *)v11 setTimeoutQueue:self->_subcredentialProvisioningQueue, v15, v16, v17, v18];
  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests setObject:v11 forKey:v12];

  [(NPKProvisioningServiceOutstandingRequest *)v11 setOrResetCleanupTimer];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v4 = [(dispatch_queue_t *)v3 outstandingRequests];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    v6 = [v5 errorHandler];
    v7 = [(dispatch_queue_t *)v3 outstandingRequests];
    [v7 removeObjectForKey:*(a1 + 32)];

    if (*(a1 + 40))
    {
      v9 = pk_Payment_log(v8);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v12 = pk_Payment_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          *buf = 138412290;
          v20 = v13;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Timed out waiting for response; invoking error handler for message %@", buf, 0xCu);
        }
      }

      v14 = NPKGetIDSCommunicationError();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __116__NPKSubcredentialProvisioningService__trackOutstandingRequestWithMessageIdentifier_completionHandler_errorHandler___block_invoke_34;
      v16[3] = &unk_279946670;
      v17 = v14;
      v18 = v6;
      v15 = v14;
      dispatch_async(MEMORY[0x277D85CD0], v16);
    }
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_General_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = changedCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service accounts changed: %@", &v11, 0x16u);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_General_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = changedCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service devices changed: %@", &v11, 0x16u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v42 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = pk_General_log(errorCopy);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v19 = pk_General_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v31 = v21;
      v32 = 2112;
      v33 = serviceCopy;
      v34 = 2112;
      v35 = accountCopy;
      v36 = 2112;
      v37 = identifierCopy;
      v38 = 1024;
      v39 = successCopy;
      v40 = 2112;
      v41 = errorCopy;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: IDS service did send with success: %@ %@ %@ %d %@", buf, 0x3Au);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke;
  v25[3] = &unk_2799471E8;
  objc_copyWeak(&v28, buf);
  v29 = successCopy;
  v26 = identifierCopy;
  v27 = errorCopy;
  v23 = errorCopy;
  v24 = identifierCopy;
  dispatch_async(subcredentialProvisioningQueue, v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

void __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained outstandingRequests];
  v4 = [v3 objectForKey:*(a1 + 32)];

  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = *(a1 + 32);
      v13 = [v4 errorHandler];
      v14 = _Block_copy(v13);
      *buf = 138544130;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v4;
      v39 = 2112;
      v40 = v14;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: identifier: %@ request: %@ error handler: %@", buf, 0x2Au);
    }
  }

  if (v4 && (*(a1 + 56) & 1) == 0)
  {
    v15 = NPKGetIDSCommunicationError();
    v16 = [MEMORY[0x277CBEB38] dictionary];
    v17 = v16;
    v18 = *(a1 + 40);
    if (v18)
    {
      [v16 setObject:v18 forKey:*MEMORY[0x277CCA7E8]];
    }

    v19 = [v15 localizedDescription];

    if (v19)
    {
      v20 = [v15 localizedDescription];
      [v17 setObject:v20 forKey:*MEMORY[0x277CCA450]];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = [v15 domain];
    v23 = [v21 errorWithDomain:v22 code:objc_msgSend(v15 userInfo:{"code"), v17}];

    v24 = [v4 errorHandler];
    if (v24)
    {
      v25 = dispatch_get_global_queue(0, 0);
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __91__NPKSubcredentialProvisioningService_service_account_identifier_didSendWithSuccess_error___block_invoke_36;
      v30 = &unk_279946670;
      v32 = v24;
      v31 = v23;
      dispatch_async(v25, &v27);
    }

    v26 = [WeakRetained outstandingRequests];
    [v26 removeObjectForKey:*(a1 + 32)];
  }
}

@end