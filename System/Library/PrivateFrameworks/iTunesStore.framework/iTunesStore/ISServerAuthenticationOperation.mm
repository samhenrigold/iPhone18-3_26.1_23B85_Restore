@interface ISServerAuthenticationOperation
- (ISServerAuthenticationOperation)init;
- (void)dealloc;
- (void)run;
@end

@implementation ISServerAuthenticationOperation

- (ISServerAuthenticationOperation)init
{
  v3.receiver = self;
  v3.super_class = ISServerAuthenticationOperation;
  result = [(ISOperation *)&v3 init];
  if (result)
  {
    result->_performsButtonAction = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISServerAuthenticationOperation;
  [(ISServerAuthenticationOperation *)&v3 dealloc];
}

- (void)run
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__11;
  v31 = __Block_byref_object_dispose__11;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v3 = NSClassFromString(&cfstr_Serverauthenti.isa);
  if (v3)
  {
    v4 = [[v3 alloc] initWithDialog:{-[ISServerAuthenticationOperation dialog](self, "dialog")}];
    [v4 setAuthenticationContext:{-[ISServerAuthenticationOperation authenticationContext](self, "authenticationContext")}];
    [v4 setPerformsButtonAction:{-[ISServerAuthenticationOperation performsButtonAction](self, "performsButtonAction")}];
    v5 = [(ISOperation *)self runSubOperation:v4 returningError:v28 + 5];
    *(v24 + 24) = v5;
    -[ISServerAuthenticationOperation setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [v4 authenticatedAccountCredentialSource]);
    -[ISServerAuthenticationOperation setAuthenticatedAccountDSID:](self, "setAuthenticatedAccountDSID:", [v4 authenticatedAccountDSID]);
    -[ISServerAuthenticationOperation setPerformedButton:](self, "setPerformedButton:", [v4 performedButton]);
    -[ISServerAuthenticationOperation setRedirectURL:](self, "setRedirectURL:", [v4 redirectURL]);
    -[ISServerAuthenticationOperation setSelectedButton:](self, "setSelectedButton:", [v4 selectedButton]);
  }

  else
  {
    dialog = [(ISServerAuthenticationOperation *)self dialog];
    copyXPCEncoding = [(ISDialog *)dialog copyXPCEncoding];
    v8 = [objc_alloc(MEMORY[0x277D69D10]) initWithEncodedDialog:copyXPCEncoding];
    [v8 setAuthenticationContext:{-[ISServerAuthenticationOperation authenticationContext](self, "authenticationContext")}];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v10) = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v13 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v10) = v10 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = objc_opt_class();
      [objc_msgSend(v8 "authenticationContext")];
      v15 = SSHashIfNeeded();
      v33 = 138543874;
      v34 = v14;
      v35 = 2112;
      v36 = v8;
      v37 = 2114;
      v38 = v15;
      v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, v13, 0, "%{public}@: Performing server driven authentication. request = %@ | request.authenticationContext.accountName = %{public}@", &v33, 32);
      if (v16)
      {
        v17 = v16;
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:4];
        free(v17);
        v21 = v18;
        SSFileLog();
      }
    }

    v19 = dispatch_semaphore_create(0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __38__ISServerAuthenticationOperation_run__block_invoke;
    v22[3] = &unk_27A671360;
    v22[4] = self;
    v22[5] = dialog;
    v22[7] = &v27;
    v22[8] = &v23;
    v22[6] = v19;
    [v8 startWithAuthenticateResponse:v22];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v19);
    if (*(v24 + 24) == 1 && [(ISServerAuthenticationOperation *)self performsButtonAction])
    {
      [(ISDialogButton *)[(ISServerAuthenticationOperation *)self performedButton] performDefaultActionForDialog:dialog];
    }

    v20 = v28[5];

    xpc_release(copyXPCEncoding);
  }

  [(ISOperation *)self setError:v28[5], v21];
  [(ISOperation *)self setSuccess:*(v24 + 24)];
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

intptr_t __38__ISServerAuthenticationOperation_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    *(*(*(a1 + 56) + 8) + 40) = a3;
  }

  if (a2)
  {
    [*(a1 + 32) setAuthenticatedAccountDSID:{objc_msgSend(a2, "authenticatedAccountIdentifier")}];
    [*(a1 + 32) setRedirectURL:{objc_msgSend(a2, "redirectURL")}];
    v5 = [*(a1 + 40) buttons];
    v6 = [a2 performedButtonIndex];
    if (v6 < [v5 count])
    {
      [*(a1 + 32) setPerformedButton:{objc_msgSend(v5, "objectAtIndex:", v6)}];
    }

    v7 = [a2 selectedButtonIndex];
    if (v7 < [v5 count])
    {
      [*(a1 + 32) setSelectedButton:{objc_msgSend(v5, "objectAtIndex:", v7)}];
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);

  return dispatch_semaphore_signal(v8);
}

@end