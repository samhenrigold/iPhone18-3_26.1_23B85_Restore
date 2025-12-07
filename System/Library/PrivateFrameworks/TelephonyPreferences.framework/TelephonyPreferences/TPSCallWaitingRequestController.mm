@interface TPSCallWaitingRequestController
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)executeSetForRequest:(id)request;
- (void)respondWithSubscriptionContext:(id)context enabled:(BOOL)enabled error:(id)error;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation TPSCallWaitingRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallWaitingRequestController *)self executeSetForRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallWaitingRequestController *)self executeFetchForRequest:requestCopy];
    }
  }
}

- (void)executeFetchForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  callClass = [requestCopy callClass];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__TPSCallWaitingRequestController_executeFetchForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [telephonyClient fetchCallWaitingValue:subscriptionContext callClass:callClass completion:v9];
}

void __58__TPSCallWaitingRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 enabled:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  callClass = [requestCopy callClass];
  enabled = [requestCopy enabled];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__TPSCallWaitingRequestController_executeSetForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  [telephonyClient saveCallWaitingValue:subscriptionContext callClass:callClass enabled:enabled completion:v10];
}

void __56__TPSCallWaitingRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 enabled:0 error:v4];
  }
}

- (void)respondWithSubscriptionContext:(id)context enabled:(BOOL)enabled error:(id)error
{
  enabledCopy = enabled;
  errorCopy = error;
  contextCopy = context;
  v10 = [[TPSCallWaitingResponse alloc] initWithsubscriptionContext:contextCopy error:errorCopy enabled:enabledCopy];

  [(TPSRequestController *)self postResponse:v10];
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataCopy = data;
  v13 = dataCopy;
  if (type == 3)
  {
    v14 = TPSLog(dataCopy, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = TPSStringForCTSuppServicesEventType(a4);
      v16 = TPSStringForCTSuppServicesSettingsType(3u);
      *buf = 138413058;
      v43 = v15;
      v44 = 2112;
      v45 = v16;
      v46 = 2112;
      v47 = v13;
      v48 = 2112;
      v49 = eventCopy;
      _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", buf, 0x2Au);
    }

    pendingRequest = [(TPSRequestController *)self pendingRequest];
    v19 = pendingRequest;
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v39 = TPSLog(pendingRequest, v18);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = v19;
          _os_log_impl(&dword_21B8E9000, v39, OS_LOG_TYPE_DEFAULT, "Call waiting save request succeeded for %@.", buf, 0xCu);
        }

        -[TPSCallWaitingRequestController respondWithSubscriptionContext:enabled:error:](self, "respondWithSubscriptionContext:enabled:error:", eventCopy, [v19 enabled], 0);
        goto LABEL_25;
      }

      if (a4 == 4)
      {
        v40[0] = *MEMORY[0x277CCA460];
        v27 = [TPSLocalizedString localizedStringForKey:@"CALL_WAITING_SAVE_REQUEST_ERROR_LOCALIZED_DESCRIPTION"];
        v28 = *MEMORY[0x277CCA470];
        v41[0] = v27;
        v41[1] = @"Call waiting save request failed with error kCTSuppServicesEventTypeSaveError";
        v29 = *MEMORY[0x277CCA068];
        v40[1] = v28;
        v40[2] = v29;
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ for %@", @"Call waiting save request failed with error kCTSuppServicesEventTypeSaveError", v19];
        v41[2] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
        v32 = [TPSResponseError errorWithCode:4 userInfo:v31];

        v35 = TPSLog(v33, v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:v32 event:v35 settingsType:? data:?];
        }

        [(TPSCallWaitingRequestController *)self respondWithSubscriptionContext:eventCopy enabled:0 error:v32];
        goto LABEL_25;
      }
    }

    else
    {
      if (a4 == 1)
      {
        v37 = TPSLog(pendingRequest, v18);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          enabled = [v13 enabled];
          *buf = 138412546;
          v43 = v19;
          v44 = 2112;
          v45 = enabled;
          _os_log_impl(&dword_21B8E9000, v37, OS_LOG_TYPE_DEFAULT, "Call waiting fetch request succeeded for %@; enabled value is %@.", buf, 0x16u);
        }

        enabled2 = [v13 enabled];
        bOOLValue = [enabled2 BOOLValue];
        selfCopy2 = self;
        v24 = eventCopy;
        v26 = 0;
        goto LABEL_21;
      }

      if (a4 == 2)
      {
        enabled2 = [TPSResponseError errorWithCode:2 userInfo:0];
        v22 = TPSLog(enabled2, v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [TPSCallWaitingRequestController suppServicesEvent:enabled2 event:v19 settingsType:v22 data:?];
        }

        selfCopy2 = self;
        v24 = eventCopy;
        bOOLValue = 0;
        v26 = enabled2;
LABEL_21:
        [(TPSCallWaitingRequestController *)selfCopy2 respondWithSubscriptionContext:v24 enabled:bOOLValue error:v26];

LABEL_25:
        goto LABEL_26;
      }
    }

    v36 = TPSLog(pendingRequest, v18);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [TPSCallingLineIdRestrictionRequestController suppServicesEvent:a4 event:v36 settingsType:? data:?];
    }

    goto LABEL_25;
  }

LABEL_26:
}

- (void)suppServicesEvent:(void *)a1 event:(NSObject *)a2 settingsType:data:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);
}

- (void)suppServicesEvent:(os_log_t)log event:settingsType:data:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Call waiting fetch request failed with error %@ for %@.", &v3, 0x16u);
}

@end