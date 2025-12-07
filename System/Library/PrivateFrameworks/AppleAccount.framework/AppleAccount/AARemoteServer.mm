@interface AARemoteServer
+ (AARemoteServer)sharedServer;
+ (AARemoteServer)sharedServerWithNoUrlCache;
- (id)_bodyDictionaryWithProtocolVersion:(id)version;
- (id)_configurationCacheInvalidatingIfNecessary;
- (id)_configurationLock_configurationCacheInvalidatingIfNecessary;
- (id)_initRequiringUrlCache:(BOOL)cache;
- (id)_newURLRequestWithURLString:(id)string;
- (id)_redactedBodyStringWithPropertyList:(id)list;
- (id)_redactedHeadersFromHTTPHeaders:(id)headers;
- (void)_configurationAndResponseWithCompletion:(id)completion;
- (void)_fetchConfigurationAndResponseWithCompletion:(id)completion;
- (void)_setConfigurationCache:(id)cache;
- (void)_startRequest:(id)request responseClass:(Class)class mainThread:(BOOL)thread completion:(id)completion;
- (void)authenticateAccount:(id)account completion:(id)completion;
- (void)configurationWithCompletion:(id)completion;
- (void)loginDelegates:(id)delegates parameters:(id)parameters completion:(id)completion;
- (void)registerAccount:(id)account withHSA:(BOOL)a completion:(id)completion;
- (void)urlConfigurationWithCompletion:(id)completion;
@end

@implementation AARemoteServer

uint64_t __44__AARemoteServer_sharedServerWithNoUrlCache__block_invoke()
{
  sharedServerWithNoUrlCache_sharedServer = [[AARemoteServer alloc] _initRequiringUrlCache:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (AARemoteServer)sharedServerWithNoUrlCache
{
  if (sharedServerWithNoUrlCache_onceToken != -1)
  {
    +[AARemoteServer sharedServerWithNoUrlCache];
  }

  v3 = sharedServerWithNoUrlCache_sharedServer;

  return v3;
}

+ (AARemoteServer)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    +[AARemoteServer sharedServer];
  }

  v3 = sharedServer_sharedServer;

  return v3;
}

uint64_t __30__AARemoteServer_sharedServer__block_invoke()
{
  sharedServer_sharedServer = objc_alloc_init(AARemoteServer);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initRequiringUrlCache:(BOOL)cache
{
  cacheCopy = cache;
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AARemoteServer;
  v4 = [(AARemoteServer *)&v15 init];
  if (v4)
  {
    if (cacheCopy)
    {
      +[AAURLSession sharedSession];
    }

    else
    {
      +[AAURLSession sharedSessionWithNoUrlCache];
    }
    v5 = ;
    session = v4->_session;
    v4->_session = v5;

    v4->_configurationLock._os_unfair_lock_opaque = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.AppleAccount.RemoteServer", v7);
    configurationQueue = v4->_configurationQueue;
    v4->_configurationQueue = v8;

    configurationCache = v4->_configurationCache;
    v4->_configurationCache = 0;

    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (cacheCopy)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "AARemoteServer initiated with requiresUrlCache: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [AARemoteServer configurationWithCompletion:];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AARemoteServer_configurationWithCompletion___block_invoke;
  v6[3] = &unk_1E7C9BA60;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(AARemoteServer *)self urlConfigurationWithCompletion:v6];
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  v11 = v9;
  if ((v10 == 0) != (v11 != 0))
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v18);
  }

  v12 = v11;

  v14 = _AALogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_1(v10, v12, v14);
  }

  if (v12)
  {
    v16 = _AALogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_2(v16);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__AARemoteServer_configurationWithCompletion___block_invoke_65;
    v19[3] = &unk_1E7C9C018;
    v17 = *(a1 + 32);
    v20 = *(a1 + 40);
    [v17 _configurationAndResponseWithCompletion:v19];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke_65(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)urlConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AARemoteServer urlConfigurationWithCompletion:v4];
  }

  v5 = objc_alloc_init(AADaemonController);
  [(AADaemonController *)v5 urlConfigurationWithCompletion:completionCopy];
}

- (void)_configurationAndResponseWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C040;
  v5 = completionCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  _configurationCacheInvalidatingIfNecessary = [(AARemoteServer *)self _configurationCacheInvalidatingIfNecessary];
  v8 = _configurationCacheInvalidatingIfNecessary;
  if (_configurationCacheInvalidatingIfNecessary)
  {
    configuration = [_configurationCacheInvalidatingIfNecessary configuration];
    response = [v8 response];
    v6[2](v6, configuration, response, 0);
  }

  else
  {
    configurationQueue = self->_configurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_2;
    block[3] = &unk_1E7C9BC78;
    block[4] = self;
    v13 = v6;
    dispatch_async(configurationQueue, block);
  }
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _configurationCacheInvalidatingIfNecessary];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = [v2 configuration];
    v6 = [v3 response];
    (*(v4 + 16))(v4, v5, v6, 0);
  }

  else
  {
    dispatch_suspend(*(*(a1 + 32) + 16));
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3;
    v8[3] = &unk_1E7C9BA60;
    v8[4] = v7;
    v9 = *(a1 + 40);
    [v7 _fetchConfigurationAndResponseWithCompletion:v8];
  }
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem(v9);
  v11 = v10;
  if (v7 && v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_2(v7, v11);
    }

    v12 = *(a1 + 32);
    v11 = [AARemoteServerConfigurationCache cacheWithConfiguration:v7 response:v8];
    [v12 _setConfigurationCache:v11];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_1(v9, v11);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 40) + 16))();
}

- (void)_setConfigurationCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_configurationLock);
  configurationCache = self->_configurationCache;
  self->_configurationCache = cacheCopy;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (id)_configurationCacheInvalidatingIfNecessary
{
  os_unfair_lock_lock(&self->_configurationLock);
  _configurationLock_configurationCacheInvalidatingIfNecessary = [(AARemoteServer *)self _configurationLock_configurationCacheInvalidatingIfNecessary];
  os_unfair_lock_unlock(&self->_configurationLock);

  return _configurationLock_configurationCacheInvalidatingIfNecessary;
}

- (id)_configurationLock_configurationCacheInvalidatingIfNecessary
{
  os_unfair_lock_assert_owner(&self->_configurationLock);
  creationDate = [(AARemoteServerConfigurationCache *)self->_configurationCache creationDate];
  [creationDate timeIntervalSinceNow];
  v5 = v4;

  if (v5 < -600.0)
  {
    configurationCache = self->_configurationCache;
    self->_configurationCache = 0;
  }

  v7 = self->_configurationCache;

  return v7;
}

- (void)_fetchConfigurationAndResponseWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [AARemoteServer _fetchConfigurationAndResponseWithCompletion:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7C9C040;
  v19 = completionCopy;
  v5 = completionCopy;
  v6 = _Block_copy(aBlock);
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:@"https://setup.icloud.com"];
  [v7 setPath:@"/configurations/init"];
  [v7 setQuery:@"context=settings"];
  v8 = [v7 URL];

  v9 = [MEMORY[0x1E695AC18] requestWithURL:v8];
  session = [(AARemoteServer *)self session];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke_2;
  v16 = &unk_1E7C9BD40;
  v17 = v6;
  v11 = v6;
  v12 = [session bodyTaskWithRequest:v9 completion:&v13];
  [v12 resume];
}

void __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v7;
  v10 = v9;
  if ((v12 != 0) != (v10 == 0))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: configuration ^ error" userInfo:0];
    objc_exception_throw(v11);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__AARemoteServer__fetchConfigurationAndResponseWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (v13)
  {
    objc_opt_class();
    v9 = v13;
    if (objc_opt_isKindOfClass())
    {
      v10 = [[AAURLConfiguration alloc] initWithDictionary:v9];
      (*(*(a1 + 32) + 16))();
    }

    else
    {

      v12 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v8];
      (*(v12 + 16))(v12, 0, v7, v9);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (v8)
    {
      (*(v11 + 16))(v11, 0, v7, v8);
      goto LABEL_9;
    }

    v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
    (*(v11 + 16))(v11, 0, v7, v9);
  }

LABEL_9:
}

- (void)authenticateAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  v7 = completionCopy;
  if (!accountCopy)
  {
    [AARemoteServer(Deprecated) authenticateAccount:completion:];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AARemoteServer(Deprecated) authenticateAccount:completion:];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"authenticate"];
  v9 = [AAAuthenticateRequest alloc];
  absoluteString = [v8 absoluteString];
  username = [accountCopy username];
  aa_password = [accountCopy aa_password];
  v13 = [(AAAuthenticateRequest *)v9 initWithURLString:absoluteString username:username password:aa_password];

  v14 = [AARequester alloc];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__AARemoteServer_Deprecated__authenticateAccount_completion___block_invoke;
  v22 = &unk_1E7C9C068;
  v23 = accountCopy;
  v24 = v7;
  v15 = v7;
  v16 = accountCopy;
  v17 = [(AARequester *)v14 initWithRequest:v13 handler:&v19];
  v18 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v18 addOperation:{v17, v19, v20, v21, v22}];
}

void __61__AARemoteServer_Deprecated__authenticateAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 error];
    v7 = [v5 personID];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [v5 personID];
    v10 = v9;
    if (isKindOfClass)
    {
      v11 = [v9 stringValue];

      v10 = v11;
    }

    v12 = [*(a1 + 32) setAccountProperty:v10 forKey:@"personID"];
    if (v6)
    {
      v13 = *(*(a1 + 40) + 16);
    }

    else
    {
      v14 = _AALogSystem(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 authToken];
        v18 = 138739971;
        v19 = v15;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "authenticate Succeeded. Token is %{sensitive}@", &v18, 0xCu);
      }

      v16 = *(a1 + 32);
      v17 = [v5 authToken];
      [v16 aa_setAuthToken:v17];

      v13 = *(*(a1 + 40) + 16);
    }

    v13();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)registerAccount:(id)account withHSA:(BOOL)a completion:(id)completion
{
  aCopy = a;
  v44 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v10 = completionCopy;
  if (accountCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AARemoteServer(Deprecated) registerAccount:withHSA:completion:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [AARemoteServer(Deprecated) registerAccount:withHSA:completion:];
LABEL_3:
  v11 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "registerAccount", buf, 2u);
  }

  v12 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"loginOrCreateAccount"];
  absoluteString = [v12 absoluteString];
  v14 = [(AARemoteServer *)self _newURLRequestWithURLString:absoluteString];

  if (aCopy)
  {
    aa_personID = [accountCopy aa_personID];
    [v14 aa_addDeviceProvisioningInfoHeadersWithDSID:aa_personID sendEmptyValues:1];
  }

  v16 = +[AADeviceInfo udid];
  [v14 setValue:v16 forHTTPHeaderField:@"Device-UDID"];

  [v14 setHTTPMethod:@"POST"];
  [v14 aa_addAuthTokenOrBasicAuthHeaderWithAccount:accountCopy preferUsingPassword:1];
  v17 = [(AARemoteServer *)self _bodyDictionaryWithProtocolVersion:@"1.0"];
  v18 = [v14 aa_setXMLBodyWithParameters:v17];

  v19 = _AASignpostLogSystem([v14 aa_addMultiUserDeviceHeaderIfEnabled]);
  v20 = _AASignpostCreate(v19);
  v22 = v21;

  v24 = _AASignpostLogSystem(v23);
  v25 = v24;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    *buf = 138543362;
    v41 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v20, "LoginOrCreateAccount", " AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v29 = _AASignpostLogSystem(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    *buf = 134218242;
    v41 = v20;
    v42 = 2114;
    v43 = identifier2;
    _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: LoginOrCreateAccount  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v32 = objc_opt_class();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __65__AARemoteServer_Deprecated__registerAccount_withHSA_completion___block_invoke;
  v35[3] = &unk_1E7C9C090;
  v38 = v20;
  v39 = v22;
  v36 = accountCopy;
  v37 = v10;
  v33 = v10;
  v34 = accountCopy;
  [(AARemoteServer *)self _startRequest:v14 responseClass:v32 mainThread:0 completion:v35];
}

void __65__AARemoteServer_Deprecated__registerAccount_withHSA_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v9 = _AASignpostLogSystem(Nanoseconds);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = _AAErrorUnderlyingError(v6);
    v30 = 67240192;
    LODWORD(v31) = [v12 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v10, OS_SIGNPOST_INTERVAL_END, v11, "LoginOrCreateAccount", " error=%{public,signpost.telemetry:number2,name=error}d ", &v30, 8u);
  }

  v14 = _AASignpostLogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = Nanoseconds / 1000000000.0;
    v16 = *(a1 + 48);
    v17 = _AAErrorUnderlyingError(v6);
    v18 = [v17 code];
    v30 = 134218496;
    v31 = v16;
    v32 = 2048;
    v33 = v15;
    v34 = 1026;
    v35 = v18;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: LoginOrCreateAccount  error=%{public,signpost.telemetry:number2,name=error}d ", &v30, 0x1Cu);
  }

  v20 = _AALogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"YES";
    if (!v7)
    {
      v21 = @"NO";
    }

    v30 = 138412290;
    v31 = v21;
    _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Register Completed - Response: %@", &v30, 0xCu);
  }

  if (v7)
  {
    v22 = [v7 personID];
    if (v22)
    {
      v23 = v22;
      v24 = [*(a1 + 32) aa_personID];

      if (!v24)
      {
        v25 = *(a1 + 32);
        v26 = [v7 personID];
        [v25 setAccountProperty:v26 forKey:@"personID"];
      }
    }

    v27 = [v7 error];
    v28 = _AALogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      if (!v27)
      {
        v29 = @"YES";
      }

      v30 = 138412290;
      v31 = v29;
      _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "Account Authenticated: %@", &v30, 0xCu);
    }

    if (!v27)
    {
      [*(a1 + 32) aa_updateWithProvisioningResponse:v7];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)loginDelegates:(id)delegates parameters:(id)parameters completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  delegatesCopy = delegates;
  parametersCopy = parameters;
  completionCopy = completion;
  v30 = completionCopy;
  if (delegatesCopy)
  {
    if (parametersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AARemoteServer(Deprecated) loginDelegates:parameters:completion:];
    if (parametersCopy)
    {
      goto LABEL_3;
    }
  }

  [AARemoteServer(Deprecated) loginDelegates:parameters:completion:];
LABEL_3:
  v11 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "loginDelegates called", buf, 2u);
  }

  v12 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"loginDelegates"];
  absoluteString = [v12 absoluteString];
  v14 = [(AARemoteServer *)self _newURLRequestWithURLString:absoluteString];

  aa_personID = [delegatesCopy aa_personID];

  if (aa_personID)
  {
    aa_personID2 = [delegatesCopy aa_personID];
    [v14 aa_addDeviceProvisioningInfoHeadersWithDSID:aa_personID2];
  }

  [v14 setHTTPMethod:{@"POST", v30}];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v17 setValue:parametersCopy forKey:@"delegates"];
  username = [delegatesCopy username];
  [v17 setValue:username forKey:@"apple-id"];

  credential = [delegatesCopy credential];
  password = [credential password];
  [v17 setValue:password forKey:@"password"];

  v21 = +[AADeviceInfo appleIDClientIdentifier];
  [v17 setValue:v21 forKey:@"client-id"];

  v22 = _AALogSystem([v14 aa_setBodyWithParameters:v17]);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(AARemoteServer *)self _redactedBodyStringWithPropertyList:parametersCopy];
    *buf = 138412290;
    v35 = v23;
    _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v14 addValue:@"text/plist" forHTTPHeaderField:@"Content-Type"];
  [v14 aa_addAltDSIDAndRepairStateWithAccount:delegatesCopy];
  v24 = +[AADeviceInfo udid];
  [v14 setValue:v24 forHTTPHeaderField:@"Device-UDID"];

  v26 = _AALogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v14 description];
    *buf = 138412290;
    v35 = v27;
    _os_log_impl(&dword_1B6F6A000, v26, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v28 = objc_opt_class();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __67__AARemoteServer_Deprecated__loginDelegates_parameters_completion___block_invoke;
  v32[3] = &unk_1E7C9C0B8;
  v33 = v31;
  v29 = v31;
  [(AARemoteServer *)self _startRequest:v14 responseClass:v28 mainThread:0 completion:v32];
}

- (id)_bodyDictionaryWithProtocolVersion:(id)version
{
  v3 = MEMORY[0x1E695DF90];
  versionCopy = version;
  dictionary = [v3 dictionary];
  [dictionary setObject:versionCopy forKey:@"protocolVersion"];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  name = [localTimeZone name];

  [dictionary2 setObject:name forKey:@"timezone"];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (firstObject)
  {
    v11 = firstObject;
  }

  else
  {
    v11 = @"en";
  }

  [dictionary2 setObject:v11 forKey:@"language"];
  v12 = +[AADeviceInfo appleIDClientIdentifier];
  [dictionary2 setObject:v12 forKey:@"client-id"];

  [dictionary setObject:dictionary2 forKey:@"userInfo"];

  return dictionary;
}

- (id)_redactedBodyStringWithPropertyList:(id)list
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [list mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&unk_1F2F24CB0 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CB0);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CB0 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:0];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v13 length:"bytes") encoding:{objc_msgSend(v13, "length"), 4}];

  return v14;
}

- (id)_redactedHeadersFromHTTPHeaders:(id)headers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [headers mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [&unk_1F2F24CC8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(&unk_1F2F24CC8);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v3 valueForKey:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 unredactedSuffixOfLength:4];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"...%@", v11];
          [v3 setValue:v12 forKey:v8];
        }
      }

      v5 = [&unk_1F2F24CC8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_startRequest:(id)request responseClass:(Class)class mainThread:(BOOL)thread completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v12 = _AALogSystem(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Sending request...", buf, 2u);
  }

  v14 = _AALogSystem(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [requestCopy description];
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "HTTP Request: %@", buf, 0xCu);
  }

  v17 = _AALogSystem(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    v19 = [(AARemoteServer *)self _redactedHeadersFromHTTPHeaders:allHTTPHeaderFields];
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "HTTP Headers:\n%@", buf, 0xCu);
  }

  signingSession = [(AARemoteServer *)self signingSession];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke;
  v23[3] = &unk_1E7C9C108;
  threadCopy = thread;
  v24 = completionCopy;
  classCopy = class;
  v21 = completionCopy;
  v22 = [signingSession dataTaskWithRequest:requestCopy completion:v23];
  [v22 resume];
}

void __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Remote request completed with error %@", buf, 0xCu);
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_alloc(*(a1 + 40)) initWithHTTPResponse:v8 data:v7];
    v9 = [v11 error];
  }

  v12 = [v9 _aa_userReadableError];

  if (*(a1 + 48) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__AARemoteServer_Deprecated___startRequest_responseClass_mainThread_completion___block_invoke_219;
    block[3] = &unk_1E7C9C0E0;
    v16 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_newURLRequestWithURLString:(id)string
{
  v3 = MEMORY[0x1E696AF20];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy];

  v6 = MEMORY[0x1E695AC18];
  v7 = [v5 URL];
  v8 = [v6 requestWithURL:v7];

  return v8;
}

- (void)configurationWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __46__AARemoteServer_configurationWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[AARemoteServer configurationWithCompletion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "%s completion: %@, error: %@", &v3, 0x20u);
}

- (void)urlConfigurationWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AARemoteServer urlConfigurationWithCompletion:]";
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "%s called.", &v1, 0xCu);
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch URL configuration, error: %@", &v2, 0xCu);
}

void __58__AARemoteServer__configurationAndResponseWithCompletion___block_invoke_3_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "Successfully fetched URL configuration: %@", &v2, 0xCu);
}

- (void)_fetchConfigurationAndResponseWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end