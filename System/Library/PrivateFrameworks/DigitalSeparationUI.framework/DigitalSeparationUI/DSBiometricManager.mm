@interface DSBiometricManager
+ (id)pearlIdentities;
+ (unint64_t)pearlIdentityCount;
+ (unint64_t)touchIDCount;
+ (void)deleteAllTouchIDs;
+ (void)pearlIdentities;
- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager;
- (DSBiometricManager)initWithContext:(id)context;
- (void)configurePeriocularEnabled:(BOOL)enabled;
- (void)deleteAllPearlIdentities;
- (void)deleteGlobalAuthACL;
@end

@implementation DSBiometricManager

- (DSBiometricManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = DSBiometricManager;
  v5 = [(DSBiometricManager *)&v9 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.DigitalSeparation", "DSBiometricManager");
    v7 = DSLogBiometrics_0;
    DSLogBiometrics_0 = v6;

    [(DSBiometricManager *)v5 setAuthContext:contextCopy];
  }

  return v5;
}

+ (id)pearlIdentities
{
  if ([self supportsPearl])
  {
    v2 = MEMORY[0x277CF1BA0];
    v3 = [MEMORY[0x277CF1BB0] deviceDescriptorForType:2];
    v11 = 0;
    v4 = [v2 deviceWithDescriptor:v3 error:&v11];
    v5 = v11;

    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v10 = 0;
      v8 = [v4 identitiesForUser:getuid() error:&v10];
      v5 = v10;
    }

    else
    {
      v7 = DSLogBiometrics_0;
      if (os_log_type_enabled(DSLogBiometrics_0, OS_LOG_TYPE_ERROR))
      {
        +[(DSBiometricManager *)v5];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (unint64_t)pearlIdentityCount
{
  pearlIdentities = [self pearlIdentities];
  v3 = [pearlIdentities count];

  return v3;
}

- (void)deleteAllPearlIdentities
{
  v17 = *MEMORY[0x277D85DE8];
  [(DSBiometricManager *)self deleteGlobalAuthACL];
  mEMORY[0x277D3F928] = [MEMORY[0x277D3F928] sharedInstance];
  v4 = [mEMORY[0x277D3F928] identitiesForIdentityType:2];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        mEMORY[0x277D3F928]2 = [MEMORY[0x277D3F928] sharedInstance];
        [mEMORY[0x277D3F928]2 removeIdentity:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (_os_feature_enabled_impl())
  {
    [(DSBiometricManager *)self configurePeriocularEnabled:0];
  }
}

- (void)configurePeriocularEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3F928] = [MEMORY[0x277D3F928] sharedInstance];
  v6 = [mEMORY[0x277D3F928] deviceForType:2];

  authContext = [(DSBiometricManager *)self authContext];
  v19 = &unk_285BB9358;
  v20[0] = &unk_285BB9370;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v9 = [authContext evaluatePolicy:1007 options:v8 error:0];

  authContext2 = [(DSBiometricManager *)self authContext];
  externalizedContext = [authContext2 externalizedContext];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v12 = getBKUIPeriocularEnableSplashViewControllerClass_softClass;
  v18 = getBKUIPeriocularEnableSplashViewControllerClass_softClass;
  if (!getBKUIPeriocularEnableSplashViewControllerClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke;
    v14[3] = &unk_278F75430;
    v14[4] = &v15;
    __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke(v14);
    v12 = v16[3];
  }

  v13 = v12;
  _Block_object_dispose(&v15, 8);
  [v12 setPeriocularFaceIDMatchEnabledForUserConfigurationWithDevice:v6 credentialSet:externalizedContext enabled:enabledCopy];
}

- (void)deleteGlobalAuthACL
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke;
  v3[3] = &unk_278F75230;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _biometricBindingFlowManager];
  [v1 deleteBoundACLWithCompletion:&__block_literal_global_14];
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = DSLogBiometrics_0;
    if (os_log_type_enabled(DSLogBiometrics_0, OS_LOG_TYPE_ERROR))
    {
      __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (CIDVUIBiometricBindingFlowManager)_biometricBindingFlowManager
{
  biometricBindingFlowManager = self->__biometricBindingFlowManager;
  if (!biometricBindingFlowManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getCIDVUIBiometricBindingFlowManagerClass_softClass;
    v13 = getCIDVUIBiometricBindingFlowManagerClass_softClass;
    if (!getCIDVUIBiometricBindingFlowManagerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getCIDVUIBiometricBindingFlowManagerClass_block_invoke;
      v9[3] = &unk_278F75430;
      v9[4] = &v10;
      __getCIDVUIBiometricBindingFlowManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->__biometricBindingFlowManager;
    self->__biometricBindingFlowManager = v6;

    biometricBindingFlowManager = self->__biometricBindingFlowManager;
  }

  return biometricBindingFlowManager;
}

+ (unint64_t)touchIDCount
{
  identities = [MEMORY[0x277D3F970] identities];
  v3 = [identities count];

  return v3;
}

+ (void)deleteAllTouchIDs
{
  v12 = *MEMORY[0x277D85DE8];
  identities = [MEMORY[0x277D3F970] identities];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [identities countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(identities);
        }

        [MEMORY[0x277D3F970] removeIdentity:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [identities countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (void)pearlIdentities
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "DS Face ID: Failed to fetch BKDevice: %@", &v2, 0xCu);
}

void __41__DSBiometricManager_deleteGlobalAuthACL__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[DSBiometricManager deleteGlobalAuthACL]_block_invoke_2";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "%s: Encountered error '%{public}@'", &v2, 0x16u);
}

@end