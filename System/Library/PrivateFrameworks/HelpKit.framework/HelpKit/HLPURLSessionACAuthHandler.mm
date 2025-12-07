@interface HLPURLSessionACAuthHandler
+ (BOOL)canAuthenticateWithURLResponse:(id)response;
- (HLPURLSessionACAuthHandler)initWithAuthenticationContext:(id)context;
- (id)customHeaderFields;
- (void)authenticateWithCompletion:(id)completion;
@end

@implementation HLPURLSessionACAuthHandler

+ (BOOL)canAuthenticateWithURLResponse:(id)response
{
  responseCopy = response;
  if (+[HLPCommonDefines isInternalBuild])
  {
    v4 = responseCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (canAuthenticateWithURLResponse__onceToken != -1)
      {
        +[HLPURLSessionACAuthHandler canAuthenticateWithURLResponse:];
      }

      statusCode = [v4 statusCode];
      v6 = canAuthenticateWithURLResponse__supportedStatusCodes;
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:statusCode];
      v8 = [v6 containsObject:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __61__HLPURLSessionACAuthHandler_canAuthenticateWithURLResponse___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28647D188];
  v1 = canAuthenticateWithURLResponse__supportedStatusCodes;
  canAuthenticateWithURLResponse__supportedStatusCodes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HLPURLSessionACAuthHandler)initWithAuthenticationContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HLPURLSessionACAuthHandler;
  v6 = [(HLPURLSessionACAuthHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authContext, context);
    v8 = dispatch_queue_create("com.apple.tips.ACAuthHandler.syncQueue", 0);
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v8;
  }

  return v7;
}

- (void)authenticateWithCompletion:(id)completion
{
  completionCopy = completion;
  syncQueue = [(HLPURLSessionACAuthHandler *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke;
  block[3] = &unk_279706B10;
  block[4] = self;
  dispatch_sync(syncQueue, block);

  ssoAuthenticator = [(HLPURLSessionACAuthHandler *)self ssoAuthenticator];

  if (ssoAuthenticator)
  {
    ssoAuthenticator2 = [(HLPURLSessionACAuthHandler *)self ssoAuthenticator];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2;
    v9[3] = &unk_279706B38;
    v9[4] = self;
    v10 = completionCopy;
    [ssoAuthenticator2 authenticateWithCompletion:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v8);
  }
}

void __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ssoAuthenticator];
  if (v2)
  {
  }

  else if (PingPongClientLibraryCore(0))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v6 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    v22 = getPPCExtensibleSSOAuthenticatorClass_softClass;
    if (!getPPCExtensibleSSOAuthenticatorClass_softClass)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __getPPCExtensibleSSOAuthenticatorClass_block_invoke;
      v18[3] = &unk_279706B98;
      v18[4] = &v19;
      __getPPCExtensibleSSOAuthenticatorClass_block_invoke(v18, v3, v4, v5);
      v6 = v20[3];
    }

    v7 = v6;
    _Block_object_dispose(&v19, 8);
    v8 = objc_alloc_init(v6);
    [*(a1 + 32) setSsoAuthenticator:v8];
  }

  v9 = [*(a1 + 32) authContext];
  v10 = [v9 appIdentifier];
  v11 = [*(a1 + 32) ssoAuthenticator];
  [v11 setAppIdentifier:v10];

  v12 = [*(a1 + 32) authContext];
  v13 = [v12 enviromentIdentifier];
  v14 = [*(a1 + 32) ssoAuthenticator];
  [v14 setEnvIdentifier:v13];

  v15 = [*(a1 + 32) authContext];
  v16 = [v15 interactivityMode];
  v17 = [*(a1 + 32) ssoAuthenticator];
  [v17 setInteractivity:v16];
}

void __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v7 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  v21 = getkExtensibleSSOUsernameKeySymbolLoc_ptr;
  if (!getkExtensibleSSOUsernameKeySymbolLoc_ptr)
  {
    v8 = PingPongClientLibrary();
    v19[3] = dlsym(v8, "kExtensibleSSOUsernameKey");
    getkExtensibleSSOUsernameKeySymbolLoc_ptr = v19[3];
    v7 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v7)
  {
    goto LABEL_15;
  }

  v9 = *v7;
  v10 = [v5 objectForKeyedSubscript:v9];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v11 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  v21 = getkExtensibleSSOTokenKeySymbolLoc_ptr;
  if (!getkExtensibleSSOTokenKeySymbolLoc_ptr)
  {
    v12 = PingPongClientLibrary();
    v19[3] = dlsym(v12, "kExtensibleSSOTokenKey");
    getkExtensibleSSOTokenKeySymbolLoc_ptr = v19[3];
    v11 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v11)
  {
LABEL_15:
    __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2_cold_1();
    __break(1u);
  }

  v13 = *v11;
  v14 = [v5 objectForKeyedSubscript:v13];

  v15 = [*(a1 + 32) authContext];
  v16 = [v15 clientIdentifier];

  if ([v10 length] && objc_msgSend(v14, "length"))
  {
    if ([v16 length])
    {
      v24[0] = @"X-AppleConnect-User";
      v24[1] = @"X-AppleConnect-Token";
      v25[0] = v10;
      v25[1] = v14;
      v24[2] = @"X-Client-Id";
      v25[2] = v16;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    }

    else
    {
      v22[0] = @"X-AppleConnect-User";
      v22[1] = @"X-AppleConnect-Token";
      v23[0] = v10;
      v23[1] = v14;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v14, v17);
}

- (id)customHeaderFields
{
  v7[1] = *MEMORY[0x277D85DE8];
  authContext = [(HLPURLSessionACAuthHandler *)self authContext];
  clientIdentifier = [authContext clientIdentifier];

  if ([clientIdentifier length])
  {
    v6 = @"X-Client-Id";
    v7[0] = clientIdentifier;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __57__HLPURLSessionACAuthHandler_authenticateWithCompletion___block_invoke_2_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getPPCExtensibleSSOAuthenticatorClass_block_invoke_cold_1();
}

@end