@interface TRCompanionAuthOperationHandler
- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandler:(id)handler;
- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandlerWithError:(id)error;
- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler;
- (void)registerMessageHandlersForSession:(id)session;
@end

@implementation TRCompanionAuthOperationHandler

- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = TRCompanionAuthOperationHandler;
  v5 = [(TRCompanionAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    companionAuthHandler = v5->_companionAuthHandler;
    v5->_companionAuthHandler = v6;
  }

  return v5;
}

- (TRCompanionAuthOperationHandler)initWithCompanionAuthHandlerWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = TRCompanionAuthOperationHandler;
  v5 = [(TRCompanionAuthOperationHandler *)&v9 init];
  if (v5)
  {
    v6 = [errorCopy copy];
    companionAuthHandlerWithError = v5->_companionAuthHandlerWithError;
    v5->_companionAuthHandlerWithError = v6;
  }

  return v5;
}

- (void)registerMessageHandlersForSession:(id)session
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__TRCompanionAuthOperationHandler_registerMessageHandlersForSession___block_invoke;
  v4[3] = &unk_279DCEAD8;
  v4[4] = self;
  sessionCopy = session;
  [sessionCopy setRequestHandler:v4 forRequestClass:objc_opt_class()];
}

- (void)_handleCompanionAuthenticationRequest:(id)request withResponseHandler:(id)handler
{
  v35[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if (*&self->_companionAuthHandler != 0)
  {
    account = [requestCopy account];
    targetedAccountServices = [requestCopy targetedAccountServices];
    companionDevice = [requestCopy companionDevice];
    shouldUseAIDA = [requestCopy shouldUseAIDA];
    if (account)
    {
      if (targetedAccountServices)
      {
        if (companionDevice)
        {
          v28[0] = @"TRCompanionAuthOperationHandlerParamKeyAccount";
          v28[1] = @"TRCompanionAuthOperationHandlerParamKeyTargetedAccountServices";
          v29[0] = account;
          v29[1] = targetedAccountServices;
          v29[2] = companionDevice;
          v28[2] = @"TRCompanionAuthOperationHandlerParamKeyCompanionDevice";
          v28[3] = @"TRCompanionAuthOperationHandlerParamKeyUseAIDA";
          v11 = [MEMORY[0x277CCABB0] numberWithBool:shouldUseAIDA];
          v29[3] = v11;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

          companionAuthHandlerWithError = self->_companionAuthHandlerWithError;
          if (companionAuthHandlerWithError)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke;
            v26[3] = &unk_279DCED18;
            v14 = &v27;
            v27 = handlerCopy;
            companionAuthHandlerWithError[2](companionAuthHandlerWithError, v12, v26);
          }

          else
          {
            companionAuthHandler = self->_companionAuthHandler;
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2;
            v24[3] = &unk_279DCED40;
            v14 = &v25;
            v25 = handlerCopy;
            companionAuthHandler[2](companionAuthHandler, v12, v24);
          }

          v22 = *v14;
          goto LABEL_14;
        }

        v21 = *MEMORY[0x277CCA470];
        v30[0] = *MEMORY[0x277CCA450];
        v30[1] = v21;
        v31[0] = @"Invalid Message Parameters";
        v31[1] = @"Missing companionDevice parameter";
        v16 = MEMORY[0x277CBEAC0];
        v17 = v31;
        v18 = v30;
      }

      else
      {
        v19 = *MEMORY[0x277CCA470];
        v32[0] = *MEMORY[0x277CCA450];
        v32[1] = v19;
        v33[0] = @"Invalid Message Parameters";
        v33[1] = @"Missing targetedAccountServices parameter";
        v16 = MEMORY[0x277CBEAC0];
        v17 = v33;
        v18 = v32;
      }
    }

    else
    {
      v15 = *MEMORY[0x277CCA470];
      v34[0] = *MEMORY[0x277CCA450];
      v34[1] = v15;
      v35[0] = @"Invalid Message Parameters";
      v35[1] = @"Missing account parameter";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v35;
      v18 = v34;
    }

    v12 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:2];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9202 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, v22, 0);
LABEL_14:

    goto LABEL_15;
  }

  account = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
  (*(handlerCopy + 2))(handlerCopy, account, 0);
LABEL_15:
}

void __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v7 setUnauthenticatedAccountServices:v6];

  [(TRSetupAuthenticationResponse *)v7 setError:v5];
  (*(*(a1 + 32) + 16))();
}

void __93__TRCompanionAuthOperationHandler__handleCompanionAuthenticationRequest_withResponseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TRSetupAuthenticationResponse);
  [(TRSetupAuthenticationResponse *)v4 setUnauthenticatedAccountServices:v3];

  (*(*(a1 + 32) + 16))();
}

@end