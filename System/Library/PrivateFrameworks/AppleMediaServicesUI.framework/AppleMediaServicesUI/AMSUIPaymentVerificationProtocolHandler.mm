@interface AMSUIPaymentVerificationProtocolHandler
+ (id)_accountToUseFromGivenAccount:(id)account accountParameters:(id)parameters accountStore:(id)store;
+ (id)_encoderWithBag:(id)bag account:(id)account;
+ (id)_headersFromAccount:(id)account;
+ (id)_headersFromAccountParameters:(id)parameters;
+ (id)_promiseToFetchURLResponseForAccount:(id)account accountParameters:(id)parameters url:(id)url bag:(id)bag requestBody:(id)body bodyEncoding:(int64_t)encoding contentType:(id)type;
+ (id)_sessionWithBag:(id)bag account:(id)account accountParameters:(id)parameters;
+ (id)headersFromAccount:(id)account accountParameters:(id)parameters;
+ (id)requestAddingHeaders:(id)headers to:(id)to;
+ (void)_setHeaders:(id)headers on:(id)on;
- (AMSUIPaymentVerificationProtocolHandler)initWithAccount:(id)account accountParameters:(id)parameters;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation AMSUIPaymentVerificationProtocolHandler

- (AMSUIPaymentVerificationProtocolHandler)initWithAccount:(id)account accountParameters:(id)parameters
{
  accountCopy = account;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = AMSUIPaymentVerificationProtocolHandler;
  v9 = [(AMSURLProtocolHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    v11 = [parametersCopy mutableCopy];
    accountParameters = v10->_accountParameters;
    v10->_accountParameters = v11;
  }

  return v10;
}

+ (id)requestAddingHeaders:(id)headers to:(id)to
{
  toCopy = to;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__AMSUIPaymentVerificationProtocolHandler_requestAddingHeaders_to___block_invoke;
  v8[3] = &unk_1E7F25730;
  v6 = toCopy;
  v9 = v6;
  [headers enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

+ (id)headersFromAccount:(id)account accountParameters:(id)parameters
{
  if (parameters)
  {
    [self _headersFromAccountParameters:parameters];
  }

  else
  {
    [self _headersFromAccount:account];
  }
  v4 = ;

  return v4;
}

+ (id)_headersFromAccount:(id)account
{
  v36 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  deviceGUID = [MEMORY[0x1E698C8A8] deviceGUID];
  ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v26 = 0;
  v6 = [ams_sharedAccountStore ams_fetchGrandSlamTokenForAccount:accountCopy withIdentifier:@"com.apple.gs.ams.pvkit" error:&v26];
  v7 = v26;

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v8 = getAADeviceInfoClass_softClass;
  v30 = getAADeviceInfoClass_softClass;
  if (!getAADeviceInfoClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAADeviceInfoClass_block_invoke;
    v34 = &unk_1E7F241B0;
    v35 = &v27;
    __getAADeviceInfoClass_block_invoke(buf);
    v8 = v28[3];
  }

  v9 = v8;
  _Block_object_dispose(&v27, 8);
  currentInfo = [v8 currentInfo];
  clientInfoHeader = [currentInfo clientInfoHeader];

  currentDevice = [MEMORY[0x1E698DD60] currentDevice];
  uniqueDeviceIdentifier = [currentDevice uniqueDeviceIdentifier];

  v14 = v6;
  if (!v6)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v34 = v7;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unable to fetch GS Token from account %{public}@", buf, 0x20u);
    }

    v14 = &stru_1F3921360;
  }

  v19 = *MEMORY[0x1E698C598];
  v31[0] = *MEMORY[0x1E698C588];
  v31[1] = v19;
  if (clientInfoHeader)
  {
    v20 = clientInfoHeader;
  }

  else
  {
    v20 = &stru_1F3921360;
  }

  v32[0] = v14;
  v32[1] = v20;
  if (uniqueDeviceIdentifier)
  {
    v21 = uniqueDeviceIdentifier;
  }

  else
  {
    v21 = &stru_1F3921360;
  }

  v22 = *MEMORY[0x1E698C590];
  v31[2] = *MEMORY[0x1E698C5A0];
  v31[3] = v22;
  if (deviceGUID)
  {
    v23 = deviceGUID;
  }

  else
  {
    v23 = &stru_1F3921360;
  }

  v32[2] = v21;
  v32[3] = v23;
  v31[4] = @"X-Guid";
  v31[5] = @"X-Apple-Payment-Verification";
  v32[4] = v23;
  v32[5] = @"1";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:6];

  return v24;
}

+ (id)_headersFromAccountParameters:(id)parameters
{
  v19[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C8A8];
  parametersCopy = parameters;
  deviceGUID = [v3 deviceGUID];
  v18[0] = *MEMORY[0x1E698C588];
  v6 = [parametersCopy objectForKeyedSubscript:@"gsToken"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F3921360;
  }

  v19[0] = v8;
  v18[1] = *MEMORY[0x1E698C598];
  v9 = [parametersCopy objectForKeyedSubscript:@"mmeClientInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F3921360;
  }

  v19[1] = v11;
  v18[2] = *MEMORY[0x1E698C5A0];
  v12 = [parametersCopy objectForKeyedSubscript:@"deviceId"];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_1F3921360;
  }

  v14 = *MEMORY[0x1E698C590];
  if (deviceGUID)
  {
    v15 = deviceGUID;
  }

  else
  {
    v15 = &stru_1F3921360;
  }

  v19[2] = v13;
  v19[3] = v15;
  v18[3] = v14;
  v18[4] = @"X-Guid";
  v18[5] = @"X-Apple-Payment-Verification";
  v19[4] = v15;
  v19[5] = @"1";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  return v16;
}

+ (void)_setHeaders:(id)headers on:(id)on
{
  onCopy = on;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AMSUIPaymentVerificationProtocolHandler__setHeaders_on___block_invoke;
  v7[3] = &unk_1E7F25730;
  v8 = onCopy;
  v6 = onCopy;
  [headers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  redirectCopy = redirect;
  v31 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E698C968];
  taskCopy = task;
  requestCopy = request;
  sharedConfig = [v10 sharedConfig];
  if (!sharedConfig)
  {
    sharedConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = AMSLogKey();
    *buf = 138543618;
    v28 = v15;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding required headers to request", buf, 0x16u);
  }

  v26.receiver = self;
  v26.super_class = AMSUIPaymentVerificationProtocolHandler;
  [(AMSURLProtocolHandler *)&v26 reconfigureNewRequest:requestCopy originalTask:taskCopy redirect:redirectCopy error:error];

  v17 = objc_opt_class();
  account = [(AMSUIPaymentVerificationProtocolHandler *)self account];
  accountParameters = [(AMSUIPaymentVerificationProtocolHandler *)self accountParameters];
  v20 = [v17 headersFromAccount:account accountParameters:accountParameters];

  [objc_opt_class() _setHeaders:v20 on:requestCopy];
  account2 = [(AMSUIPaymentVerificationProtocolHandler *)self account];
  ams_DSID = [account2 ams_DSID];
  stringValue = [ams_DSID stringValue];
  [requestCopy setValue:stringValue forHTTPHeaderField:*MEMORY[0x1E698C580]];

  account3 = [(AMSUIPaymentVerificationProtocolHandler *)self account];
  ams_altDSID = [account3 ams_altDSID];
  [requestCopy setValue:ams_altDSID forHTTPHeaderField:*MEMORY[0x1E698C570]];
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = MEMORY[0x1E698C968];
  requestCopy = request;
  sharedConfig = [v9 sharedConfig];
  if (!sharedConfig)
  {
    sharedConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting GS token update", buf, 0x16u);
  }

  options = [requestCopy options];

  v16 = [options copy];
  [v16 setServiceIdentifier:@"com.apple.gs.ams.pvkit"];
  account = [(AMSUIPaymentVerificationProtocolHandler *)self account];
  v18 = [objc_alloc(MEMORY[0x1E698C7A8]) initWithAccount:account options:v16];
  performAuthKitUpdate = [v18 performAuthKitUpdate];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __99__AMSUIPaymentVerificationProtocolHandler_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke;
  v21[3] = &unk_1E7F25758;
  v21[4] = self;
  v22 = completionCopy;
  v20 = completionCopy;
  [performAuthKitUpdate addFinishBlock:v21];
}

void __99__AMSUIPaymentVerificationProtocolHandler_AMSURLSession_task_handleAuthenticateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 authenticationResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];

  v9 = [v8 objectForKeyedSubscript:@"com.apple.gs.ams.pvkit"];
  if (v9)
  {
    v10 = [*(a1 + 32) accountParameters];
    [v10 setObject:v9 forKeyedSubscript:@"gsToken"];

    v11 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *v28 = 138543874;
      *&v28[4] = v13;
      *&v28[12] = 2114;
      *&v28[14] = v14;
      *&v28[22] = 2112;
      v29 = v9;
      v15 = "%{public}@: [%{public}@] Received an updated GS token %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 32;
LABEL_10:
      _os_log_impl(&dword_1BB036000, v16, v17, v15, v28, v18);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v14 = AMSLogKey();
      *v28 = 138543618;
      *&v28[4] = v19;
      *&v28[12] = 2114;
      *&v28[14] = v14;
      v15 = "%{public}@: [%{public}@] Unable to locate GS Token in auth result";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 22;
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v20 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v20)
    {
      v20 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      *v28 = 138543874;
      *&v28[4] = v22;
      *&v28[12] = 2114;
      *&v28[14] = v23;
      *&v28[22] = 2114;
      v29 = v6;
      _os_log_impl(&dword_1BB036000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] token update error: %{public}@", v28, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E698C7C0]);
    v25 = [v5 account];
    v26 = [v24 initWithAccount:v25];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v26, 0, v27);
  }
}

+ (id)_encoderWithBag:(id)bag account:(id)account
{
  v5 = MEMORY[0x1E698CB88];
  accountCopy = account;
  bagCopy = bag;
  v8 = [[v5 alloc] initWithBag:bagCopy];

  [v8 setAccount:accountCopy];
  v9 = objc_alloc_init(MEMORY[0x1E698C948]);
  [v9 setAuthenticationFallbackVisible:0];
  [v9 setDisplayAuthenticationReason:0];
  [v9 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  [v9 setPurpose:1];
  [v8 setKeychainOptions:v9];

  return v8;
}

+ (id)_sessionWithBag:(id)bag account:(id)account accountParameters:(id)parameters
{
  v7 = MEMORY[0x1E696AF80];
  v8 = MEMORY[0x1E698CAC8];
  parametersCopy = parameters;
  accountCopy = account;
  bagCopy = bag;
  currentProcess = [v8 currentProcess];
  v13 = [v7 ams_configurationWithProcessInfo:currentProcess bag:bagCopy];

  v14 = [[AMSUIPaymentVerificationProtocolHandler alloc] initWithAccount:accountCopy accountParameters:parametersCopy];
  v15 = [objc_alloc(MEMORY[0x1E698CBA8]) initWithConfiguration:v13 delegate:v14 delegateQueue:0];
  [v15 setProtocolHandler:v14];

  return v15;
}

+ (id)_promiseToFetchURLResponseForAccount:(id)account accountParameters:(id)parameters url:(id)url bag:(id)bag requestBody:(id)body bodyEncoding:(int64_t)encoding contentType:(id)type
{
  bagCopy = bag;
  typeCopy = type;
  bodyCopy = body;
  urlCopy = url;
  parametersCopy = parameters;
  accountCopy = account;
  v19 = [AMSUIPaymentVerificationProtocolHandler _encoderWithBag:bagCopy account:accountCopy];
  v20 = v19;
  if (bodyCopy)
  {
    [v19 setRequestEncoding:encoding];
  }

  v21 = [AMSUIPaymentVerificationProtocolHandler _sessionWithBag:bagCopy account:accountCopy accountParameters:parametersCopy];
  v22 = [AMSUIPaymentVerificationProtocolHandler headersFromAccount:accountCopy accountParameters:parametersCopy];

  v23 = [v20 requestWithMethod:4 URL:urlCopy headers:v22 parameters:bodyCopy];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __143__AMSUIPaymentVerificationProtocolHandler__promiseToFetchURLResponseForAccount_accountParameters_url_bag_requestBody_bodyEncoding_contentType___block_invoke;
  v29[3] = &unk_1E7F25780;
  v30 = typeCopy;
  v31 = v21;
  v24 = v21;
  v25 = typeCopy;
  v26 = [v23 thenWithBlock:v29];

  return v26;
}

id __143__AMSUIPaymentVerificationProtocolHandler__promiseToFetchURLResponseForAccount_accountParameters_url_bag_requestBody_bodyEncoding_contentType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 setValue:v5 forHTTPHeaderField:@"Content-Type"];
  }

  v6 = [*(a1 + 40) dataTaskPromiseWithRequest:v4];

  return v6;
}

+ (id)_accountToUseFromGivenAccount:(id)account accountParameters:(id)parameters accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  if (accountCopy)
  {
    v9 = accountCopy;
  }

  else
  {
    v10 = [parameters objectForKeyedSubscript:@"altDsId"];
    v11 = [storeCopy ams_iTunesAccountWithAltDSID:v10];
    v12 = v11;
    if (v11)
    {
      v9 = v11;
    }

    else
    {
      ams_activeiCloudAccount = [storeCopy ams_activeiCloudAccount];
      ams_altDSID = [ams_activeiCloudAccount ams_altDSID];
      v15 = [ams_altDSID isEqualToString:v10];

      if (v15)
      {
        v16 = [storeCopy ams_iTunesAccountForAccount:ams_activeiCloudAccount];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = ams_activeiCloudAccount;
        }

        v9 = v18;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

@end