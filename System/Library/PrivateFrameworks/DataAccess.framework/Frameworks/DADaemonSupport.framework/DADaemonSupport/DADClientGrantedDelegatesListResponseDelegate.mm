@interface DADClientGrantedDelegatesListResponseDelegate
- (void)finishWithError:(id)error;
- (void)grantedDelegatesListRequestFinishedWithResults:(id)results error:(id)error;
- (void)performRequest;
@end

@implementation DADClientGrantedDelegatesListResponseDelegate

- (void)performRequest
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[DADAgentManager sharedManager];
    accountID = [(DADClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      v6 = [v5 requestGrantedDelegatesListWithConsumer:self];
      requestID = self->_requestID;
      self->_requestID = v6;
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v8, v9))
      {
        accountID2 = [(DADClientDelegate *)self accountID];
        v12 = 138543362;
        v13 = accountID2;
        _os_log_impl(&dword_248524000, v8, v9, "Could not get an account with the ID [%{public}@]", &v12, 0xCu);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(DADClientGrantedDelegatesListResponseDelegate *)self finishWithError:v11];
    }
  }
}

- (void)grantedDelegatesListRequestFinishedWithResults:(id)results error:(id)error
{
  objc_storeStrong(&self->_results, results);
  errorCopy = error;
  [(DADClientGrantedDelegatesListResponseDelegate *)self finishWithError:errorCopy];
}

- (void)finishWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *v26 = 138412546;
      *&v26[4] = objc_opt_class();
      *&v26[12] = 2112;
      *&v26[14] = errorCopy;
      v8 = *&v26[4];
      _os_log_impl(&dword_248524000, v5, v7, "[%@] finished with error %@", v26, 0x16u);
    }

    if (self->_requestID)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x277D038E0]])
      {
        code = [errorCopy code];

        if (code == -1)
        {
          v11 = +[DADAgentManager sharedManager];
          accountID = [(DADClientDelegate *)self accountID];
          rawConnection = [v11 accountWithAccountID:accountID];

          if (rawConnection)
          {
            [rawConnection cancelGrantedDelegatesListRequestWithID:self->_requestID];
LABEL_18:

            client = [(DADClientDelegate *)self client];
            delegateID = [(DADClientDelegate *)self delegateID];
            [client delegateWithIDIsGoingAway:delegateID];

            goto LABEL_19;
          }

          v15 = DALoggingwithCategory();
          v22 = *(v6 + 3);
          if (os_log_type_enabled(v15, v22))
          {
            v23 = objc_opt_class();
            v24 = v23;
            accountID2 = [(DADClientDelegate *)self accountID];
            *v26 = 138412546;
            *&v26[4] = v23;
            *&v26[12] = 2114;
            *&v26[14] = accountID2;
            _os_log_impl(&dword_248524000, v15, v22, "[%@] finished, but could not find an account with the ID %{public}@", v26, 0x16u);
          }

LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v14 = [(DADClientDelegate *)self client:*v26];
    rawConnection = [v14 rawConnection];

    if (!rawConnection)
    {
      goto LABEL_18;
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v15 setObject:*MEMORY[0x277D03BF0] forKeyedSubscript:*MEMORY[0x277D03C88]];
    delegateID2 = [(DADClientDelegate *)self delegateID];
    [v15 setObject:delegateID2 forKeyedSubscript:*MEMORY[0x277D03BF8]];

    if (errorCopy)
    {
      v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277D03B40]];
    }

    if (self->_results)
    {
      v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:?];
      [v15 setObject:v18 forKeyedSubscript:*MEMORY[0x277D03C00]];
    }

    v19 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(rawConnection, v19);

    goto LABEL_17;
  }

LABEL_19:
}

@end