@interface DADClientSettingsDelegate
- (BOOL)isOofSupported;
- (DADClientSettingsDelegate)initWithAccountID:(id)d requestDictionary:(id)dictionary forUpdate:(BOOL)update client:(id)client;
- (void)beginSettingsRequest;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error;
@end

@implementation DADClientSettingsDelegate

- (DADClientSettingsDelegate)initWithAccountID:(id)d requestDictionary:(id)dictionary forUpdate:(BOOL)update client:(id)client
{
  updateCopy = update;
  dictionaryCopy = dictionary;
  clientCopy = client;
  dCopy = d;
  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v13, v14, "DADClientSettingsDelegate initialized.", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = DADClientSettingsDelegate;
  v15 = [(DADClientDelegate *)&v18 initWithAccountID:dCopy client:clientCopy];

  if (v15)
  {
    [(DADClientSettingsDelegate *)v15 setIsUpdate:updateCopy];
    if (dictionaryCopy)
    {
      v16 = [objc_alloc(MEMORY[0x277D03968]) initWithDictionary:dictionaryCopy];
      [(DADClientSettingsDelegate *)v15 setRequestParams:v16];
    }
  }

  return v15;
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "DADClientSettingsDelegate dealloced.", buf, 2u);
  }

  [(DADClientSettingsDelegate *)self disable];
  v5.receiver = self;
  v5.super_class = DADClientSettingsDelegate;
  [(DADClientDelegate *)&v5 dealloc];
}

- (void)beginSettingsRequest
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[DADAgentManager sharedManager];
  accountID = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  if (v5)
  {
    if (![(DADClientSettingsDelegate *)self isUpdate])
    {
      [v5 retrieveOofSettingsForConsumer:self];
      goto LABEL_9;
    }

    requestParams = [(DADClientSettingsDelegate *)self requestParams];
    [v5 updateOofSettingsWithParams:requestParams consumer:self];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      accountID2 = [(DADClientDelegate *)self accountID];
      v10 = 138543362;
      v11 = accountID2;
      _os_log_impl(&dword_248524000, v7, v8, "Could not get an account with the ID %{public}@", &v10, 0xCu);
    }

    requestParams = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(DADClientSettingsDelegate *)self finishWithError:requestParams];
  }

LABEL_9:
}

- (BOOL)isOofSupported
{
  v3 = +[DADAgentManager sharedManager];
  accountID = [(DADClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  LOBYTE(v3) = [v5 isOofSupported];
  client = [(DADClientDelegate *)self client];
  [client noteBlockedClientCallChange:1];

  return v3;
}

- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error
{
  errorCopy = error;
  if (results)
  {
    [(DADClientSettingsDelegate *)self setResponseParams:results];
  }

  [(DADClientSettingsDelegate *)self finishWithError:errorCopy];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3.receiver = self;
    v3.super_class = DADClientSettingsDelegate;
    [(DADClientDelegate *)&v3 disable];
  }
}

- (void)finishWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      code = [errorCopy code];
      _os_log_impl(&dword_248524000, v5, v6, "DADClientSettingsDelegate finished with status %ld.", buf, 0xCu);
    }

    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v9 = *MEMORY[0x277D03C88];
      v29[0] = *MEMORY[0x277D03CD8];
      v10 = *MEMORY[0x277D03E38];
      v25 = v9;
      v26 = v10;
      v11 = MEMORY[0x277CCABB0];
      if (errorCopy)
      {
        code2 = [errorCopy code];
      }

      else
      {
        code2 = 2;
      }

      v13 = [v11 numberWithInteger:{code2, v25, v26}];
      v29[1] = v13;
      v27 = *MEMORY[0x277D03CC8];
      delegateID = [(DADClientDelegate *)self delegateID];
      v29[2] = delegateID;
      v28 = *MEMORY[0x277D03CC0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[DADClientSettingsDelegate isUpdate](self, "isUpdate")}];
      v29[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v25 count:4];
      v17 = [v16 mutableCopy];

      responseParams = [(DADClientSettingsDelegate *)self responseParams];

      if (responseParams)
      {
        responseParams2 = [(DADClientSettingsDelegate *)self responseParams];
        dictionaryRepresentation = [responseParams2 dictionaryRepresentation];
        [v17 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277D03CE8]];
      }

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v21);
    }

    client2 = [(DADClientDelegate *)self client];
    [client2 noteBlockedClientCallChange:1];

    client3 = [(DADClientDelegate *)self client];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [client3 delegateWithIDIsGoingAway:delegateID2];
  }
}

@end