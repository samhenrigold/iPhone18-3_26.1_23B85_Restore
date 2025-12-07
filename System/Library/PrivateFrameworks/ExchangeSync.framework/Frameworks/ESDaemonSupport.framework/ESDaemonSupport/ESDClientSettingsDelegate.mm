@interface ESDClientSettingsDelegate
- (BOOL)isOofSupported;
- (ESDClientSettingsDelegate)initWithAccountID:(id)d requestDictionary:(id)dictionary forUpdate:(BOOL)update client:(id)client;
- (void)beginSettingsRequest;
- (void)dealloc;
- (void)disable;
- (void)finishWithError:(id)error;
- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error;
@end

@implementation ESDClientSettingsDelegate

- (ESDClientSettingsDelegate)initWithAccountID:(id)d requestDictionary:(id)dictionary forUpdate:(BOOL)update client:(id)client
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
    _os_log_impl(&dword_24A184000, v13, v14, "ESDClientSettingsDelegate initialized.", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = ESDClientSettingsDelegate;
  v15 = [(ESDClientDelegate *)&v18 initWithAccountID:dCopy client:clientCopy];

  if (v15)
  {
    [(ESDClientSettingsDelegate *)v15 setIsUpdate:updateCopy];
    if (dictionaryCopy)
    {
      v16 = [objc_alloc(MEMORY[0x277D03968]) initWithDictionary:dictionaryCopy];
      [(ESDClientSettingsDelegate *)v15 setRequestParams:v16];
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
    _os_log_impl(&dword_24A184000, v3, v4, "ESDClientSettingsDelegate dealloced.", buf, 2u);
  }

  [(ESDClientSettingsDelegate *)self disable];
  v5.receiver = self;
  v5.super_class = ESDClientSettingsDelegate;
  [(ESDClientDelegate *)&v5 dealloc];
}

- (void)beginSettingsRequest
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  accountID = [(ESDClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  if (v5)
  {
    if (![(ESDClientSettingsDelegate *)self isUpdate])
    {
      [v5 retrieveOofSettingsForConsumer:self];
      goto LABEL_9;
    }

    requestParams = [(ESDClientSettingsDelegate *)self requestParams];
    [v5 updateOofSettingsWithParams:requestParams consumer:self];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      accountID2 = [(ESDClientDelegate *)self accountID];
      v10 = 138412290;
      v11 = accountID2;
      _os_log_impl(&dword_24A184000, v7, v8, "Could not get an account with the ID %@", &v10, 0xCu);
    }

    requestParams = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
    [(ESDClientSettingsDelegate *)self finishWithError:requestParams];
  }

LABEL_9:
}

- (BOOL)isOofSupported
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  accountID = [(ESDClientDelegate *)self accountID];
  v5 = [v3 accountWithAccountID:accountID];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (([v6 isHotmailAccount]& 1) != 0)
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v7, v8))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_24A184000, v7, v8, "Account %@ is a hotmail account", &v16, 0xCu);
      }

      LOBYTE(supportsSettingsCommand) = 0;
    }

    else
    {
      protocol = [v6 protocol];
      supportsSettingsCommand = [protocol supportsSettingsCommand];

      v7 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v7, v12))
      {
        v13 = @"NO";
        if (supportsSettingsCommand)
        {
          v13 = @"YES";
        }

        v16 = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_24A184000, v7, v12, "Account %@ supports oof %@", &v16, 0x16u);
      }
    }
  }

  else
  {
    v6 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v10))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_24A184000, v6, v10, "Account %@ is not ASAccount class", &v16, 0xCu);
    }

    LOBYTE(supportsSettingsCommand) = 0;
  }

  client = [(ESDClientDelegate *)self client];
  [client noteBlockedClientCallChange:1];

  return supportsSettingsCommand;
}

- (void)settingsRequestFinishedWithResults:(id)results status:(int64_t)status error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  if (resultsCopy)
  {
    v8 = [resultsCopy oof];
    if (v8)
    {
      v9 = v8;
      v10 = [resultsCopy oof];
      oofGetResult = [v10 oofGetResult];

      if (oofGetResult)
      {
        v12 = [resultsCopy oof];
        oofGetResult2 = [v12 oofGetResult];
        convertToDAOofParams = [oofGetResult2 convertToDAOofParams];
        [(ESDClientSettingsDelegate *)self setResponseParams:convertToDAOofParams];
      }
    }
  }

  [(ESDClientSettingsDelegate *)self finishWithError:errorCopy];
}

- (void)disable
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3.receiver = self;
    v3.super_class = ESDClientSettingsDelegate;
    [(ESDClientDelegate *)&v3 disable];
  }
}

- (void)finishWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 134217984;
      code = [errorCopy code];
      _os_log_impl(&dword_24A184000, v5, v6, "ESDClientSettingsDelegate finished with status %ld.", buf, 0xCu);
    }

    client = [(ESDClientDelegate *)self client];
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
      delegateID = [(ESDClientDelegate *)self delegateID];
      v29[2] = delegateID;
      v28 = *MEMORY[0x277D03CC0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ESDClientSettingsDelegate isUpdate](self, "isUpdate")}];
      v29[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v25 count:4];
      v17 = [v16 mutableCopy];

      responseParams = [(ESDClientSettingsDelegate *)self responseParams];

      if (responseParams)
      {
        responseParams2 = [(ESDClientSettingsDelegate *)self responseParams];
        dictionaryRepresentation = [responseParams2 dictionaryRepresentation];
        [v17 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277D03CE8]];
      }

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v21);
    }

    client2 = [(ESDClientDelegate *)self client];
    [client2 noteBlockedClientCallChange:1];

    client3 = [(ESDClientDelegate *)self client];
    delegateID2 = [(ESDClientDelegate *)self delegateID];
    [client3 delegateWithIDIsGoingAway:delegateID2];
  }
}

@end