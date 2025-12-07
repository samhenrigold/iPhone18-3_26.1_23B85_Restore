@interface ISDataProvider
+ (id)provider;
- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error;
- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error;
- (BOOL)parseData:(id)data returningError:(id *)error;
- (BOOL)runAuthorizationDialog:(id)dialog error:(id *)error;
- (BOOL)runSubOperation:(id)operation error:(id *)error;
- (BOOL)runTouchIDAuthorizationDialog:(id)dialog fallbackDialog:(id)fallbackDialog metricsDictionary:(id)dictionary error:(id *)error;
- (ISDataProvider)init;
- (ISOperation)parentOperation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_performActionsForButton:(id)button withDialog:(id)dialog;
- (void)configureFromProvider:(id)provider;
- (void)migrateOutputFromSubProvider:(id)provider;
- (void)setup;
@end

@implementation ISDataProvider

- (ISDataProvider)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISDataProvider.m", 42, a2);
  v4.receiver = self;
  v4.super_class = ISDataProvider;
  return [(ISDataProvider *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = [(ISDataProvider *)self contentLength];
  contentType = [(ISDataProvider *)self contentType];
  v7 = [contentType copyWithZone:zone];
  v8 = v5[5];
  v5[5] = v7;

  return v5;
}

+ (id)provider
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)canStreamContentLength:(int64_t)length error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)configureFromProvider:(id)provider
{
  providerCopy = provider;
  authenticationContext = [providerCopy authenticationContext];
  [(ISDataProvider *)self setAuthenticationContext:authenticationContext];

  bagContext = [(ISDataProvider *)self bagContext];
  [(ISDataProvider *)self setBagContext:bagContext];

  contentType = [providerCopy contentType];

  [(ISDataProvider *)self setContentType:contentType];
}

- (void)migrateOutputFromSubProvider:(id)provider
{
  providerCopy = provider;
  authenticatedAccountDSID = [providerCopy authenticatedAccountDSID];
  [(ISDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

  redirectURL = [providerCopy redirectURL];

  [(ISDataProvider *)self setRedirectURL:redirectURL];
}

- (BOOL)parseData:(id)data returningError:(id *)error
{
  [(ISDataProvider *)self setOutput:data];
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)setup
{
  [(ISDataProvider *)self setOutput:0];

  [(ISDataProvider *)self setRedirectURL:0];
}

- (BOOL)runAuthorizationDialog:(id)dialog error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v7 = objc_alloc_init(ISServerAuthenticationOperation);
  [(ISServerAuthenticationOperation *)v7 setDialog:dialogCopy];
  authenticationContext = [dialogCopy authenticationContext];

  v9 = [authenticationContext mutableCopy];
  if (!v9)
  {
    authenticationContext2 = [(ISDataProvider *)self authenticationContext];
    v9 = [authenticationContext2 mutableCopy];

    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x277D69BC8]);
    }
  }

  [(ISServerAuthenticationOperation *)v7 setAuthenticationContext:v9];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = objc_opt_class();
    v28 = v16;
    errorCopy = error;
    v17 = AMSSetLogKeyIfNeeded();
    accountName = [v9 accountName];
    SSHashIfNeeded();
    v20 = v19 = self;
    v31 = 138544130;
    v32 = v16;
    v33 = 2114;
    v34 = v17;
    v35 = 2112;
    v36 = v9;
    v37 = 2114;
    v38 = v20;
    v21 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%{public}@: [%{public}@] Running ISServerAuthenticationOperation. authenticationContext = %@ | authenticationContext.accountName = %{public}@", &v31, 42);

    self = v19;
    error = errorCopy;

    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog();
    }
  }

  else
  {
  }

  v30 = 0;
  v23 = [(ISDataProvider *)self _runServerAuthenticationOperation:v7 error:&v30];
  v24 = v30;
  v25 = v24;
  if (error && !v23)
  {
    v26 = v24;
    *error = v25;
  }

  return v23;
}

- (BOOL)runSubOperation:(id)operation error:(id *)error
{
  operationCopy = operation;
  parentOperation = [(ISDataProvider *)self parentOperation];
  if (!parentOperation)
  {
    parentOperation = objc_alloc_init(ISOperation);
  }

  v13 = 0;
  v8 = [(ISOperation *)parentOperation runSubOperation:operationCopy returningError:&v13];
  v9 = v13;
  v10 = v9;
  if (error && !v8)
  {
    v11 = v9;
    *error = v10;
  }

  return v8;
}

- (BOOL)runTouchIDAuthorizationDialog:(id)dialog fallbackDialog:(id)fallbackDialog metricsDictionary:(id)dictionary error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  fallbackDialogCopy = fallbackDialog;
  dictionaryCopy = dictionary;
  v62 = dialogCopy;
  paymentSheet = [dialogCopy paymentSheet];

  if (paymentSheet)
  {
    biometricAuthenticationContext = self->_biometricAuthenticationContext;
    paymentSheet2 = [dialogCopy paymentSheet];
    [(SSBiometricAuthenticationContext *)biometricAuthenticationContext setPaymentSheet:paymentSheet2];
  }

  challenge = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];

  if (!challenge)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v27 = shouldLog | 2;
    }

    else
    {
      v27 = shouldLog;
    }

    oSLogObject = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 2;
    }

    if (v28)
    {
      v64 = 138543362;
      v65 = objc_opt_class();
      v24 = v65;
      v25 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Skipping TouchID signature for no server challenge", &v64, 12);
LABEL_25:
      v29 = v25;

      if (v29)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }

      goto LABEL_43;
    }

LABEL_42:

LABEL_43:
    v48 = 0;
    LOBYTE(v49) = 0;
    goto LABEL_48;
  }

  authenticationContext = [(ISDataProvider *)self authenticationContext];
  shouldSuppressDialogs = [authenticationContext shouldSuppressDialogs];

  if (shouldSuppressDialogs)
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog2 = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLog];
    if ([(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] shouldLogToDisk])
    {
      v21 = shouldLog2 | 2;
    }

    else
    {
      v21 = shouldLog2;
    }

    oSLogObject = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v64 = 138543362;
      v65 = objc_opt_class();
      v24 = v65;
      v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Skipping TouchID signature because auth context tells us to suppress dialogs", &v64, 12);
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  mEMORY[0x277D69B38] = [[ISBiometricAuthorizationDialogOperation alloc] initWithTouchIDDialog:dialogCopy fallbackDialog:fallbackDialogCopy];
  [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setBiometricAuthenticationContext:self->_biometricAuthenticationContext];
  [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setMetricsDictionary:dictionaryCopy];
  signupRequestParameters = [(SSAuthenticationContext *)self->_authenticationContext signupRequestParameters];
  v32 = [signupRequestParameters objectForKey:@"product"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v32 unescapedValues:1];
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setBuyParams:v33];
  }

  hTTPHeaders = [(SSAuthenticationContext *)self->_authenticationContext HTTPHeaders];
  v35 = [hTTPHeaders objectForKey:*MEMORY[0x277D6A130]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] setUserAgent:v35];
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog3 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v38 = shouldLog3 | 2;
  }

  else
  {
    v38 = shouldLog3;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v38;
  }

  else
  {
    v40 = v38 & 2;
  }

  if (v40)
  {
    v60 = dictionaryCopy;
    errorCopy = error;
    v41 = fallbackDialogCopy;
    v42 = objc_opt_class();
    v43 = self->_biometricAuthenticationContext;
    v58 = v42;
    [(SSBiometricAuthenticationContext *)v43 accountName];
    v44 = v59 = v35;
    v45 = SSHashIfNeeded();
    v64 = 138543874;
    v65 = v42;
    fallbackDialogCopy = v41;
    v66 = 2112;
    v67 = v43;
    dictionaryCopy = v60;
    error = errorCopy;
    v68 = 2114;
    v69 = v45;
    v46 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%{public}@: Running ISBiometricAuthorizationDialogOperation. authenticationContext = %@ | authenticationContext.accountName = %{public}@", &v64, 32);

    v35 = v59;
    if (v46)
    {
      v47 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
      free(v46);
      SSFileLog();
    }
  }

  else
  {
  }

  v63 = 0;
  v49 = [(ISDataProvider *)self runSubOperation:mEMORY[0x277D69B38] error:&v63];
  v48 = v63;
  if (v49)
  {
    selectedButton = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] selectedButton];
    [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] dialog];
    v52 = v51 = error;
    [(ISDataProvider *)self _performActionsForButton:selectedButton withDialog:v52];

    biometricAuthenticationContext = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] biometricAuthenticationContext];
    accountIdentifier = [biometricAuthenticationContext accountIdentifier];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:accountIdentifier];

    error = v51;
    redirectURL = [(ISBiometricAuthorizationDialogOperation *)mEMORY[0x277D69B38] redirectURL];
    [(ISDataProvider *)self setRedirectURL:redirectURL];
  }

LABEL_48:
  if (error && !v49)
  {
    v56 = v48;
    *error = v48;
  }

  return v49;
}

- (void)_performActionsForButton:(id)button withDialog:(id)dialog
{
  buttonCopy = button;
  dialogCopy = dialog;
  if ([buttonCopy actionType] == 4)
  {
    [buttonCopy performDefaultActionForDialog:dialogCopy];
  }
}

- (BOOL)_runServerAuthenticationOperation:(id)operation error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v20 = 0;
  v7 = [(ISDataProvider *)self runSubOperation:operationCopy error:&v20];
  v8 = v20;
  if (v7)
  {
    -[ISDataProvider setAuthenticatedAccountCredentialSource:](self, "setAuthenticatedAccountCredentialSource:", [operationCopy authenticatedAccountCredentialSource]);
    authenticatedAccountDSID = [operationCopy authenticatedAccountDSID];
    [(ISDataProvider *)self setAuthenticatedAccountDSID:authenticatedAccountDSID];

    redirectURL = [operationCopy redirectURL];
    [(ISDataProvider *)self setRedirectURL:redirectURL];

    goto LABEL_17;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v21 = 138543618;
    v22 = v15;
    v23 = 2112;
    v24 = v8;
    v16 = v15;
    v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, oSLogObject, 16, "%{public}@: Server-driven authentication failed. error = %@", &v21, 22);

    if (!v17)
    {
      goto LABEL_15;
    }

    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
  }

LABEL_15:
  if (error)
  {
    v18 = v8;
    *error = v8;
  }

LABEL_17:

  return v7;
}

- (ISOperation)parentOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentOperation);

  return WeakRetained;
}

@end