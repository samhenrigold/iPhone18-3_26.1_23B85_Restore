@interface SFAuthenticateAccountsService
- (BOOL)_shouldSignInAccountsInInfoRequest:(id)request;
- (BOOL)_validateConfiguration;
- (SFAuthenticateAccountsService)init;
- (SFAuthenticateAccountsServiceConfiguration)configuration;
- (SFAuthenticateAccountsServiceDelegate)delegate;
- (id)_configurationExistingAccountWithType:(unsigned int)type;
- (int64_t)_nextServiceTypeForTRAccountServices:(id)services;
- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services;
- (unsigned)_accountTypeForTRAccountService:(unint64_t)service;
- (void)__runAuthenticateiCloudWithAuthResults:(id)results completion:(id)completion;
- (void)_activate;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type password:(id)password completion:(id)completion;
- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion;
- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion;
- (void)_cleanup;
- (void)_finishSession:(id)session;
- (void)_handleInfoExchange:(id)exchange responseHandler:(id)handler;
- (void)_handleRequest:(id)request flags:(unsigned int)flags session:(id)session responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler;
- (void)_invalidate;
- (void)_saveAccount:(id)account completion:(id)completion;
- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion;
- (void)_sfServiceStart;
- (void)_validateiCloudCredentialsWithRequest:(id)request unvalidatedResponse:(id)response completionHandler:(id)handler;
- (void)activate;
- (void)invalidate;
- (void)setConfiguration:(id)configuration;
- (void)setIsHomeKitSetupNeeded:(BOOL)needed;
- (void)setIsHomeSharingSetupNeeded:(BOOL)needed;
- (void)setTargetedAccountTypes:(unsigned int)types;
@end

@implementation SFAuthenticateAccountsService

- (SFAuthenticateAccountsService)init
{
  v8.receiver = self;
  v8.super_class = SFAuthenticateAccountsService;
  v2 = [(SFAuthenticateAccountsService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFAuthenticateAccountsServiceConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    v5 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;
  }

  return v2;
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  accountStore = self->_accountStore;
  self->_accountStore = 0;

  cdpUIProvider = self->_cdpUIProvider;
  self->_cdpUIProvider = 0;

  authenticatedAccounts = self->_authenticatedAccounts;
  self->_authenticatedAccounts = 0;

  knownHomeUserIdentifiers = self->_knownHomeUserIdentifiers;
  self->_knownHomeUserIdentifiers = 0;

  self->_isVoiceProfileAvailable = 0;
  preferredLanguageCode = self->_preferredLanguageCode;
  self->_preferredLanguageCode = 0;

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = 0;

  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = 0;
}

- (SFAuthenticateAccountsServiceConfiguration)configuration
{
  v2 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!self->_activateCalled)
  {
    v9 = configurationCopy;
    v7 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v7;

    goto LABEL_7;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 115)
  {
    v9 = configurationCopy;
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
    {
      [SFAuthenticateAccountsService setConfiguration:];
LABEL_7:
      v5 = v9;
    }
  }
}

- (void)setTargetedAccountTypes:(unsigned int)types
{
  v3 = *&types;
  v5 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration copy];
  [v5 setTargetedAccountTypes:v3];
  [(SFAuthenticateAccountsService *)self setConfiguration:v5];
}

- (void)setIsHomeSharingSetupNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration copy];
  [v5 setIsHomeSharingSetupNeeded:neededCopy];
  [(SFAuthenticateAccountsService *)self setConfiguration:v5];
}

- (void)setIsHomeKitSetupNeeded:(BOOL)needed
{
  neededCopy = needed;
  v5 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration copy];
  [v5 setIsHomeKitSetupNeeded:neededCopy];
  [(SFAuthenticateAccountsService *)self setConfiguration:v5];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFAuthenticateAccountsService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (!self->_activateCalled && gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFAuthenticateAccountsService *)self _activate];
    }
  }

  selfCopy->_activateCalled = 1;
  defaultStore = [(objc_class *)getACAccountStoreClass() defaultStore];
  accountStore = selfCopy->_accountStore;
  selfCopy->_accountStore = defaultStore;

  if ([(SFAuthenticateAccountsService *)selfCopy _validateConfiguration])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    authenticatedAccounts = selfCopy->_authenticatedAccounts;
    selfCopy->_authenticatedAccounts = v6;

    [(SFAuthenticateAccountsService *)selfCopy _sfServiceStart];
  }
}

- (BOOL)_validateConfiguration
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SFAuthenticateAccountsService__validateConfiguration__block_invoke;
  aBlock[3] = &unk_1E788B198;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ((![(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]|| ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 1) != 0) && ![(SFAuthenticateAccountsServiceConfiguration *)self->_configuration targetedAccountTypes])
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _validateConfiguration];
    }

    goto LABEL_22;
  }

  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 1) != 0 || ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) != 0)
  {
    existingAccountsIdentifiers = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration existingAccountsIdentifiers];
    v5 = [existingAccountsIdentifiers count];

    if (!v5)
    {
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _validateConfiguration];
      }

      goto LABEL_22;
    }
  }

  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) != 0)
  {
    v6 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
    if (v6)
    {

      goto LABEL_10;
    }

    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _validateConfiguration];
    }

LABEL_22:
    v3[2](v3);
    v7 = 0;
    goto LABEL_23;
  }

LABEL_10:
  v7 = 1;
LABEL_23:

  return v7;
}

uint64_t __55__SFAuthenticateAccountsService__validateConfiguration__block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (v3)
  {
    v15 = @"eo";
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A768];
    v13 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v14 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [v4 errorWithDomain:v5 code:-6705 userInfo:v9];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    (*(v3 + 16))(v3, 30, v11);

    v2 = *(a1 + 32);
  }

  return [v2 _invalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFAuthenticateAccountsService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (!self->_invalidateCalled && gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFAuthenticateAccountsService *)self _invalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  if (selfCopy->_sfSession)
  {
    [(SFAuthenticateAccountsService *)selfCopy _handleSessionEnded:?];
  }

  [(SFService *)selfCopy->_sfService invalidate];
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = 0;

  progressHandler = selfCopy->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(SFAuthenticateAccountsService *)selfCopy _cleanup];
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFAuthenticateAccountsService *)self _sfServiceStart];
    }
  }

  serviceType = [(SFAuthenticateAccountsServiceConfiguration *)selfCopy->_configuration serviceType];
  [(SFService *)selfCopy->_sfService invalidate];
  v5 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v5;

  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setAdvertiseRate:50];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.AuthenticateAccounts"];
  [(SFService *)selfCopy->_sfService setLabel:@"AuthenticateAccounts"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:1];
  if (serviceType)
  {
    v7 = 43;
  }

  else
  {
    v7 = 32;
  }

  [(SFService *)selfCopy->_sfService setDeviceActionType:v7];
  [(SFService *)selfCopy->_sfService setPairSetupACL:&unk_1F1D7D268];
  [(SFService *)selfCopy->_sfService setPinType:1];
  [(SFService *)selfCopy->_sfService setSessionFlags:1];
  [(SFService *)selfCopy->_sfService setTouchRemoteEnabled:1];
  objc_initWeak(&location, selfCopy);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke;
  v14[3] = &unk_1E788C570;
  objc_copyWeak(&v15, &location);
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_2;
  v12[3] = &unk_1E788C598;
  objc_copyWeak(&v13, &location);
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_3;
  v10[3] = &unk_1E788C5C0;
  objc_copyWeak(&v11, &location);
  [(SFService *)selfCopy->_sfService setReceivedRequestHandler:v10];
  v8 = selfCopy->_sfService;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_4;
  v9[3] = &unk_1E788B238;
  v9[4] = selfCopy;
  [(SFService *)v8 activateWithCompletion:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSessionStarted:v3];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSessionEnded:v3];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRequest:v10 flags:a3 session:v11 responseHandler:v9];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 152);
  if (v3)
  {
    if (v5)
    {
      v7 = @"eo";
      v8[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      (*(v5 + 16))(v5, 30, v6);
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 10, 0);
  }
}

- (void)_handleSessionStarted:(id)started
{
  v26[1] = *MEMORY[0x1E69E9840];
  startedCopy = started;
  if (self->_sfSession)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [(SFAuthenticateAccountsService *)startedCopy _handleSessionStarted:?];
    }

    goto LABEL_15;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleSessionStarted:startedCopy];
  }

  objc_storeStrong(&self->_sfSession, started);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke;
  v24[3] = &unk_1E788B4F8;
  v24[4] = self;
  [startedCopy registerRequestID:@"_info" options:0 handler:v24];
  v6 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = v6;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:startedCopy];
  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) == 0)
  {
    goto LABEL_12;
  }

  v8 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
  if (v8)
  {
    v9 = v8;
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setFailIfCDPNotEnabled:1];
    aa_altDSID = [v9 aa_altDSID];
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setAltDSIDNeedingRepair:aa_altDSID];

LABEL_12:
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    trSession = [(SFSession *)self->_sfSession trSession];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_2;
    v23[3] = &unk_1E788C5E8;
    v23[4] = self;
    getTRSetupCompanionAuthenticationRequestClass();
    v12 = [trSession setRequestHandler:v23 forRequestClass:objc_opt_class()];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_3;
    v22[3] = &unk_1E788C5E8;
    v22[4] = self;
    getTRSetupProxyDeviceRequestClass(v12);
    v13 = [trSession setRequestHandler:v22 forRequestClass:objc_opt_class()];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_4;
    v21[3] = &unk_1E788C5E8;
    v21[4] = self;
    getTRSetupProxyAuthenticationRequestClass(v13);
    v14 = [trSession setRequestHandler:v21 forRequestClass:objc_opt_class()];
    v15 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass(v14));
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v15;

    [(HMDeviceSetupOperationHandler *)self->_homeKitSetupHandler registerMessageHandlersForSession:trSession];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, 0);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];

    goto LABEL_15;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 115 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleSessionStarted:];
  }

  v18 = self->_progressHandler;
  if (v18)
  {
    v25 = @"eo";
    v19 = NSErrorWithOSStatusF(4294960551, "Cannot activate CDP repair, iCloud account not found.");
    v26[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18[2](v18, 30, v20);
  }

  [(SFAuthenticateAccountsService *)self _invalidate];
LABEL_15:
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_9;
  }

  v11 = endedCopy;
  if (endedCopy && gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1)
    {
LABEL_5:
      peer = [(SFSession *)sfSession peer];
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleSessionEnded:]", 30, "Ending session with %@\n", peer);

      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      sfSession = self->_sfSession;
      goto LABEL_5;
    }
  }

LABEL_7:
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFAuthenticateAccountsService *)self _finishSession:v11];
  v9 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  endedCopy = v11;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 32, 0);
    endedCopy = v11;
  }

LABEL_9:
}

- (void)_handleInfoExchange:(id)exchange responseHandler:(id)handler
{
  exchangeCopy = exchange;
  handlerCopy = handler;
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleInfoExchange:exchangeCopy responseHandler:?];
  }

  v8 = [exchangeCopy objectForKeyedSubscript:@"lang"];
  preferredLanguageCode = self->_preferredLanguageCode;
  self->_preferredLanguageCode = v8;

  v10 = [exchangeCopy objectForKeyedSubscript:@"locale"];
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v10;

  v12 = [exchangeCopy objectForKeyedSubscript:@"langs"];
  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = v12;

  v14 = [exchangeCopy objectForKeyedSubscript:@"kbs"];
  keyboards = self->_keyboards;
  self->_keyboards = v14;

  v16 = [(SFAuthenticateAccountsService *)self _shouldSignInAccountsInInfoRequest:exchangeCopy];
  v17 = [exchangeCopy objectForKeyedSubscript:@"hkcuis"];
  if ([v17 count])
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = [exchangeCopy objectForKeyedSubscript:@"hkhrmve"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke;
    v42[3] = &unk_1E788C610;
    v43 = v19;
    v44 = v18;
    v20 = v18;
    v21 = v19;
    [v17 enumerateKeysAndObjectsUsingBlock:v42];
    v22 = [v20 copy];
    knownHomeUserIdentifiers = self->_knownHomeUserIdentifiers;
    self->_knownHomeUserIdentifiers = v22;
  }

  v24 = [exchangeCopy objectForKeyedSubscript:@"siriVP"];
  self->_isVoiceProfileAvailable = [v24 BOOLValue];

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFAuthenticateAccountsServiceConfiguration serviceType](self->_configuration, "serviceType")}];
  [v25 setObject:v26 forKeyedSubscript:@"aaServiceType"];

  if (v16)
  {
    targetedAccountTypes = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration targetedAccountTypes];
  }

  else
  {
    targetedAccountTypes = 0;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:targetedAccountTypes];
  [v25 setObject:v28 forKeyedSubscript:@"aaTargetedTypes"];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:16];
  [v25 setObject:v29 forKeyedSubscript:@"ff"];

  if ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration isHomeKitSetupNeeded])
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  serviceType = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType];
  0x20000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v30 | (serviceType << 16) & 0x20000];
  [v25 setObject:0x20000 forKeyedSubscript:@"dpf"];

  v33 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
  aa_altDSID = [v33 aa_altDSID];

  [v25 setObject:aa_altDSID forKeyedSubscript:@"aaiCloudAltDSID"];
  v35 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:2];
  aa_altDSID2 = [v35 aa_altDSID];

  [v25 setObject:aa_altDSID2 forKeyedSubscript:@"aaiTunesAltDSID"];
  v37 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:3];
  aa_altDSID3 = [v37 aa_altDSID];

  [v25 setObject:aa_altDSID3 forKeyedSubscript:@"aaGameCenterAltDSID"];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2;
  v40[3] = &unk_1E788C638;
  v41 = handlerCopy;
  v39 = handlerCopy;
  [(SFAuthenticateAccountsService *)self _validateiCloudCredentialsWithRequest:exchangeCopy unvalidatedResponse:v25 completionHandler:v40];
}

void __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleInfoExchange:responseHandler:]_block_invoke", 90, "Home or home user identifiers were invalid, ignoring: home UUID: %@, user UUID: %@", v13, v5);
    }
  }

  else
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v11 = [v10 BOOLValue];

    v12 = [[SFAuthenticateAccountHomeUserInfo alloc] initWithHomeUUID:v6 userUUID:v8 isRMVEnabled:v11];
    [*(a1 + 40) addObject:v12];
  }
}

void __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2_cold_1(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_shouldSignInAccountsInInfoRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [requestCopy objectForKeyedSubscript:@"aaiCloudAltDSID"];
    if (v8)
    {
      v9 = [[SFAuthenticateAccountInfo alloc] initWithType:1 altDSID:v8];
      [v7 addObject:v9];
    }

    v10 = [requestCopy objectForKeyedSubscript:@"aaiTunesAltDSID"];
    if (v10)
    {
      v11 = [[SFAuthenticateAccountInfo alloc] initWithType:2 altDSID:v10];
      [v7 addObject:v11];
    }

    v12 = [requestCopy objectForKeyedSubscript:@"aaGameCenterAltDSID"];
    if (v12)
    {
      v13 = [[SFAuthenticateAccountInfo alloc] initWithType:3 altDSID:v12];
      [v7 addObject:v13];
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v7 copy];
    v16 = [v14 authenticateAccountsService:self shouldSignInAccounts:v15];

    if ((v16 & 1) == 0 && gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _shouldSignInAccountsInInfoRequest:requestCopy];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_validateiCloudCredentialsWithRequest:(id)request unvalidatedResponse:(id)response completionHandler:(id)handler
{
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  if ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType])
  {
    v11 = [requestCopy objectForKeyedSubscript:@"aaiCloudAltDSID"];
    v12 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
    aa_altDSID = [v12 aa_altDSID];
    if (v12 && self->_accountStore && [v11 isEqualToString:aa_altDSID])
    {
      v14 = self->_dispatchQueue;
      accountStore = self->_accountStore;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke;
      v17[3] = &unk_1E788C660;
      v18 = responseCopy;
      v19 = v14;
      v20 = handlerCopy;
      v16 = v14;
      [(ACAccountStore *)accountStore verifyCredentialsForAccount:v12 withHandler:v17];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, responseCopy);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, responseCopy);
  }
}

void __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _validateiCloudCredentialsWithRequest:unvalidatedResponse:completionHandler:]_block_invoke", 50, "InfoExchangeResponse: iCloud credentials verification failed. Making sure it is part of targetedAccountTypes. {verifiedAccount=%@, error=%@}", v5, v7);
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v11 = [*(a1 + 32) mutableCopy];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Int64Ranged | 1u];
    [v11 setObject:v12 forKeyedSubscript:@"aaTargetedTypes"];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke_2;
    v18[3] = &unk_1E788B318;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v19 = v11;
    v20 = v14;
    v9 = v11;
    dispatch_async(v13, v18);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke_3;
    block[3] = &unk_1E788B318;
    v8 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = *(a1 + 32);
    dispatch_async(v8, block);

    v9 = v17;
  }
}

- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  account = [requestCopy account];
  if (account)
  {
    targetedAccountServices = [requestCopy targetedAccountServices];
    if (targetedAccountServices)
    {
      companionDevice = [requestCopy companionDevice];
      if (companionDevice)
      {
        if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:account responseHandler:targetedAccountServices];
        }

        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke;
        v12[3] = &unk_1E788C6B0;
        v16 = handlerCopy;
        v12[4] = self;
        v13 = targetedAccountServices;
        v14 = account;
        v15 = companionDevice;
        [(SFAuthenticateAccountsService *)self _saveRemoteVerifiedAccount:v14 completion:v12];
      }

      else
      {
        v11 = NSErrorWithOSStatusF(4294960591, "No companion device");
        if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:v11 responseHandler:?];
        }

        (*(handlerCopy + 2))(handlerCopy, v11, 0);
      }
    }

    else
    {
      companionDevice = NSErrorWithOSStatusF(4294960591, "No services");
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:companionDevice responseHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, companionDevice, 0);
    }
  }

  else
  {
    targetedAccountServices = NSErrorWithOSStatusF(4294960591, "No account");
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:targetedAccountServices responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, targetedAccountServices, 0);
  }
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  v5 = objc_alloc(getTRAnisetteDataProviderClass());
  v6 = [*(*(a1 + 32) + 24) trSession];
  v7 = [v5 initWithSession:v6];

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2;
  v12[3] = &unk_1E788C688;
  v16 = v4;
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v11 = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = v11;
  [v10 _authenticateAccount:v8 serviceType:v4 companionDevice:v9 anisetteDataProvider:v7 completion:v12];
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1, v6);
    }

    v10 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    [v10 setUnauthenticatedAccountServices:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3;
    v11[3] = &unk_1E788B6D8;
    v12 = *(a1 + 48);
    [v8 _authenticateWithServiceTypes:v9 authResults:v7 completion:v11];
  }
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFAuthenticateAccountsService <= 90)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_1(v6);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_2(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v8 setUnauthenticatedAccountServices:v9];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFAuthenticateAccountsService *)handlerCopy _handleTRProxyDeviceRequest:v6 responseHandler:v7];
    }
  }

  currentDevice = [(objc_class *)getAKDeviceClass() currentDevice];
  v10 = [currentDevice setLinkType:3];
  v11 = objc_alloc_init(getTRSetupProxyDeviceResponseClass(v10));
  [v11 setProxyDevice:currentDevice];
  (v8)[2](v8, 0, v11);
}

- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  account = [requestCopy account];
  if (account)
  {
    rawPassword = [requestCopy rawPassword];
    if (rawPassword)
    {
      targetedAccountServices = [requestCopy targetedAccountServices];
      if (targetedAccountServices)
      {
        if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:account responseHandler:targetedAccountServices];
        }

        [account _aa_setRawPassword:rawPassword];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke;
        v12[3] = &unk_1E788C6B0;
        v16 = handlerCopy;
        v12[4] = self;
        v13 = targetedAccountServices;
        v14 = account;
        v15 = rawPassword;
        [(SFAuthenticateAccountsService *)self _saveRemoteVerifiedAccount:v14 completion:v12];
      }

      else
      {
        v11 = NSErrorWithOSStatusF(4294960591, "No services");
        if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:v11 responseHandler:?];
        }

        (*(handlerCopy + 2))(handlerCopy, v11, 0);
      }
    }

    else
    {
      targetedAccountServices = NSErrorWithOSStatusF(4294960591, "No password");
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:targetedAccountServices responseHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, targetedAccountServices, 0);
    }
  }

  else
  {
    rawPassword = NSErrorWithOSStatusF(4294960591, "No account");
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:rawPassword responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, rawPassword, 0);
  }
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2;
  v11[3] = &unk_1E788C6D8;
  v14 = v4;
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v11[4] = v9;
  v12 = v10;
  [v5 _authenticateAccount:v6 serviceType:v4 password:v7 completion:v11];
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1, v6);
    }

    v10 = *(a1 + 48);
    if (v6)
    {
      (*(v10 + 16))(v10, v6, 0);
    }

    else
    {
      v11 = NSErrorWithOSStatusF(4294960596, "Auth account failed no error");
      (*(v10 + 16))(v10, v11, 0);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3;
    v12[3] = &unk_1E788B6D8;
    v13 = *(a1 + 48);
    [v8 _authenticateWithServiceTypes:v9 authResults:v7 completion:v12];
  }
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_SFAuthenticateAccountsService <= 90)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_1(v6);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_2(v3, v4, v5);
      }
    }

    v8 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    v9 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v8 setUnauthenticatedAccountServices:v9];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion
{
  v11 = getAKAppleIDAuthenticationContextClass;
  completionCopy = completion;
  providerCopy = provider;
  deviceCopy = device;
  accountCopy = account;
  v18 = objc_alloc_init(v11());
  [v18 _setProxyingForApp:1];
  [v18 setAnisetteDataProvider:providerCopy];

  [v18 setAuthenticationType:1];
  [v18 setCompanionDevice:deviceCopy];

  [v18 setIsUsernameEditable:0];
  [v18 setServiceType:type];
  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v18 setUsername:username];
  v17 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  [v17 authenticateWithContext:v18 completion:completionCopy];
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type password:(id)password completion:(id)completion
{
  v9 = getAKAppleIDAuthenticationContextClass;
  completionCopy = completion;
  passwordCopy = password;
  accountCopy = account;
  v15 = objc_alloc_init(v9());
  [v15 _setProxyingForApp:1];
  [v15 _setPassword:passwordCopy];

  [v15 setAuthenticationType:1];
  [v15 setIsUsernameEditable:0];
  [v15 setServiceType:type];
  [v15 setShouldAllowAppleIDCreation:0];
  [v15 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v15 setUsername:username];
  v14 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  [v14 authenticateWithContext:v15 completion:completionCopy];
}

- (void)__runAuthenticateiCloudWithAuthResults:(id)results completion:(id)completion
{
  v6 = MEMORY[0x1E695DFD8];
  completionCopy = completion;
  resultsCopy = results;
  v9 = [v6 setWithObject:&unk_1F1D7CCB8];
  [(SFAuthenticateAccountsService *)self _authenticateWithServiceTypes:v9 authResults:resultsCopy completion:completionCopy];
}

- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion
{
  typesCopy = types;
  resultsCopy = results;
  completionCopy = completion;
  v11 = [typesCopy count];
  if (v11)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 801, 0);
    }

    v15 = [(SFAuthenticateAccountsService *)self _nextTRServiceTypeForTRAccountServices:typesCopy];
    v16 = [(SFAuthenticateAccountsService *)self _accountTypeForTRAccountService:v15];
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _authenticateWithServiceTypes:v15 authResults:? completion:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_delegate);
      [v19 authenticateAccountsService:self willAttemptSignInWithAccountType:v16];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke;
    v20[3] = &unk_1E788C700;
    v25 = v16;
    v20[4] = self;
    v24 = v15;
    v23 = completionCopy;
    v21 = resultsCopy;
    v22 = typesCopy;
    [(SFAuthenticateAccountsService *)self _authenticateWithServiceType:v15 authResults:v21 completion:v20];
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        [SFAuthenticateAccountsService _authenticateWithServiceTypes:v11 authResults:v12 completion:v13];
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    (*(v5 + 16))(v5, 802, 0);
    v4 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v4 + 136));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [v9 authenticateAccountsService:*(a1 + 32) didAttemptSignInWithAccountType:*(a1 + 72)];
  }

  if (*(a1 + 72) == 2)
  {
    v10 = [v3 domain];
    v11 = getSSServerErrorDomain(v10);
    if ([v10 isEqual:v11])
    {
      v12 = [v3 code];

      if (v12 == 5304)
      {
        if (gLogCategory_SFAuthenticateAccountsService > 50 || gLogCategory_SFAuthenticateAccountsService == -1 && (v8 = _LogCategory_Initialize(), !v8))
        {
          if (!v3)
          {
            goto LABEL_21;
          }

LABEL_26:
          v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(a1 + 48)];
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
          [v22 removeObject:v23];

          [*(a1 + 32) _authenticateWithServiceTypes:v22 authResults:*(a1 + 40) completion:*(a1 + 56)];
          goto LABEL_27;
        }

        v8 = __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_2();
        if (v3)
        {
          goto LABEL_26;
        }

LABEL_21:
        v13 = *(a1 + 40);
        v14 = getAKAuthenticationAlternateDSIDKey(v8);
        v15 = [v13 objectForKeyedSubscript:v14];

        v16 = [[SFAuthenticateAccountInfo alloc] initWithType:*(a1 + 72) altDSID:v15];
        [*(*(a1 + 32) + 48) addObject:v16];
        v17 = objc_loadWeakRetained((*(a1 + 32) + 136));
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          v19 = objc_loadWeakRetained((*(a1 + 32) + 136));
          [v19 authenticateAccountsService:*(a1 + 32) didAuthenticateWithAccountInfo:v16];
        }

        if (*(a1 + 72) == 1)
        {
          v20 = *(a1 + 32);
          v21 = *(v20 + 144);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2;
          v24[3] = &unk_1E788A658;
          v24[4] = v20;
          v25 = v15;
          dispatch_async(v21, v24);
        }

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (!v3)
  {
    goto LABEL_21;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(a1, v3);
  }

  (*(*(a1 + 56) + 16))();
LABEL_27:
}

void __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _configurationExistingAccountWithType:1];

  if (!v2)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2_cold_1(a1);
    }

    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    [v4 setAltDSIDNeedingRepair:v3];
  }
}

- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  switch(type)
  {
    case 3uLL:
      [(SFAuthenticateAccountsService *)self _authenticateGameCenterWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 2uLL:
      [(SFAuthenticateAccountsService *)self _authenticateiTunesWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 1uLL:
      [(SFAuthenticateAccountsService *)self _authenticateiCloudWithAuthResults:resultsCopy completion:completionCopy];
      break;
    default:
      v9 = NSErrorWithOSStatusF(4294960561, "Unsupported TRAccountService %d", type);
      completionCopy[2](completionCopy, v9);

      break;
  }
}

- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  getAKAuthenticationUsernameKey(completionCopy);
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:v8 completion:?];
  }

  if (self->_accountStore)
  {
    v9 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:self->_accountStore];
    v10 = objc_alloc_init(MEMORY[0x1E698C258]);
    [v10 setAuthenticationResults:resultsCopy];
    [v10 setCdpUiProvider:self->_cdpUIProvider];
    v11 = *MEMORY[0x1E698C218];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke;
    v13[3] = &unk_1E788C750;
    v14 = v8;
    selfCopy = self;
    v16 = completionCopy;
    [v9 signInService:v11 withContext:v10 completion:v13];
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:v8 completion:?];
    }

    v12 = NSErrorWithOSStatusF(4294960587, "Account store is nil, AIDA sign in failed.");
    (*(completionCopy + 2))(completionCopy, v12);
  }
}

void __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_20;
  }

  v7 = [v5 domain];
  v8 = getAASignInErrorDomain(v7);
  if ([v7 isEqualToString:v8])
  {
    v9 = [v6 code];

    if (v9 == -8010)
    {
      if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(a1);
      }

      v10 = *(*(a1 + 40) + 24);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_2;
      v13[3] = &unk_1E788C728;
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      [v10 sendRequestID:@"_aaTerms" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v13];

      goto LABEL_20;
    }
  }

  else
  {
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:completion:]_block_invoke", 90, "### AIDA iCloud service sign in failed for '%.3@...': %{error}\n", *(a1 + 32), v6);
  }

  v11 = *(a1 + 48);
  if (v6)
  {
    (*(v11 + 16))(v11, v6);
  }

  else
  {
    v12 = NSErrorWithOSStatusF(4294960596, "AIDA AppleAccount sign in failed no error");
    (*(v11 + 16))(v11, v12);
  }

LABEL_20:
}

void __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v9)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:completion:]_block_invoke_2", 90, "### Failed to request Terms of Service for iCloud '%.3@...': %{error}\n", *(a1 + 32), v9);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  v7 = getAKAuthenticationUsernameKey;
  resultsCopy = results;
  v7(resultsCopy);
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  getAKAuthenticationAlternateDSIDKey(v9);
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  getAKAuthenticationPasswordKey(v10);
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  isHomeSharingSetupNeeded = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration isHomeSharingSetupNeeded];
  if (gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    v13 = isHomeSharingSetupNeeded;
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (isHomeSharingSetupNeeded = _LogCategory_Initialize(), isHomeSharingSetupNeeded))
    {
      isHomeSharingSetupNeeded = LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateiTunesWithAuthResults:completion:]", 30, "Authenticating iTunes '%.3@...', is Home Sharing setup needed %d\n", v9, v13);
    }
  }

  contextForSignIn = [getSSMutableAuthenticationContextClass(isHomeSharingSetupNeeded) contextForSignIn];
  [contextForSignIn setAccountName:v9];
  [contextForSignIn setAllowsRetry:0];
  [contextForSignIn setAltDSID:v10];
  [contextForSignIn setCanSetActiveAccount:0];
  [contextForSignIn setPasswordEquivalentToken:v11];
  [contextForSignIn setPromptStyle:1];
  v15 = [contextForSignIn setShouldSuppressDialogs:0];
  defaultStore = [getSSAccountStoreClass(v15) defaultStore];
  v17 = [objc_alloc(getSSAuthenticateRequestClass()) initWithAuthenticationContext:contextForSignIn];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke;
  v21[3] = &unk_1E788C778;
  v23 = defaultStore;
  v24 = completionCopy;
  v22 = v9;
  v18 = defaultStore;
  v19 = completionCopy;
  v20 = v9;
  [v17 startWithAuthenticateResponseBlock:v21];
}

void __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 authenticatedAccount];
  if (v5)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke_cold_1(v5);
    }

    [*(a1 + 40) saveAccount:v5 error:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateiTunesWithAuthResults:completion:]_block_invoke", 90, "### Authenticating iTunes failed for '%.3@...': %{error}\n", *(a1 + 32), v8);
    }

    v6 = *(a1 + 48);
    if (v8)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960596, "iTunes no authenticated account");
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  v6 = NSErrorWithOSStatusF(4294960596, "AuthenticateAccounts GameCenter not available");
  (*(completion + 2))(completionCopy, v6);
}

- (int64_t)_nextServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CCB8])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CCD0])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CCE8])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CCB8])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CCD0])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CCE8])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_accountTypeForTRAccountService:(unint64_t)service
{
  if (service - 1 < 3)
  {
    return service;
  }

  else
  {
    return 0;
  }
}

- (void)_saveAccount:(id)account completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  [accountCopy setAuthenticated:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([accountCopy aa_isPrimaryEmailVerified])
  {
    selfCopy = self;
    v23 = completionCopy;
    v24 = accountCopy;
    v9 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:accountCopy];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [v9 objectForKeyedSubscript:v13];
          v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v29;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v29 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v28 + 1) + 8 * j);
                if ([v19 type])
                {
                  [v8 setObject:v19 forKeyedSubscript:v13];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v16);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    completionCopy = v23;
    accountCopy = v24;
    self = selfCopy;
  }

  accountStore = self->_accountStore;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__SFAuthenticateAccountsService__saveAccount_completion___block_invoke;
  v26[3] = &unk_1E788C7A0;
  v27 = completionCopy;
  v21 = completionCopy;
  [(ACAccountStore *)accountStore saveAccount:accountCopy withDataclassActions:v8 completion:v26];
}

void __57__SFAuthenticateAccountsService__saveAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, v5);
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960596, "SaveAccount failed no error");
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    defaultStore = [(objc_class *)getACAccountStoreClass() defaultStore];
    v10 = self->_accountStore;
    self->_accountStore = defaultStore;

    accountStore = self->_accountStore;
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v13 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:identifier];

  [accountCopy setAccountType:v13];
  [accountCopy _setObjectID:0];
  [accountCopy markAllPropertiesDirty];
  v14 = self->_accountStore;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__SFAuthenticateAccountsService__saveRemoteVerifiedAccount_completion___block_invoke;
  v16[3] = &unk_1E788C7A0;
  v17 = completionCopy;
  v15 = completionCopy;
  [(ACAccountStore *)v14 saveVerifiedAccount:accountCopy withCompletionHandler:v16];
}

void __71__SFAuthenticateAccountsService__saveRemoteVerifiedAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v5;
  if ([v5 code] == 5)
  {
    v5 = v7;
LABEL_6:

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = v7;
  if (!v7)
  {
    v6 = NSErrorWithOSStatusF(4294960596, "SaveVerifiedAccount failed no error");
  }

LABEL_8:
  v8 = v6;
  (*(*(a1 + 32) + 16))();
}

- (void)_handleRequest:(id)request flags:(unsigned int)flags session:(id)session responseHandler:(id)handler
{
  v8 = *&flags;
  v24[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  sessionCopy = session;
  handlerCopy = handler;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 9)
  {
    if (v8)
    {
      if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _handleRequest:flags:session:responseHandler:];
      }

      if ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration isHomeKitSetupNeeded])
      {
        self->_homeKitSetupDidSucceed = CFDictionaryGetInt64() != 0;
      }

      (*(handlerCopy + 2))(handlerCopy, v8, 0, MEMORY[0x1E695E0F8]);
      [(SFAuthenticateAccountsService *)self _finishSession:sessionCopy];
      goto LABEL_17;
    }

    v14 = -6768;
    if (gLogCategory_SFAuthenticateAccountsService <= 60)
    {
      if (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize())
      {
        [SFAuthenticateAccountsService _handleRequest:flags:session:responseHandler:];
      }

      v14 = -6768;
    }
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleRequest:flags:session:responseHandler:]", 60, "### Ignoring unsupported request %u: %#m\n", Int64Ranged);
    }

    v14 = -6732;
  }

  v15 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A768];
  v17 = v14;
  v23 = *MEMORY[0x1E696A578];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v19 = v18;
  v20 = @"?";
  if (v18)
  {
    v20 = v18;
  }

  v24[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v22 = [v15 errorWithDomain:v16 code:v17 userInfo:v21];
  (*(handlerCopy + 2))(handlerCopy, v8, v22, 0);

LABEL_17:
}

- (id)_configurationExistingAccountWithType:(unsigned int)type
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (type - 1 > 2)
  {
    v11 = 0;
  }

  else
  {
    v5 = **(&unk_1E788C808 + type - 1);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    existingAccountsIdentifiers = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration existingAccountsIdentifiers];
    v7 = [existingAccountsIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(existingAccountsIdentifiers);
        }

        v11 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:*(*(&v16 + 1) + 8 * v10)];
        accountType = [v11 accountType];
        identifier = [accountType identifier];
        v14 = [identifier isEqual:v5];

        if (v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [existingAccountsIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 0;
    }
  }

  return v11;
}

- (void)_finishSession:(id)session
{
  object = session;
  v4 = objc_getAssociatedObject(object, "finished");
  if (([v4 BOOLValue] & 1) == 0)
  {
    if ([(NSMutableArray *)self->_authenticatedAccounts count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [SFAuthenticateAccountResult alloc];
        v8 = [(NSMutableArray *)self->_authenticatedAccounts copy];
        v9 = [(SFAuthenticateAccountResult *)v7 initWithAuthenticatedAccounts:v8 knownHomeUserIdentifiers:self->_knownHomeUserIdentifiers isVoiceProfileAvailable:self->_isVoiceProfileAvailable];

        [(SFAuthenticateAccountResult *)v9 setPreferredLanguageCode:self->_preferredLanguageCode];
        [(SFAuthenticateAccountResult *)v9 setLocaleIdentifier:self->_localeIdentifier];
        [(SFAuthenticateAccountResult *)v9 setPreferredLanguages:self->_preferredLanguages];
        [(SFAuthenticateAccountResult *)v9 setKeyboards:self->_keyboards];
        v10 = objc_loadWeakRetained(&self->_delegate);
        [v10 authenticateAccountsService:self didFinishAuthentication:v9];
      }
    }

    objc_setAssociatedObject(object, "finished", MEMORY[0x1E695E118], 0x301);
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 100, 0);
    }
  }
}

- (SFAuthenticateAccountsServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleSessionStarted:]", 60, "### Ignoring session from %@ when active with %@\n", v4, v3);
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleSessionStarted:]", 30, "Starting setup session with %@\n", v1);
}

- (void)_handleTRCompanionAuthenticationRequest:(void *)a1 responseHandler:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:]", 30, "Companion auth start: %##@, %@\n", a2, v3);
}

uint64_t __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788C7C0[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:]_block_invoke", 30, "Companion auth account start: %s\n", v1);
}

uint64_t __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56) - 1;
  if (v4 > 5)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788C7C0[v4];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:]_block_invoke_2", 60, "### Companion auth account failed: %s, %{error}\n", v5, a2, v2, v3);
}

- (void)_handleTRProxyAuthenticationRequest:(void *)a1 responseHandler:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:]", 30, "Proxy auth start: %##@, %@\n", a2, v3);
}

uint64_t __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788C7C0[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:]_block_invoke", 30, "Proxy auth account start: %s\n", v1);
}

uint64_t __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56) - 1;
  if (v4 > 5)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788C7C0[v4];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:]_block_invoke_2", 90, "### Proxy auth account failed: %s, %{error}\n", v5, a2, v2, v3);
}

- (uint64_t)_authenticateWithServiceTypes:(uint64_t)a1 authResults:completion:.cold.1(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = "?";
  }

  else
  {
    v1 = off_1E788C7F0[a1 - 1];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateWithServiceTypes:authResults:completion:]", 30, "Auth service type %s\n", v1);
}

uint64_t __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64) - 1;
  if (v4 > 2)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E788C7F0[v4];
  }

  return LogPrintF(&gLogCategory_SFAuthenticateAccountsService, "[SFAuthenticateAccountsService _authenticateWithServiceTypes:authResults:completion:]_block_invoke", 90, "### Auth service type %s failed: %{error}\n", v5, a2, v2, v3);
}

@end