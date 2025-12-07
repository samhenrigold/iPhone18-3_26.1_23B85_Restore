@interface PABSUnlockWithAppleWatchManager
+ (id)sharedInstance;
- (void)canUseVisionToUnlockWithCompletionHandler:(id)handler;
- (void)canUseWatchToUnlockWithCompletionHandler:(id)handler;
@end

@implementation PABSUnlockWithAppleWatchManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PABSUnlockWithAppleWatchManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_2;

  return v2;
}

uint64_t __49__PABSUnlockWithAppleWatchManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (void)canUseWatchToUnlockWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getNRPairedDeviceRegistryClass_softClass;
  v20 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __getNRPairedDeviceRegistryClass_block_invoke;
    v23 = &unk_279A03148;
    v24 = &v17;
    __getNRPairedDeviceRegistryClass_block_invoke(&buf);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  sharedInstance = [v4 sharedInstance];
  isPaired = [sharedInstance isPaired];

  v8 = PABSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:isPaired];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_25E0E9000, v8, OS_LOG_TYPE_DEFAULT, "Unlock using Watch: hasPairedWatch [%@]", &buf, 0xCu);
  }

  if (isPaired)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = getSFUnlockManagerClass_softClass;
    v20 = getSFUnlockManagerClass_softClass;
    if (!getSFUnlockManagerClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v22 = __getSFUnlockManagerClass_block_invoke;
      v23 = &unk_279A03148;
      v24 = &v17;
      __getSFUnlockManagerClass_block_invoke(&buf);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    sharedUnlockManager = [v10 sharedUnlockManager];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v13 = getIDSDefaultPairedDeviceSymbolLoc_ptr;
    v20 = getIDSDefaultPairedDeviceSymbolLoc_ptr;
    if (!getIDSDefaultPairedDeviceSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v22 = __getIDSDefaultPairedDeviceSymbolLoc_block_invoke;
      v23 = &unk_279A03148;
      v24 = &v17;
      __getIDSDefaultPairedDeviceSymbolLoc_block_invoke(&buf);
      v13 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v13)
    {
      [PABSTouchIDPasscodeController enrollResult:bkIdentity:];
      __break(1u);
    }

    v14 = *v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke;
    v15[3] = &unk_279A03300;
    v16 = handlerCopy;
    [sharedUnlockManager unlockEnabledWithDevice:v14 completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PABSLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke_cold_1(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)canUseVisionToUnlockWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getSFAuthenticationManagerClass_softClass;
  v16 = getSFAuthenticationManagerClass_softClass;
  if (!getSFAuthenticationManagerClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v18 = __getSFAuthenticationManagerClass_block_invoke;
    v19 = &unk_279A03148;
    v20 = &v13;
    __getSFAuthenticationManagerClass_block_invoke(&buf);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = [v4 alloc];
  v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
  v8 = [v7 isSupportedForType:12];
  v9 = PABSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Unlock using Vision: supportsVisionUnlock [%@]", &buf, 0xCu);
  }

  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke;
    v11[3] = &unk_279A03EE0;
    v12 = handlerCopy;
    [v7 listCandidateDevicesForType:12 completionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PABSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke_cold_1(v5);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v5 count] != 0);
}

void __76__PABSUnlockWithAppleWatchManager_canUseWatchToUnlockWithCompletionHandler___block_invoke_cold_1(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25E0E9000, v2, v3, "Unlock using Watch: %@ %@", v4, v5, v6, v7);
}

void __77__PABSUnlockWithAppleWatchManager_canUseVisionToUnlockWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_25E0E9000, v2, v3, "Unlock using Vision: %@ %@", v4, v5, v6, v7);
}

@end