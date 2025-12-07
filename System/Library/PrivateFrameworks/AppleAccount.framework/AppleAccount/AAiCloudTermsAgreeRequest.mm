@interface AAiCloudTermsAgreeRequest
- (AAiCloudTermsAgreeRequest)initWithURLString:(id)string account:(id)account;
- (id)urlRequest;
- (void)performRequestWithHandler:(id)handler;
- (void)urlRequest;
@end

@implementation AAiCloudTermsAgreeRequest

- (AAiCloudTermsAgreeRequest)initWithURLString:(id)string account:(id)account
{
  accountCopy = account;
  v11.receiver = self;
  v11.super_class = AAiCloudTermsAgreeRequest;
  v8 = [(AARequest *)&v11 initWithURLString:string];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v9->_preferPassword = 1;
  }

  return v9;
}

- (id)urlRequest
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = AAiCloudTermsAgreeRequest;
  urlRequest = [(AARequest *)&v24 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v5 = [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:self->_preferPassword];
  if (self->_account)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
    v8 = [defaultStore aida_accountForAltDSID:aa_altDSID];

    defaultStore2 = [MEMORY[0x1E6959A48] defaultStore];
    v10 = [defaultStore2 credentialForAccount:v8 serviceID:@"com.apple.gs.icloud.family.auth"];

    token = [v10 token];
    aida_alternateDSID = [v8 aida_alternateDSID];
    [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:aida_alternateDSID grandslamToken:token];
  }

  else
  {
    v8 = _AALogSystem(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAiCloudTermsAgreeRequest *)self urlRequest];
    }
  }

  additionalHeaders = [(AAiCloudTermsAgreeRequest *)self additionalHeaders];

  if (additionalHeaders)
  {
    additionalHeaders2 = [(AAiCloudTermsAgreeRequest *)self additionalHeaders];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __39__AAiCloudTermsAgreeRequest_urlRequest__block_invoke;
    v22[3] = &unk_1E7C9C428;
    v23 = v4;
    [additionalHeaders2 enumerateKeysAndObjectsUsingBlock:v22];
  }

  v15 = objc_opt_new();
  v16 = v15;
  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v15 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  v18 = [v16 count];
  if (v18)
  {
    v18 = [v4 aa_setBodyWithParameters:v16];
  }

  v19 = _AALogSystem(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v4 description];
    *buf = 138412290;
    v26 = v20;
    _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "Terms Agree Request is: %@", buf, 0xCu);
  }

  return v4;
}

- (void)performRequestWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke;
  v7[3] = &unk_1E7C9C450;
  objc_copyWeak(&v9, &location);
  v5 = handlerCopy;
  v8 = v5;
  v6.receiver = self;
  v6.super_class = AAiCloudTermsAgreeRequest;
  [(AARequest *)&v6 performRequestWithHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 acceptedTermsInfo];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained slaVersion];

  if (v12)
  {
    v14 = _AALogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __55__AAiCloudTermsAgreeRequest_performRequestWithHandler___block_invoke_cold_1(v14);
    }

    v15 = [v10 mutableCopy];
    v16 = [WeakRetained slaVersion];
    [v15 setObject:v16 forKeyedSubscript:@"SLAVersion"];

    v17 = [v15 copy];
    v10 = v17;
  }

  if ([v8 statusCode] >= 200 && objc_msgSend(v8, "statusCode") <= 299 && v10)
  {
    v18 = objc_opt_new();
    [v18 saveTermsAcceptance:v10 forAccount:WeakRetained[8]];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)urlRequest
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
}

@end