@interface ISStoreAuthenticateOperation
+ (BOOL)_copyErrorForAuthenticateResponse:(id)response error:(id *)error;
- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)context;
- (SSAuthenticateResponse)authenticateResponse;
- (SSAuthenticationContext)authenticationContext;
- (id)authenticatedAccountDSID;
- (id)uniqueKey;
- (void)_handleAuthenticateResponse:(id)response;
- (void)dealloc;
- (void)run;
@end

@implementation ISStoreAuthenticateOperation

- (ISStoreAuthenticateOperation)initWithAuthenticationContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D69A80] deviceIsInternalBuild])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v16 = 138543874;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = AMSLogKey();
      v20 = 2114;
      generateSymbolicatedStackShot = [MEMORY[0x277D69C78] generateSymbolicatedStackShot];
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Creating an ISStoreAuthenticateOperation. callStack = %{public}@", &v16, 32);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
        free(v10);
        v15 = v11;
        SSFileLog();
      }
    }
  }

  v12 = [(ISOperation *)self init];
  if (v12)
  {
    v13 = [context mutableCopy];
    v12->_authenticationContext = v13;
    [(SSMutableAuthenticationContext *)v13 setShouldSuppressDialogs:1];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISStoreAuthenticateOperation;
  [(ISStoreAuthenticateOperation *)&v3 dealloc];
}

- (SSAuthenticateResponse)authenticateResponse
{
  [(ISOperation *)self lock];
  v3 = self->_authenticateResponse;
  [(ISOperation *)self unlock];

  return v3;
}

- (SSAuthenticationContext)authenticationContext
{
  [(ISOperation *)self lock];
  v3 = [(SSMutableAuthenticationContext *)self->_authenticationContext copy];
  [(ISOperation *)self unlock];

  return v3;
}

- (id)authenticatedAccountDSID
{
  result = [-[SSAuthenticateResponse authenticatedAccount](-[ISStoreAuthenticateOperation authenticateResponse](self "authenticateResponse")];
  if (!result)
  {
    authenticationContext = [(ISStoreAuthenticateOperation *)self authenticationContext];

    return [(SSAuthenticationContext *)authenticationContext requiredUniqueIdentifier];
  }

  return result;
}

- (void)run
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = +[ISNetworkObserver sharedInstance];
  [(ISNetworkObserver *)v3 beginUsingNetwork];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v5) = [mEMORY[0x277D69B38] shouldLog];
  shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  v8 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v5) = v5 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    authenticationContext = self->_authenticationContext;
    [(SSMutableAuthenticationContext *)authenticationContext accountName];
    v17 = 138544130;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    v21 = 2112;
    v22 = authenticationContext;
    v23 = 2114;
    v24 = SSHashIfNeeded();
    v12 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_275BC3000, v8, 0, "%{public}@: [%{public}@] Running an ISStoreAuthenticationOperation. authenticationContext = %@ | authenticationContext.accountName = %{public}@", &v17, 42);
    if (v12)
    {
      v13 = v12;
      [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
      free(v13);
      SSFileLog();
    }
  }

  v14 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:self->_authenticationContext];
  if ([(ISStoreAuthenticateOperation *)self parentViewController])
  {
    [v14 set_parentViewController:{-[ISStoreAuthenticateOperation parentViewController](self, "parentViewController")}];
  }

  v15 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __35__ISStoreAuthenticateOperation_run__block_invoke;
  v16[3] = &unk_27A670F18;
  v16[4] = self;
  v16[5] = v15;
  [v14 startWithAuthenticateResponseBlock:v16];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v15);

  [(ISNetworkObserver *)v3 endUsingNetwork];
}

intptr_t __35__ISStoreAuthenticateOperation_run__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      [objc_msgSend(a2 "authenticatedAccount")];
      v23 = 138544386;
      v24 = v11;
      v25 = 2114;
      v26 = SSHashIfNeeded();
      v27 = 2048;
      v28 = [a2 authenticateResponseType];
      v29 = 2112;
      v30 = [a2 error];
      v31 = 2112;
      v32 = [a2 responseDictionary];
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_275BC3000, v10, 1, "%{public}@: Received authenticate response. response.authenticatedAccount.accountName = %{public}@ | response.authenticateResponseType = %ld | response.error = %@ | response.responseDictionary = %@", &v23, 52);
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
        free(v13);
        v22 = v14;
        SSFileLog();
      }
    }

    [*(a1 + 32) _handleAuthenticateResponse:{a2, v22}];
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v16) = v15 | 2;
    }

    else
    {
      LODWORD(v16) = v15;
    }

    v17 = [v7 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = a3;
      v18 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, v17, 16, "%{public}@: Authentication failed. error = %@", &v23, 22);
      if (v18)
      {
        v19 = v18;
        v20 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
        free(v19);
        v22 = v20;
        SSFileLog();
      }
    }

    [*(a1 + 32) setError:{a3, v22}];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (id)uniqueKey
{
  requiredUniqueIdentifier = [(SSAuthenticationContext *)[(ISStoreAuthenticateOperation *)self authenticationContext] requiredUniqueIdentifier];
  v3 = MEMORY[0x277CCACA8];
  if (requiredUniqueIdentifier)
  {
    stringValue = [requiredUniqueIdentifier stringValue];
  }

  else
  {
    stringValue = @"0";
  }

  return [v3 stringWithFormat:@"com.apple.iTunesStore.auth.%@", stringValue];
}

- (void)_handleAuthenticateResponse:(id)response
{
  responseDictionary = [response responseDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[ISProcessPropertyListOperation alloc] initWithPropertyList:responseDictionary];
    v7 = objc_alloc_init(ISPropertyListProvider);
    [(ISProtocolDataProvider *)v7 setShouldProcessAccount:0];
    [(ISProcessPropertyListOperation *)v6 setDataProvider:v7];

    [(ISOperation *)self runSubOperation:v6 returningError:0];
  }

  v8 = 0;
  if ([objc_opt_class() _copyErrorForAuthenticateResponse:response error:&v8])
  {
    [(ISOperation *)self setSuccess:1];
  }

  else
  {
    [(ISOperation *)self setError:v8];
  }

  [(ISOperation *)self lock];

  self->_authenticateResponse = response;
  [(ISOperation *)self unlock];
}

+ (BOOL)_copyErrorForAuthenticateResponse:(id)response error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  authenticateResponseType = [response authenticateResponseType];
  v7 = 0;
  if (authenticateResponseType <= 3)
  {
    if (authenticateResponseType >= 2)
    {
      if (authenticateResponseType == 2)
      {
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v27) = shouldLog | 2;
        }

        else
        {
          LODWORD(v27) = shouldLog;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v27;
        }

        else
        {
          v27 &= 2u;
        }

        if (!v27)
        {
          v13 = 16;
          goto LABEL_67;
        }

        *v35 = 138412290;
        *&v35[4] = objc_opt_class();
        v12 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Authentication canceled", v35, 12);
        v13 = 16;
        if (!v12)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      if (authenticateResponseType != 3)
      {
LABEL_68:
        v22 = 0;
        if (error)
        {
          *error = v7;
        }

        return v22;
      }

      goto LABEL_7;
    }

    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      *v35 = 138412290;
      *&v35[4] = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_275BC3000, oSLogObject2, 16, "%@: Authentication failed", v35, 12, *v35, *&v35[8]);
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((authenticateResponseType - 6) < 3)
  {
LABEL_7:
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v35 = 138412546;
      *&v35[4] = objc_opt_class();
      *&v35[12] = 2048;
      *&v35[14] = [response authenticateResponseType];
      v12 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_275BC3000, oSLogObject3, 0, "%@: Authentication encountered unhandled authenticateResponseType: %ld", v35, 22);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    v13 = 0;
    goto LABEL_67;
  }

  if (authenticateResponseType == 5)
  {
    mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38]4)
    {
      mEMORY[0x277D69B38]4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x277D69B38]4 shouldLog];
    if ([mEMORY[0x277D69B38]4 shouldLogToDisk])
    {
      LODWORD(v31) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v31) = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x277D69B38]4 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v31;
    }

    else
    {
      v31 &= 2u;
    }

    if (v31)
    {
      *v35 = 138412290;
      *&v35[4] = objc_opt_class();
      v12 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &dword_275BC3000, oSLogObject4, 0, "%@: Storefront changed during authentication", v35, 12, *v35, *&v35[8]);
LABEL_63:
      v13 = 4;
      if (v12)
      {
LABEL_64:
        v33 = v12;
        [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
        free(v33);
        SSFileLog();
      }

LABEL_67:
      v7 = ISError(v13, 0, 0);
      goto LABEL_68;
    }

LABEL_65:
    v13 = 4;
    goto LABEL_67;
  }

  if (authenticateResponseType != 4)
  {
    goto LABEL_68;
  }

  mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38]5)
  {
    mEMORY[0x277D69B38]5 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x277D69B38]5 shouldLog];
  if ([mEMORY[0x277D69B38]5 shouldLogToDisk])
  {
    LODWORD(v20) = shouldLog5 | 2;
  }

  else
  {
    LODWORD(v20) = shouldLog5;
  }

  oSLogObject5 = [mEMORY[0x277D69B38]5 OSLogObject];
  v22 = 1;
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
  {
    v20 = v20;
  }

  else
  {
    v20 &= 2u;
  }

  if (v20)
  {
    *v35 = 138412290;
    *&v35[4] = objc_opt_class();
    v23 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_275BC3000, oSLogObject5, 1, "%@: Authentication successful", v35, 12);
    if (v23)
    {
      v24 = v23;
      [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:4];
      free(v24);
      SSFileLog();
      return 1;
    }
  }

  return v22;
}

@end