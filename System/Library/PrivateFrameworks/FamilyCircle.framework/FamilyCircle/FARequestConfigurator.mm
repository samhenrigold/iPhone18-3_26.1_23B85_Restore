@interface FARequestConfigurator
- (BOOL)_canConnectToAPS;
- (FARequestConfigurator)initWithAccount:(id)account;
- (id)_account;
- (id)_accountStore;
- (id)_akSigningController;
- (id)_authContext;
- (id)_familyGrandSlamSigner;
- (id)_familyTokenForGrandSlamAccount:(id)account andTokenID:(id)d;
- (id)_fresnoPayloadWithAdditionalPayload:(id)payload;
- (id)_grandSlamAccount;
- (id)_grandSlamSigner;
- (id)_serviceOwnersManager;
- (void)_addAccountForServiceType:(id)type toPayload:(id)payload forKey:(id)key;
- (void)_canConnectToAPS;
- (void)_resourceLoadDelegate:(id)delegate;
- (void)addFresnoHeadersToRequest:(id)request;
- (void)addFresnoHeadersToRequest:(id)request withCompletion:(id)completion;
- (void)addFresnoPayloadToRequest:(id)request additionalPayload:(id)payload;
- (void)addPayload:(id)payload toRequest:(id)request;
- (void)pushTokenWithCompletion:(id)completion;
- (void)renewCredentialsWithCompletion:(id)completion;
- (void)signURLRequest:(id)request;
- (void)updateWithEphemeralAuthResults:(id)results;
@end

@implementation FARequestConfigurator

- (FARequestConfigurator)initWithAccount:(id)account
{
  accountCopy = account;
  v6 = [(FARequestConfigurator *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v7->_attachSetupHeader = 1;
  }

  return v7;
}

- (void)updateWithEphemeralAuthResults:(id)results
{
  resultsCopy = results;
  v5 = _FALogSystem(resultsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FARequestConfigurator updateWithEphemeralAuthResults:v5];
  }

  [(FARequestConfigurator *)self setEphemeralAuthResults:resultsCopy];
  v6 = [[FARequestEphemeralSigner alloc] initWithEphemeralAuthResults:resultsCopy];

  [(FARequestConfigurator *)self setSigner:v6];
  account = [(FARequestEphemeralSigner *)v6 account];
  account = self->_account;
  self->_account = account;
}

- (void)addFresnoHeadersToRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7CA4A88;
  aBlock[4] = self;
  v8 = requestCopy;
  v17 = v8;
  v18 = completionCopy;
  v9 = completionCopy;
  v10 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_86;
  v13[3] = &unk_1E7CA4B00;
  v13[4] = self;
  v14 = v8;
  v15 = v10;
  v11 = v10;
  v12 = v8;
  [(FARequestConfigurator *)self _resourceLoadDelegate:v13];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) ephemeralAuthResults];
  v8 = v7 != 0;

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) _account];
  [v9 aa_addBasicAuthorizationHeaderWithAccount:v10 preferUsingPassword:v8];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _account];
  [v11 aa_addLoggedInAppleIDHeaderWithAccount:v12];

  [*(a1 + 40) aa_addLocationSharingAllowedHeader];
  [*(a1 + 40) ak_addClientTimeHeader];
  v13 = [MEMORY[0x1E695DF58] preferredLanguages];
  v14 = MEMORY[0x1E695DF58];
  v15 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v33[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v17 = [v14 minimizedLanguagesFromLanguages:v16];
  v18 = [v17 componentsJoinedByString:{@", "}];

  v19 = *(a1 + 40);
  v20 = [v13 componentsJoinedByString:{@", "}];
  [v19 setValue:v20 forHTTPHeaderField:@"X-MMe-Language"];

  [*(a1 + 40) setValue:v18 forHTTPHeaderField:@"Accept-Language"];
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 40) setValue:@"true" forHTTPHeaderField:@"X-iCloud-Experiment-Mode"];
  }

  v21 = [v5 aa_hexString];
  if (v21)
  {
    [*(a1 + 40) setValue:v21 forHTTPHeaderField:@"X-APNS-Push-Token"];
  }

  if (*(*(a1 + 32) + 80) == 1)
  {
    [*(a1 + 40) setValue:@"true" forHTTPHeaderField:@"X-MMe-Family-Setup"];
  }

  v22 = objc_alloc(MEMORY[0x1E695E000]);
  v23 = +[_TtC12FamilyCircle19FamilyDefaultSuites familyUserDefaultsSuite];
  v24 = [v22 initWithSuiteName:v23];

  v25 = [v24 integerForKey:@"MockInviteCode"];
  v26 = _FALogSystem(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 134217984;
    v32 = v25;
    _os_log_impl(&dword_1B70B0000, v26, OS_LOG_TYPE_DEFAULT, "MockInviteCode %ld", &v31, 0xCu);
  }

  if (v25 == 1)
  {
    [*(a1 + 40) setValue:@"sender" forHTTPHeaderField:@"X-Apple-Family-Mock-Invite"];
  }

  v27 = _FALogSystem([*(a1 + 32) signURLRequest:*(a1 + 40)]);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 40) allHTTPHeaderFields];
    v29 = [v28 allKeys];
    v31 = 138477827;
    v32 = v29;
    _os_log_impl(&dword_1B70B0000, v27, OS_LOG_TYPE_DEFAULT, "Headers added to request %{private}@", &v31, 0xCu);
  }

  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, 1, v6);
  }
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ephemeralAuthResults];

  if (v4)
  {
    v5 = [*(a1 + 32) ephemeralAuthResults];
    [v3 updateWithAuthResults:v5];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_2;
  v7[3] = &unk_1E7CA4AD8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  [v3 signRequest:v6 withCompletionHandler:v7];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "LoadDelegate signed request %@ - %@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_88;
  v11[3] = &unk_1E7CA4AB0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v8 pushTokenWithCompletion:v11];
}

void __66__FARequestConfigurator_addFresnoHeadersToRequest_withCompletion___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "Push token fetched", v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)signURLRequest:(id)request
{
  requestCopy = request;
  signer = [(FARequestConfigurator *)self signer];

  if (signer)
  {
    [(FARequestConfigurator *)self signer];
  }

  else
  {
    _grandSlamSigner = [(FARequestConfigurator *)self _grandSlamSigner];
    [_grandSlamSigner signURLRequest:requestCopy];

    [(FARequestConfigurator *)self _familyGrandSlamSigner];
  }
  v7 = ;
  [v7 signURLRequest:requestCopy];
}

- (void)addFresnoHeadersToRequest:(id)request
{
  requestCopy = request;
  v5 = _FALogSystem(requestCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "DEPRECATED - Please use completion based signer", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__FARequestConfigurator_addFresnoHeadersToRequest___block_invoke;
  v8[3] = &unk_1E7CA4B28;
  v9 = v6;
  v7 = v6;
  [(FARequestConfigurator *)self addFresnoHeadersToRequest:requestCopy withCompletion:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (BOOL)_canConnectToAPS
{
  memset(&task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 8;
  v2 = task_info(*MEMORY[0x1E69E9A60], 0xFu, &task_info_out, &task_info_outCnt);
  if (v2)
  {
    v3 = v2;
    v4 = _FALogSystem(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FARequestConfigurator *)v3 _canConnectToAPS];
    }
  }

  else
  {
    v13 = task_info_out;
    v7 = SecTaskCreateWithAuditToken(0, &v13);
    if (!v7)
    {
      v12 = _FALogSystem(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(FARequestConfigurator *)v12 _canConnectToAPS];
      }

      goto LABEL_5;
    }

    v8 = v7;
    *v13.val = 0;
    v9 = SecTaskCopyValueForEntitlement(v7, @"aps-connection-initiate", &v13);

    v4 = *v13.val;
    if (!*v13.val)
    {
      v5 = v9 != 0;
      CFRelease(v8);
      return v5;
    }

    v11 = _FALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(FARequestConfigurator *)v4 _canConnectToAPS];
    }

    CFRelease(v8);
  }

LABEL_5:
  LOBYTE(v5) = 0;
  return v5;
}

- (void)pushTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7CA4B50;
  v5 = completionCopy;
  aBlock[4] = self;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  _canConnectToAPS = [(FARequestConfigurator *)self _canConnectToAPS];
  if ((_canConnectToAPS & 1) == 0)
  {
    v9 = _FALogSystem(_canConnectToAPS);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "Process can't connect to APS. Skipping token retrieval step", buf, 2u);
    }

    goto LABEL_7;
  }

  if (self->_pushToken)
  {
LABEL_7:
    v6[2](v6);
    goto LABEL_8;
  }

  v8 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94;
  v10[3] = &unk_1E7CA4770;
  v10[4] = self;
  v11 = v6;
  [v8 fetchAAURLConfigurationWithCompletion:v10];

LABEL_8:
}

void __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94_cold_1(v5, v7, v8);
    }
  }

  v9 = [v5 apsEnvironment];
  v10 = objc_alloc(MEMORY[0x1E698CF30]);
  v11 = [v10 initWithEnvironmentName:v9 queue:MEMORY[0x1E69E96A0]];
  v12 = [v11 publicToken];
  if (!v12)
  {
    v13 = _FALogSystem(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "APSConnection did not give us a publicToken for environment %@", &v17, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  *(v14 + 72) = v12;
  v16 = v12;

  (*(*(a1 + 40) + 16))();
}

- (void)addFresnoPayloadToRequest:(id)request additionalPayload:(id)payload
{
  requestCopy = request;
  v7 = [(FARequestConfigurator *)self _fresnoPayloadWithAdditionalPayload:payload];
  hTTPBody = [requestCopy HTTPBody];

  if (hTTPBody)
  {
    v10 = MEMORY[0x1E696AE40];
    hTTPBody2 = [requestCopy HTTPBody];
    v12 = [v10 propertyListWithData:hTTPBody2 options:1 format:0 error:0];

    v13 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v12 addEntriesFromDictionary:v7];
      v15 = [v12 copy];

      v7 = v15;
    }
  }

  v16 = _FALogSystem(v9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [FARequestConfigurator addFresnoPayloadToRequest:v7 additionalPayload:v16];
  }

  [requestCopy aa_setBodyWithParameters:v7];
  [requestCopy setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
}

- (void)addPayload:(id)payload toRequest:(id)request
{
  requestCopy = request;
  [requestCopy aa_setBodyWithParameters:payload];
  [requestCopy setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
}

- (void)renewCredentialsWithCompletion:(id)completion
{
  v17[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = *MEMORY[0x1E6959AA8];
  v17[0] = MEMORY[0x1E695E118];
  v6 = *MEMORY[0x1E6959A90];
  v16[0] = v5;
  v16[1] = v6;
  v15 = *MEMORY[0x1E698B7B8];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  _account = [(FARequestConfigurator *)self _account];
  if (_account)
  {
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__FARequestConfigurator_renewCredentialsWithCompletion___block_invoke;
    v13[3] = &unk_1E7CA4B78;
    v14 = completionCopy;
    [_accountStore renewCredentialsForAccount:_account options:v8 completion:v13];
  }

  else
  {
    v11 = _FALogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "No primary Apple account found. Not attempting credential renwal.", v12, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __56__FARequestConfigurator_renewCredentialsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Result of renewing credentials for family request configurator: %ld. Error: %@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    aa_primaryAppleAccount = [_accountStore aa_primaryAppleAccount];
    v6 = self->_account;
    self->_account = aa_primaryAppleAccount;

    account = self->_account;
  }

  return account;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = defaultStore;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    _account = [(FARequestConfigurator *)self _account];
    v6 = [_accountStore aa_grandSlamAccountForiCloudAccount:_account];
    v7 = self->_grandSlamAccount;
    self->_grandSlamAccount = v6;

    grandSlamAccount = self->_grandSlamAccount;
  }

  return grandSlamAccount;
}

- (id)_grandSlamSigner
{
  grandSlamSigner = self->_grandSlamSigner;
  if (!grandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x1E698B8D0]);
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    _grandSlamAccount = [(FARequestConfigurator *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:_accountStore grandSlamAccount:_grandSlamAccount appTokenID:*MEMORY[0x1E698B7C0]];
    v8 = self->_grandSlamSigner;
    self->_grandSlamSigner = v7;

    grandSlamSigner = self->_grandSlamSigner;
  }

  return grandSlamSigner;
}

- (id)_familyGrandSlamSigner
{
  familyGrandSlamSigner = self->_familyGrandSlamSigner;
  if (!familyGrandSlamSigner)
  {
    v4 = objc_alloc(MEMORY[0x1E698B8D0]);
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    _grandSlamAccount = [(FARequestConfigurator *)self _grandSlamAccount];
    v7 = [v4 initWithAccountStore:_accountStore grandSlamAccount:_grandSlamAccount appTokenID:*MEMORY[0x1E698B7B8]];
    v8 = self->_familyGrandSlamSigner;
    self->_familyGrandSlamSigner = v7;

    [(AAGrandSlamSigner *)self->_familyGrandSlamSigner setHeaderFieldKey:*MEMORY[0x1E698B780]];
    familyGrandSlamSigner = self->_familyGrandSlamSigner;
  }

  return familyGrandSlamSigner;
}

- (id)_akSigningController
{
  akSigningController = self->_akSigningController;
  if (!akSigningController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCD0]);
    v5 = self->_akSigningController;
    self->_akSigningController = v4;

    akSigningController = self->_akSigningController;
  }

  return akSigningController;
}

- (void)_resourceLoadDelegate:(id)delegate
{
  delegateCopy = delegate;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__FARequestConfigurator__resourceLoadDelegate___block_invoke;
  aBlock[3] = &unk_1E7CA4B50;
  v5 = delegateCopy;
  aBlock[4] = self;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (self->_resourceLoadDelegate)
  {
    (*(v6 + 2))(v6);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    _authContext = [(FARequestConfigurator *)self _authContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__FARequestConfigurator__resourceLoadDelegate___block_invoke_2;
    v10[3] = &unk_1E7CA4BA0;
    v10[4] = self;
    v11 = v7;
    [v8 getServerUILoadDelegateWithContext:_authContext completion:v10];
  }
}

void __47__FARequestConfigurator__resourceLoadDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _FALogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Received resource load delegate %@ - %@", &v11, 0x16u);
  }

  [v5 setShouldSendSigningHeaders:1];
  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = v5;
  v10 = v5;

  (*(*(a1 + 40) + 16))();
}

- (id)_authContext
{
  authContext = self->_authContext;
  if (!authContext)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    v5 = self->_authContext;
    self->_authContext = v4;

    v6 = self->_authContext;
    _account = [(FARequestConfigurator *)self _account];
    aa_altDSID = [_account aa_altDSID];
    [(AKAppleIDAuthenticationContext *)v6 setAltDSID:aa_altDSID];

    authContext = self->_authContext;
  }

  return authContext;
}

- (id)_fresnoPayloadWithAdditionalPayload:(id)payload
{
  payloadCopy = payload;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v5;
  if (payloadCopy)
  {
    [v5 addEntriesFromDictionary:payloadCopy];
  }

  [(FARequestConfigurator *)self _addAccountForServiceType:*MEMORY[0x1E698C218] toPayload:v6 forKey:@"iCloudAccountDetails"];
  [(FARequestConfigurator *)self _addAccountForServiceType:*MEMORY[0x1E698C238] toPayload:v6 forKey:@"iTunesAccountDetails"];

  return v6;
}

- (void)_addAccountForServiceType:(id)type toPayload:(id)payload forKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadCopy = payload;
  keyCopy = key;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  signer = [(FARequestConfigurator *)self signer];

  if (signer)
  {
    if (*MEMORY[0x1E698C218] == typeCopy)
    {
      signer2 = [(FARequestConfigurator *)self signer];
      accountInfoPayload = [signer2 accountInfoPayload];
      v15 = [accountInfoPayload mutableCopy];

      v11 = v15;
    }

LABEL_16:
    v19 = [v11 copy];
    [payloadCopy setObject:v19 forKey:keyCopy];
    goto LABEL_17;
  }

  _serviceOwnersManager = [(FARequestConfigurator *)self _serviceOwnersManager];
  v17 = [_serviceOwnersManager accountForService:typeCopy];

  v19 = _FALogSystem(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v20)
    {
      *buf = 138412290;
      v31 = v17;
      _os_log_impl(&dword_1B70B0000, v19, OS_LOG_TYPE_DEFAULT, "Account for service - %@", buf, 0xCu);
    }

    username = [v17 username];
    if (username)
    {
      [v11 setObject:username forKeyedSubscript:*MEMORY[0x1E698BA88]];
    }

    _serviceOwnersManager2 = [(FARequestConfigurator *)self _serviceOwnersManager];
    v23 = [_serviceOwnersManager2 DSIDForAccount:v17 service:typeCopy];

    if (v23)
    {
      [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x1E698BA90]];
    }

    v29 = username;
    _serviceOwnersManager3 = [(FARequestConfigurator *)self _serviceOwnersManager];
    v25 = [_serviceOwnersManager3 altDSIDForAccount:v17 service:typeCopy];

    if (v25)
    {
      [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x1E698BA80]];
    }

    _accountStore = [(FARequestConfigurator *)self _accountStore];
    v27 = [_accountStore aa_grandSlamAccountForAltDSID:v25];

    v28 = [(FARequestConfigurator *)self _familyTokenForGrandSlamAccount:v27 andTokenID:*MEMORY[0x1E698B7B8]];
    if (v28)
    {
      [v11 setObject:v28 forKeyedSubscript:@"dsFamilyToken"];
    }

    goto LABEL_16;
  }

  if (v20)
  {
    *buf = 138412290;
    v31 = typeCopy;
    _os_log_impl(&dword_1B70B0000, v19, OS_LOG_TYPE_DEFAULT, "No Account found for serviceType - %@", buf, 0xCu);
  }

LABEL_17:
}

- (id)_familyTokenForGrandSlamAccount:(id)account andTokenID:(id)d
{
  accountCopy = account;
  dCopy = d;
  v8 = dCopy;
  if (accountCopy)
  {
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    v10 = [_accountStore credentialForAccount:accountCopy serviceID:v8];

    token = [v10 token];
    if (!token)
    {
      v12 = _FALogSystem(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B70B0000, v12, OS_LOG_TYPE_DEFAULT, "Error: No GS Family token.", v14, 2u);
      }
    }
  }

  else
  {
    v10 = _FALogSystem(dCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "No grandslam account, unable to fetch token", buf, 2u);
    }

    token = 0;
  }

  return token;
}

- (id)_serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = objc_alloc(MEMORY[0x1E698C268]);
    _accountStore = [(FARequestConfigurator *)self _accountStore];
    v6 = [v4 initWithAccountStore:_accountStore];
    v7 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v6;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  return serviceOwnersManager;
}

- (void)_canConnectToAPS
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "Error reading entitlement: %@", &v2, 0xCu);
}

void __49__FARequestConfigurator_pushTokenWithCompletion___block_invoke_94_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1B70B0000, log, OS_LOG_TYPE_ERROR, "Unable to fetch configuration %@ with error %@", &v3, 0x16u);
}

- (void)addFresnoPayloadToRequest:(uint64_t)a1 additionalPayload:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "Body: %{private}@", &v2, 0xCu);
}

@end