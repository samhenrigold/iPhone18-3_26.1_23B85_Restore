@interface SUScriptAppleIdAuthenticationOperation
- (SUScriptAppleIdAuthenticationOperation)initWithUsername:(id)username password:(id)password viewController:(id)controller;
- (void)run;
- (void)sendCompletionCallback:(id)callback;
@end

@implementation SUScriptAppleIdAuthenticationOperation

- (SUScriptAppleIdAuthenticationOperation)initWithUsername:(id)username password:(id)password viewController:(id)controller
{
  v25 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  passwordCopy = password;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v17) = shouldLog | 2;
    }

    else
    {
      LODWORD(v17) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = v17;
    }

    else
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v19 = v24;
      v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "[%{public}@]: Failed Apple ID authentication. Missing required presenting view controller.", &v23, 12);

      if (!v20)
      {
LABEL_15:

        selfCopy = 0;
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_15;
  }

  v22.receiver = self;
  v22.super_class = SUScriptAppleIdAuthenticationOperation;
  v11 = [(SUScriptAppleIdAuthenticationOperation *)&v22 init];
  if (v11)
  {
    v12 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
    authenticationContext = v11->_authenticationContext;
    v11->_authenticationContext = v12;

    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setUsername:usernameCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext _setPassword:passwordCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setShouldForceInteractiveAuth:0];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setIsUsernameEditable:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setShouldUpdatePersistentServiceTokens:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setPresentingViewController:controllerCopy];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setFirstTimeLogin:1];
    [(AKAppleIDAuthenticationInAppContext *)v11->_authenticationContext setIsUsernameEditable:0];
    objc_storeStrong(&v11->_viewController, controller);
  }

  self = v11;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (void)run
{
  v3 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass(self, a2));
  v4 = dispatch_semaphore_create(0);
  authenticationContext = self->_authenticationContext;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke;
  v8[3] = &unk_1E8164520;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  [v3 authenticateWithContext:authenticationContext completion:v8];
  v7 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v6, v7);
}

void __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v14 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:v13];
    v15 = objc_alloc_init(MEMORY[0x1E698C258]);
    [v15 setAuthenticationResults:v5];
    [v15 setViewController:*(*(a1 + 32) + 344)];
    v16 = *MEMORY[0x1E698C218];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke_32;
    v20[3] = &unk_1E81651D8;
    v17 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v17;
    [v14 signInService:v16 withContext:v15 completion:v20];
    v18 = *(a1 + 40);
    v19 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v18, v19);

    goto LABEL_14;
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
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
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v22 = 138412546;
  v23 = objc_opt_class();
  v24 = 2112;
  v25 = v6;
  v11 = v23;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, v10, 16, "%@: AuthKit Authentication Returned With Error: %@", &v22, 22);

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_11:
  }

  [*(a1 + 32) setError:v6];
  [*(a1 + 32) setSuccess:0];
LABEL_14:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __45__SUScriptAppleIdAuthenticationOperation_run__block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v5;
      v10 = v14;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1C21AF000, v9, 16, "%@: AIDA Authentication Returned With Error: %@", &v13, 22);

      if (!v11)
      {
LABEL_12:

        [*(a1 + 32) setError:v5];
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      v12 = v9;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(a1 + 32) setSuccess:{a2, v12}];
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)sendCompletionCallback:(id)callback
{
  callbackCopy = callback;
  error = [(SUScriptAppleIdAuthenticationOperation *)self error];
  code = [error code];

  if (code == -7064)
  {
    status = self->_status;
    v8 = @"cancel";
  }

  else
  {
    success = [(SUScriptAppleIdAuthenticationOperation *)self success];
    status = self->_status;
    if (success)
    {
      v8 = @"success";
    }

    else
    {
      v8 = @"fail";
    }
  }

  self->_status = &v8->isa;

  v10 = callbackCopy;
  WebThreadRun();
}

void __65__SUScriptAppleIdAuthenticationOperation_sendCompletionCallback___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = [v7 status];
  v15 = 138412546;
  v16 = v6;
  v17 = 2112;
  v18 = v9;
  v10 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 2, "%@: Calling callbackFunction with status %@", &v15, 22);

  if (v10)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_10:
  }

  v11 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 40)];
  [(SUScriptFunction *)v11 setThisObject:*(a1 + 32)];
  v12 = [*(a1 + 32) status];
  v14 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [(SUScriptFunction *)v11 callWithArguments:v13];

  [(SUScriptFunction *)v11 setThisObject:0];
}

@end