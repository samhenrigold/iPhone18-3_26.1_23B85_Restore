@interface TPSCallingLineIdRestrictionRequestController
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)executeSetForRequest:(id)request;
- (void)respondWithSubscriptionContext:(id)context editable:(BOOL)editable state:(int64_t)state error:(id)error;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
@end

@implementation TPSCallingLineIdRestrictionRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSCallingLineIdRestrictionRequestController *)self executeSetForRequest:requestCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TPSCallingLineIdRestrictionRequestController *)self executeFetchForRequest:requestCopy];
    }
  }
}

- (void)executeFetchForRequest:(id)request
{
  requestCopy = request;
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__TPSCallingLineIdRestrictionRequestController_executeFetchForRequest___block_invoke;
  v8[3] = &unk_2782E3BD8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [telephonyClient fetchCallingLineIdRestrictionValue:subscriptionContext completion:v8];
}

void __71__TPSCallingLineIdRestrictionRequestController_executeFetchForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 editable:0 state:0 error:v4];
  }
}

- (void)executeSetForRequest:(id)request
{
  requestCopy = request;
  v5 = CTCallingLineIdRestrictionValueForState([requestCopy state]);
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  subscriptionContext = [requestCopy subscriptionContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__TPSCallingLineIdRestrictionRequestController_executeSetForRequest___block_invoke;
  v9[3] = &unk_2782E3BD8;
  v9[4] = self;
  v10 = requestCopy;
  v8 = requestCopy;
  [telephonyClient saveCallingLineIdRestrictionValue:subscriptionContext restrictionValue:v5 completion:v9];
}

void __69__TPSCallingLineIdRestrictionRequestController_executeSetForRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [v3 subscriptionContext];
    [v2 respondWithSubscriptionContext:v5 editable:0 state:0 error:v4];
  }
}

- (void)respondWithSubscriptionContext:(id)context editable:(BOOL)editable state:(int64_t)state error:(id)error
{
  editableCopy = editable;
  errorCopy = error;
  contextCopy = context;
  v12 = [[TPSCallingLineIdRestrictionResponse alloc] initWithsubscriptionContext:contextCopy editable:editableCopy state:state error:errorCopy];

  [(TPSRequestController *)self postResponse:v12];
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dataCopy = data;
  v13 = dataCopy;
  if (type == 6)
  {
    v14 = TPSLog(dataCopy, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = TPSStringForCTSuppServicesEventType(a4);
      v16 = TPSStringForCTSuppServicesSettingsType(6u);
      v35 = 138413058;
      v36 = v15;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = eventCopy;
      _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Received event %@, settings type %@, data %@ for context %@.", &v35, 0x2Au);
    }

    pendingRequest = [(TPSRequestController *)self pendingRequest];
    v19 = pendingRequest;
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {
          v20 = [TPSResponseError errorWithCode:4 userInfo:0];
          v22 = TPSLog(v20, v23);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [TPSCallingLineIdRestrictionRequestController suppServicesEvent:event:settingsType:data:];
          }

          goto LABEL_13;
        }

LABEL_14:
        v24 = TPSLog(pendingRequest, v18);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [TPSCallingLineIdRestrictionRequestController suppServicesEvent:a4 event:v24 settingsType:? data:?];
        }

        goto LABEL_24;
      }

      v34 = TPSLog(pendingRequest, v18);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412290;
        v36 = v19;
        _os_log_impl(&dword_21B8E9000, v34, OS_LOG_TYPE_DEFAULT, "Calling Line ID Restriction save request succeeded for %@.", &v35, 0xCu);
      }

      state = [v19 state];
      selfCopy2 = self;
      v31 = eventCopy;
      v32 = 1;
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 == 2)
        {
          v20 = [TPSResponseError errorWithCode:2 userInfo:0];
          v22 = TPSLog(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [TPSCallingLineIdRestrictionRequestController suppServicesEvent:event:settingsType:data:];
          }

LABEL_13:

          [(TPSCallingLineIdRestrictionRequestController *)self respondWithSubscriptionContext:eventCopy editable:0 state:0 error:v20];
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_14;
      }

      v25 = TPSLog(pendingRequest, v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412546;
        v36 = v19;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_21B8E9000, v25, OS_LOG_TYPE_DEFAULT, "Calling Line ID Restriction fetch request succeeded for %@; data value is %@.", &v35, 0x16u);
      }

      callingLineIdRestrictionModification = [v13 callingLineIdRestrictionModification];
      v27 = [callingLineIdRestrictionModification intValue] == 1;

      callingLineIdRestriction = [v13 callingLineIdRestriction];
      v29 = TPSCallingLineIdRestrictionStateForValue([callingLineIdRestriction intValue]);

      selfCopy2 = self;
      v31 = eventCopy;
      v32 = v27;
      state = v29;
    }

    [(TPSCallingLineIdRestrictionRequestController *)selfCopy2 respondWithSubscriptionContext:v31 editable:v32 state:state error:0];
    goto LABEL_24;
  }

LABEL_25:
}

- (void)suppServicesEvent:(int)a1 event:(NSObject *)a2 settingsType:data:.cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "Event type %u is not recognized as a valid call waiting request event.", v2, 8u);
}

@end