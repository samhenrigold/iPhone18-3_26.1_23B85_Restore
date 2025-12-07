@interface TPSCallForwardingRequestController
- (id)valueForNotificationData:(id)data;
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)executeSetForRequest:(id)request;
- (void)respondWithSubscriptionContext:(id)context value:(id)value error:(id)error;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation TPSCallForwardingRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallForwardingRequestController *)self executeSetForRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallForwardingRequestController *)self executeFetchForRequest:requestCopy];
    }
  }
}

- (void)executeFetchForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  reason = [requestCopy reason];
  callClass = [requestCopy callClass];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__TPSCallForwardingRequestController_executeFetchForRequest___block_invoke;
  v10[3] = &unk_2782E3BD8;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  [telephonyClient fetchCallForwardingValue:subscriptionContext reason:reason callClass:callClass completion:v10];
}

void __61__TPSCallForwardingRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 value:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  value = [requestCopy value];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__TPSCallForwardingRequestController_executeSetForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [telephonyClient saveCallForwardingValue:subscriptionContext value:value completion:v9];
}

void __59__TPSCallForwardingRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 value:0 error:v4];
  }
}

- (void)respondWithSubscriptionContext:(id)context value:(id)value error:(id)error
{
  errorCopy = error;
  valueCopy = value;
  contextCopy = context;
  v11 = [[TPSCallForwardingResponse alloc] initWithSubscriptionContext:contextCopy error:errorCopy value:valueCopy];

  [(TPSRequestController *)self postResponse:v11];
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataCopy = data;
  v13 = dataCopy;
  if (type == 1)
  {
    v14 = TPSLog(dataCopy, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = TPSStringForCTSuppServicesEventType(a4);
      v16 = TPSStringForCTSuppServicesSettingsType(1u);
      v30 = 138413058;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = eventCopy;
      _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", &v30, 0x2Au);
    }

    pendingRequest = [(TPSRequestController *)self pendingRequest];
    v19 = pendingRequest;
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {
          value = [TPSResponseError errorWithCode:4 userInfo:0];
          v22 = TPSLog(value, v23);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

          goto LABEL_13;
        }

LABEL_14:
        value = TPSLog(pendingRequest, v18);
        if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
        {
          [TPSCallForwardingRequestController suppServicesEvent:a4 event:value settingsType:? data:?];
        }

        goto LABEL_27;
      }

      v28 = TPSLog(pendingRequest, v18);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v19;
        _os_log_impl(&dword_21B8E9000, v28, OS_LOG_TYPE_DEFAULT, "Call forwarding save request succeeded for %@.", &v30, 0xCu);
      }

      value = [v19 value];
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          value = [TPSResponseError errorWithCode:2 userInfo:0];
          v22 = TPSLog(value, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [TPSCallForwardingRequestController suppServicesEvent:event:settingsType:data:];
          }

LABEL_13:

          selfCopy2 = self;
          v25 = eventCopy;
          v26 = 0;
          v27 = value;
LABEL_26:
          [(TPSCallForwardingRequestController *)selfCopy2 respondWithSubscriptionContext:v25 value:v26 error:v27];
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_14;
      }

      if (v13)
      {
        pendingRequest = [(TPSCallForwardingRequestController *)self valueForNotificationData:v13];
        value = pendingRequest;
      }

      else
      {
        value = 0;
      }

      v29 = TPSLog(pendingRequest, v18);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = value;
        _os_log_impl(&dword_21B8E9000, v29, OS_LOG_TYPE_DEFAULT, "Call forwarding fetch request succeeded for %@; value is %@.", &v30, 0x16u);
      }
    }

    selfCopy2 = self;
    v25 = eventCopy;
    v26 = value;
    v27 = 0;
    goto LABEL_26;
  }

LABEL_28:
}

- (id)valueForNotificationData:(id)data
{
  v3 = MEMORY[0x277CC3628];
  dataCopy = data;
  v5 = objc_alloc_init(v3);
  callClass = [dataCopy callClass];
  [v5 setClss:{objc_msgSend(callClass, "unsignedIntValue")}];

  enabled = [dataCopy enabled];
  [v5 setEnabled:{objc_msgSend(enabled, "BOOLValue")}];

  callForwardingNoReplyTime = [dataCopy callForwardingNoReplyTime];
  [v5 setNoReplyTime:callForwardingNoReplyTime];

  callForwardingReason = [dataCopy callForwardingReason];
  [v5 setReason:{objc_msgSend(callForwardingReason, "unsignedIntValue")}];

  callForwardingNumber = [dataCopy callForwardingNumber];

  [v5 setSaveNumber:callForwardingNumber];

  return v5;
}

- (void)suppServicesEvent:(int)a1 event:(NSObject *)a2 settingsType:data:.cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Event type %u is not recognized as a valid call forwarding request event.", v2, 8u);
}

@end