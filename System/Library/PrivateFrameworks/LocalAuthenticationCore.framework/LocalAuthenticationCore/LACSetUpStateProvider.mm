@interface LACSetUpStateProvider
+ (LACSetUpStateProvider)sharedInstance;
- (BOOL)hasCompletedSetup;
@end

@implementation LACSetUpStateProvider

+ (LACSetUpStateProvider)sharedInstance
{
  if (sharedInstance_onceToken_21 != -1)
  {
    +[LACSetUpStateProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_19;

  return v3;
}

- (BOOL)hasCompletedSetup
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = SetupAssistantLibraryCore(0);
  if (v2 && (v2 = SetupAssistantLibraryCore(0)) != 0 && (v2 = getBYSetupAssistantNeedsToRunSymbolLoc()) != 0)
  {
    BYSetupAssistantNeedsToRunSymbolLoc = getBYSetupAssistantNeedsToRunSymbolLoc();
    if (!BYSetupAssistantNeedsToRunSymbolLoc)
    {
      +[LACSharingManager isSharingError:];
    }

    v4 = BYSetupAssistantNeedsToRunSymbolLoc();
    v5 = v4 ^ 1;
    v6 = LACLogDefault(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "hasCompletedSetup: %@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = LACLogDefault(v2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(LACSetUpStateProvider *)v6 hasCompletedSetup];
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __39__LACSetUpStateProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACSetUpStateProvider);
  v1 = sharedInstance_sharedInstance_19;
  sharedInstance_sharedInstance_19 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end