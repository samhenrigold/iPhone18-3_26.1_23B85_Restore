@interface DKExtensionRequest
+ (id)requestWithExtensionAttributes:(id)attributes;
- (BOOL)_extensionContext:(id)context hasEntitlement:(id)entitlement;
- (DKExtensionRequest)initWithExtensionAttributes:(id)attributes;
- (DKRequestDelegate)delegate;
- (NSString)description;
- (id)connectWithError:(id *)error;
- (id)hostServicesDelegate;
- (void)_cancelTimedOutWithInfo:(id)info;
- (void)_finishWithResult:(id)result error:(id)error;
- (void)beginWithPayload:(id)payload;
- (void)cancel;
- (void)cancelExtensionRequest;
- (void)cancelWithError:(id)error;
- (void)complete;
- (void)completeWithPayload:(id)payload completion:(id)completion;
- (void)dismissViewControllerWithCompletion:(id)completion;
- (void)interrupt;
- (void)setNotAllowListedWithContactMessage:(id)message;
@end

@implementation DKExtensionRequest

+ (id)requestWithExtensionAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [[DKExtensionRequest alloc] initWithExtensionAttributes:attributesCopy];

  return v4;
}

- (DKExtensionRequest)initWithExtensionAttributes:(id)attributes
{
  attributesCopy = attributes;
  v13.receiver = self;
  v13.super_class = DKExtensionRequest;
  v6 = [(DKExtensionRequest *)&v13 init];
  v7 = v6;
  if (attributesCopy)
  {
    if (v6)
    {
      objc_storeStrong(&v6->_extensionAttributes, attributes);
      *&v7->_canceled = 0;
      v7->_interrupted = 0;
      v8 = dispatch_semaphore_create(0);
      connectSemaphore = v7->_connectSemaphore;
      v7->_connectSemaphore = v8;

      uUID = [MEMORY[0x277CCAD78] UUID];
      requestIdentifier = v7->_requestIdentifier;
      v7->_requestIdentifier = uUID;

      v7->_isAllowListed = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (id)connectWithError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  extensionRequestIdentifier = [(DKExtensionRequest *)self extensionRequestIdentifier];
  v6 = extensionRequestIdentifier == 0;

  if (v6)
  {
    if (objc_opt_class() && [MEMORY[0x277CF97E8] isCheckerBoardActive])
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      environment = [processInfo environment];

      v9 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
        *buf = 138412546;
        v57 = requestIdentifier;
        v58 = 2112;
        v59 = environment;
        _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "[RID: %@] My environment: %@", buf, 0x16u);
      }

      v11 = [environment dictionaryWithValuesForKeys:&unk_285B929D8];
      v12 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier2 = [(DKExtensionRequest *)self requestIdentifier];
        *buf = 138412546;
        v57 = requestIdentifier2;
        v58 = 2112;
        v59 = v11;
        _os_log_impl(&dword_248B9D000, v12, OS_LOG_TYPE_DEFAULT, "[RID: %@] Setting extension environment to: %@", buf, 0x16u);
      }

      extensionAttributes = [(DKExtensionRequest *)self extensionAttributes];
      extension = [extensionAttributes extension];
      _plugIn = [extension _plugIn];

      [_plugIn setEnvironment:v11];
    }

    extensionAttributes2 = [(DKExtensionRequest *)self extensionAttributes];
    isHeadless = [extensionAttributes2 isHeadless];

    if (isHeadless)
    {
      v19 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier3 = [(DKExtensionRequest *)self requestIdentifier];
        *buf = 138412290;
        v57 = requestIdentifier3;
        _os_log_impl(&dword_248B9D000, v19, OS_LOG_TYPE_DEFAULT, "[RID: %@] Connecting to extension without UI", buf, 0xCu);
      }

      extensionAttributes3 = [(DKExtensionRequest *)self extensionAttributes];
      extension2 = [extensionAttributes3 extension];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __39__DKExtensionRequest_connectWithError___block_invoke;
      v45[3] = &unk_278F6C448;
      v45[4] = self;
      v45[5] = &v46;
      [extension2 beginExtensionRequestWithOptions:1 inputItems:MEMORY[0x277CBEBF8] completion:v45];
    }

    else
    {
      v23 = DiagnosticsKitLogHandleForCategory(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        requestIdentifier4 = [(DKExtensionRequest *)self requestIdentifier];
        *buf = 138412290;
        v57 = requestIdentifier4;
        _os_log_impl(&dword_248B9D000, v23, OS_LOG_TYPE_DEFAULT, "[RID: %@] Connecting to extension with UI", buf, 0xCu);
      }

      extensionAttributes3 = [(DKExtensionRequest *)self extensionAttributes];
      extension2 = [extensionAttributes3 extension];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __39__DKExtensionRequest_connectWithError___block_invoke_17;
      v44[3] = &unk_278F6C470;
      v44[4] = self;
      v44[5] = &v46;
      [extension2 instantiateViewControllerWithInputItems:MEMORY[0x277CBEBF8] connectionHandler:v44];
    }

    connectSemaphore = [(DKExtensionRequest *)self connectSemaphore];
    v26 = dispatch_time(0, 5000000000);
    v27 = dispatch_semaphore_wait(connectSemaphore, v26);

    extensionRequestIdentifier2 = [(DKExtensionRequest *)self extensionRequestIdentifier];
    if (!extensionRequestIdentifier2 || (v29 = [(DKExtensionRequest *)self isInterrupted], extensionRequestIdentifier2, v29))
    {
      if ([(DKExtensionRequest *)self isInterrupted])
      {
        v30 = DiagnosticsKitLogHandleForCategory(1);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          requestIdentifier5 = [(DKExtensionRequest *)self requestIdentifier];
          [(DKExtensionRequest *)requestIdentifier5 connectWithError:buf, v30];
        }

        v32 = MEMORY[0x277CCA9B8];
        v54 = *MEMORY[0x277CCA450];
        v33 = DKErrorLocalizedDescriptionForCode(-1002);
        v55 = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v35 = [v32 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v34];
      }

      else
      {
        if (v27)
        {
          v36 = DiagnosticsKitLogHandleForCategory(1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            requestIdentifier6 = [(DKExtensionRequest *)self requestIdentifier];
            [(DKExtensionRequest *)requestIdentifier6 connectWithError:buf, v36];
          }
        }

        else
        {
          v36 = DiagnosticsKitLogHandleForCategory(1);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            requestIdentifier7 = [(DKExtensionRequest *)self requestIdentifier];
            [(DKExtensionRequest *)requestIdentifier7 connectWithError:buf, v36];
          }
        }

        v39 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA450];
        v33 = DKErrorLocalizedDescriptionForCode(-1001);
        v53 = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v35 = [v39 errorWithDomain:@"DKErrorDomain" code:-1001 userInfo:v34];
      }

      v40 = v47[5];
      v47[5] = v35;

      payload = [(DKExtensionRequest *)self payload];
      [(DKExtensionRequest *)self _finishWithResult:payload error:v47[5]];
    }

    if (error)
    {
      *error = v47[5];
    }
  }

  extensionRequestIdentifier3 = [(DKExtensionRequest *)self extensionRequestIdentifier];
  _Block_object_dispose(&v46, 8);

  return extensionRequestIdentifier3;
}

void __39__DKExtensionRequest_connectWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) requestIdentifier];
    v9 = *(a1 + 32);
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "[RID: %@] [ERID: %@] Extension connected: %@, error: %@", &v12, 0x2Au);
  }

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  if (([*(a1 + 32) isInterrupted] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    [*(a1 + 32) setExtensionRequestIdentifier:v5];
    v11 = [*(a1 + 32) connectSemaphore];
    dispatch_semaphore_signal(v11);
  }

  objc_sync_exit(v10);
}

void __39__DKExtensionRequest_connectWithError___block_invoke_17(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) requestIdentifier];
    v12 = *(a1 + 32);
    v15 = 138413058;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_248B9D000, v10, OS_LOG_TYPE_DEFAULT, "[RID: %@] [ERID: %@] Extension connected: %@, error: %@", &v15, 0x2Au);
  }

  v13 = *(a1 + 32);
  objc_sync_enter(v13);
  if (([*(a1 + 32) isInterrupted] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    [*(a1 + 32) setExtensionRequestIdentifier:v7];
    [*(a1 + 32) setRemoteViewController:v8];
    v14 = [*(a1 + 32) connectSemaphore];
    dispatch_semaphore_signal(v14);
  }

  objc_sync_exit(v13);
}

- (void)cancel
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    *buf = 138412290;
    v19 = requestIdentifier;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "[RID: %@] Cancel requested for extension.", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DKExtensionRequest *)selfCopy setCanceled:1];
  objc_sync_exit(selfCopy);

  hostAdapter = [(DKExtensionRequest *)selfCopy hostAdapter];

  if (hostAdapter)
  {
    v7 = MEMORY[0x277CBEBB8];
    extensionRequestIdentifier = [(DKExtensionRequest *)selfCopy extensionRequestIdentifier];
    v9 = [v7 scheduledTimerWithTimeInterval:selfCopy target:sel__cancelTimedOutWithInfo_ selector:extensionRequestIdentifier userInfo:0 repeats:5.0];

    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    hostAdapter2 = [(DKExtensionRequest *)selfCopy hostAdapter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__DKExtensionRequest_cancel__block_invoke;
    v15[3] = &unk_278F6C090;
    v16 = currentQueue;
    v17 = v9;
    v12 = v9;
    v13 = currentQueue;
    [hostAdapter2 cancelWithCompletion:v15];
  }

  else
  {
    v13 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier2 = [(DKExtensionRequest *)selfCopy requestIdentifier];
      *buf = 138412290;
      v19 = requestIdentifier2;
      _os_log_impl(&dword_248B9D000, v13, OS_LOG_TYPE_DEFAULT, "[RID: %@] Premature cancel; scheduled for after setup is complete.", buf, 0xCu);
    }
  }
}

void __28__DKExtensionRequest_cancel__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __28__DKExtensionRequest_cancel__block_invoke_2;
  v2[3] = &unk_278F6C050;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 addOperationWithBlock:v2];
}

- (void)setNotAllowListedWithContactMessage:(id)message
{
  v10 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = messageCopy;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Called setNotAllowListedWithContactMessage: %@", &v8, 0xCu);
  }

  [(DKExtensionRequest *)self setIsAllowListed:0];
  [(DKExtensionRequest *)self setAllowListContactMessage:messageCopy];
  hostAdapter = [(DKExtensionRequest *)self hostAdapter];

  if (hostAdapter)
  {
    hostAdapter2 = [(DKExtensionRequest *)self hostAdapter];
    [hostAdapter2 setNotAllowListedWithContactMessage:messageCopy];
  }
}

- (void)beginWithPayload:(id)payload
{
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  extensionAttributes = [(DKExtensionRequest *)self extensionAttributes];
  extension = [extensionAttributes extension];
  extensionRequestIdentifier = [(DKExtensionRequest *)self extensionRequestIdentifier];
  v8 = [extension _extensionContextForUUID:extensionRequestIdentifier];

  v9 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    *buf = 138412290;
    v33 = requestIdentifier;
    _os_log_impl(&dword_248B9D000, v9, OS_LOG_TYPE_DEFAULT, "[RID: %@] Calling startWithPayload on the remote object proxy.", buf, 0xCu);
  }

  if ([v8 conformsToProtocol:&unk_285B9D1B0] && -[DKExtensionRequest _extensionContext:hasEntitlement:](self, "_extensionContext:hasEntitlement:", v8, @"com.apple.DiagnosticsKit.extension"))
  {
    [(DKExtensionRequest *)self setHostAdapter:v8];
    hostAdapter = [(DKExtensionRequest *)self hostAdapter];
    [hostAdapter setDelegate:self];

    if (objc_opt_class() && objc_opt_class() && objc_opt_class())
    {
      v12 = MEMORY[0x277D47000];
      _auxiliaryConnection = [v8 _auxiliaryConnection];
      v14 = [v12 targetWithPid:{objc_msgSend(_auxiliaryConnection, "processIdentifier")}];

      v15 = [MEMORY[0x277D46E40] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
      v16 = objc_alloc(MEMORY[0x277D46DC0]);
      v31 = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      v18 = [v16 initWithExplanation:@"Diagnostics App Requested Task Assertion" target:v14 attributes:v17];
      [(DKExtensionRequest *)self setRbprocessAssertion:v18];

      rbprocessAssertion = [(DKExtensionRequest *)self rbprocessAssertion];
      [rbprocessAssertion acquireWithError:0];
    }

    if (![(DKExtensionRequest *)self isAllowListed])
    {
      hostAdapter2 = [(DKExtensionRequest *)self hostAdapter];
      allowListContactMessage = [(DKExtensionRequest *)self allowListContactMessage];
      [hostAdapter2 setNotAllowListedWithContactMessage:allowListContactMessage];
    }

    hostAdapter3 = [(DKExtensionRequest *)self hostAdapter];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__DKExtensionRequest_beginWithPayload___block_invoke;
    v28[3] = &unk_278F6C498;
    v28[4] = self;
    [hostAdapter3 startWithPayload:payloadCopy completion:v28];
  }

  else
  {
    v23 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(DKExtensionRequest *)self beginWithPayload:v23];
    }

    v24 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v25 = DKErrorLocalizedDescriptionForCode(-1006);
    v30 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    hostAdapter3 = [v24 errorWithDomain:@"DKErrorDomain" code:-1006 userInfo:v26];

    delegate = [(DKExtensionRequest *)self delegate];
    [delegate request:self didCompleteWithPayload:0 error:hostAdapter3];
  }
}

void __39__DKExtensionRequest_beginWithPayload___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) requestIdentifier];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "[RID: %@] Got completion from startWithPayload from the remote object proxy.", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if ([*(a1 + 32) isCanceled])
  {
    [*(a1 + 32) cancel];
  }

  objc_sync_exit(v6);

  if ([*(a1 + 32) isCanceled])
  {
    goto LABEL_10;
  }

  v7 = [*(a1 + 32) remoteViewController];
  if (!v7)
  {
    a2 = 0;
  }

  if (!a2)
  {
LABEL_10:
    [*(a1 + 32) setRemoteViewController:0];
  }

  else
  {
    v8 = [*(a1 + 32) hostAdapter];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__DKExtensionRequest_beginWithPayload___block_invoke_99;
    v9[3] = &unk_278F6C498;
    v9[4] = *(a1 + 32);
    [v8 checkShouldShowViewController:v9];
  }
}

void __39__DKExtensionRequest_beginWithPayload___block_invoke_99(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) hostServicesDelegate];
    v4 = [v3 conformsToProtocol:&unk_285B9F948];

    if (v4)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__DKExtensionRequest_beginWithPayload___block_invoke_2;
      block[3] = &unk_278F6C050;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __39__DKExtensionRequest_beginWithPayload___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hostServicesDelegate];
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  v5 = [v4 remoteViewController];
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__DKExtensionRequest_beginWithPayload___block_invoke_4;
    v6[3] = &unk_278F6C050;
    v6[4] = *(a1 + 32);
    [v2 request:v4 presentViewController:v5 completion:&__block_literal_global_12 responderChainUpdateHandler:v6];
  }

  else
  {
    [v2 request:v4 presentViewController:v5 completion:&__block_literal_global_110];
  }
}

void __39__DKExtensionRequest_beginWithPayload___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) hostAdapter];
  [v1 setNeedsUpdateResponder];
}

- (void)interrupt
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    *buf = 138412546;
    v14 = requestIdentifier;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "[RID: %@] interrupt: %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(DKExtensionRequest *)selfCopy2 setInterrupted:1];
  connectSemaphore = [(DKExtensionRequest *)selfCopy2 connectSemaphore];
  dispatch_semaphore_signal(connectSemaphore);

  objc_sync_exit(selfCopy2);
  v7 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v8 = DKErrorLocalizedDescriptionForCode(-1002);
  v12 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [v7 errorWithDomain:@"DKErrorDomain" code:-1002 userInfo:{v9, v11}];

  [(DKExtensionRequest *)selfCopy2 _finishWithResult:0 error:v10];
}

- (void)cancelWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    *buf = 138412546;
    v14 = requestIdentifier;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "[RID: %@] cancelWithError: %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277CCA9B8];
  v11[0] = *MEMORY[0x277CCA450];
  v8 = DKErrorLocalizedDescriptionForCode(-1003);
  v11[1] = *MEMORY[0x277CCA7E8];
  v12[0] = v8;
  v12[1] = errorCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v10 = [v7 errorWithDomain:@"DKErrorDomain" code:-1003 userInfo:{v9, v11[0]}];

  [(DKExtensionRequest *)self _finishWithResult:0 error:v10];
}

- (void)complete
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    v6 = 138412546;
    v7 = requestIdentifier;
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_248B9D000, v3, OS_LOG_TYPE_DEFAULT, "[RID: %@] complete: %@", &v6, 0x16u);
  }

  payload = [(DKExtensionRequest *)self payload];
  [(DKExtensionRequest *)self _finishWithResult:payload error:0];
}

- (void)cancelExtensionRequest
{
  extensionRequestIdentifier = [(DKExtensionRequest *)self extensionRequestIdentifier];

  if (extensionRequestIdentifier)
  {
    extensionAttributes = [(DKExtensionRequest *)self extensionAttributes];
    extension = [extensionAttributes extension];
    extensionRequestIdentifier2 = [(DKExtensionRequest *)self extensionRequestIdentifier];
    [extension cancelExtensionRequestWithIdentifier:extensionRequestIdentifier2];
  }
}

- (void)completeWithPayload:(id)payload completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  completionCopy = completion;
  v8 = DiagnosticsKitLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
    v10 = 138412546;
    v11 = requestIdentifier;
    v12 = 2112;
    v13 = payloadCopy;
    _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "[RID: %@] completeWithPayload: %@", &v10, 0x16u);
  }

  [(DKExtensionRequest *)self setPayload:payloadCopy];
  [(DKExtensionRequest *)self dismissViewControllerWithCompletion:completionCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
  extensionRequestIdentifier = [(DKExtensionRequest *)self extensionRequestIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p [RID: %@] [ERID: %@] canceled: %d, completed: %d, interrupted: %d>", v5, self, requestIdentifier, extensionRequestIdentifier, -[DKExtensionRequest isCanceled](self, "isCanceled"), -[DKExtensionRequest isCompleted](self, "isCompleted"), -[DKExtensionRequest isInterrupted](self, "isInterrupted")];;

  return v8;
}

- (void)_cancelTimedOutWithInfo:(id)info
{
  infoCopy = info;
  extensionAttributes = [(DKExtensionRequest *)self extensionAttributes];
  extension = [extensionAttributes extension];
  [extension cancelExtensionRequestWithIdentifier:infoCopy];
}

- (void)dismissViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteViewController = [(DKExtensionRequest *)self remoteViewController];
  if (remoteViewController && (v6 = remoteViewController, -[DKExtensionRequest hostServicesDelegate](self, "hostServicesDelegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 conformsToProtocol:&unk_285B9F948], v7, v6, v8))
  {
    remoteViewController2 = [(DKExtensionRequest *)self remoteViewController];
    [(DKExtensionRequest *)self setRemoteViewController:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__DKExtensionRequest_dismissViewControllerWithCompletion___block_invoke;
    block[3] = &unk_278F6C1A0;
    v12 = remoteViewController2;
    selfCopy = self;
    v14 = completionCopy;
    v10 = remoteViewController2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __58__DKExtensionRequest_dismissViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];

  if (v2)
  {
    v4 = [*(a1 + 40) hostServicesDelegate];
    [v4 request:*(a1 + 40) dismissViewController:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)_finishWithResult:(id)result error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if (![(DKExtensionRequest *)self isCompleted])
  {
    [(DKExtensionRequest *)self setCompleted:1];
    v8 = DiagnosticsKitLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      requestIdentifier = [(DKExtensionRequest *)self requestIdentifier];
      *buf = 138413058;
      v14 = requestIdentifier;
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      v18 = resultCopy;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_248B9D000, v8, OS_LOG_TYPE_DEFAULT, "[RID: %@] Finishing %@ with result: %@, error: %@", buf, 0x2Au);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__DKExtensionRequest__finishWithResult_error___block_invoke;
    v10[3] = &unk_278F6C378;
    v10[4] = self;
    v11 = resultCopy;
    v12 = errorCopy;
    [(DKExtensionRequest *)self dismissViewControllerWithCompletion:v10];
  }
}

uint64_t __46__DKExtensionRequest__finishWithResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 request:*(a1 + 32) didCompleteWithPayload:*(a1 + 40) error:*(a1 + 48)];

  v3 = [*(a1 + 32) rbprocessAssertion];
  [v3 invalidate];

  v4 = *(a1 + 32);

  return [v4 setRbprocessAssertion:0];
}

- (BOOL)_extensionContext:(id)context hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  _auxiliaryConnection = [context _auxiliaryConnection];
  v7 = [_auxiliaryConnection valueForEntitlement:entitlementCopy];

  LOBYTE(_auxiliaryConnection) = [v7 BOOLValue];
  return _auxiliaryConnection;
}

- (DKRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)hostServicesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostServicesDelegate);

  return WeakRetained;
}

- (void)connectWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_248B9D000, a2, a3, "[RID: %@] Connect timed out", a2);
}

- (void)connectWithError:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_248B9D000, a2, a3, "[RID: %@] Connect failed", a2);
}

- (void)connectWithError:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_248B9D000, a2, a3, "[RID: %@] Connect interrupted", a2);
}

- (void)beginWithPayload:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 requestIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "[RID: %@] Cannot start extension. Entitlement is missing.", &v4, 0xCu);
}

@end