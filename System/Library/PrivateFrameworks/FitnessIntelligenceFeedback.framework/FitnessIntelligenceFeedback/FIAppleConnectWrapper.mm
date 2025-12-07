@interface FIAppleConnectWrapper
+ (void)authenticateWithEnvironment:(int64_t)environment completionHandler:(id)handler;
@end

@implementation FIAppleConnectWrapper

+ (void)authenticateWithEnvironment:(int64_t)environment completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([self isAppleConnectAvailable])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v7 = getACMobileAuthenticationContextClass_softClass;
    v25 = getACMobileAuthenticationContextClass_softClass;
    if (!getACMobileAuthenticationContextClass_softClass)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __getACMobileAuthenticationContextClass_block_invoke;
      v20 = &unk_27900CCE8;
      v21 = &v22;
      __getACMobileAuthenticationContextClass_block_invoke(&v17);
      v7 = v23[3];
    }

    v8 = v7;
    _Block_object_dispose(&v22, 8);
    v9 = objc_alloc_init(v7);
    v10 = v9;
    if (environment <= 1)
    {
      [v9 setEnvironment:environment];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getACAuthenticationRequestClass_softClass;
    v25 = getACAuthenticationRequestClass_softClass;
    if (!getACAuthenticationRequestClass_softClass)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __getACAuthenticationRequestClass_block_invoke;
      v20 = &unk_27900CCE8;
      v21 = &v22;
      __getACAuthenticationRequestClass_block_invoke(&v17);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v13 = objc_opt_new();
    [v13 setAppID:&unk_285E8E7F0];
    [v13 setAuthType:1];
    [v13 setInteractivityType:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke;
    v15[3] = &unk_27900CC88;
    v16 = handlerCopy;
    [v10 authenticateWithRequest:v13 completion:v15];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA068];
    v27[0] = @"AppleConnectClient.framework is unavailable";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v13 = [v14 errorWithDomain:@"com.apple.FitnessIntelligenceFeedback" code:-100 userInfo:v10];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke_2;
  v5[3] = &unk_27900CC60;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __71__FIAppleConnectWrapper_authenticateWithEnvironment_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v5 = [v3 serviceTicket];
    (*(v4 + 16))(v4, v5, 0);
  }
}

@end