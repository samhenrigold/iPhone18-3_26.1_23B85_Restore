@interface FeatureFlagsManager
+ (BOOL)isExtensionAttestationEnabled;
+ (BOOL)isMacEnabled;
+ (BOOL)isModernizationEnabled;
@end

@implementation FeatureFlagsManager

+ (BOOL)isModernizationEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FeatureFlagsManager_isModernizationEnabled__block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  if (isModernizationEnabled_onceToken != -1)
  {
    dispatch_once(&isModernizationEnabled_onceToken, block);
  }

  return v2;
}

void __45__FeatureFlagsManager_isModernizationEnabled__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (AAInternalLogSystem_onceToken != -1)
  {
    __45__FeatureFlagsManager_isModernizationEnabled__block_invoke_cold_1();
  }

  v2 = AAInternalLogSystem_log;
  if (os_log_type_enabled(AAInternalLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 23;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_226177000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App Attest Modernization feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

+ (BOOL)isMacEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FeatureFlagsManager_isMacEnabled__block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  if (isMacEnabled_onceToken != -1)
  {
    dispatch_once(&isMacEnabled_onceToken, block);
  }

  return v2;
}

void __35__FeatureFlagsManager_isMacEnabled__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (AAInternalLogSystem_onceToken != -1)
  {
    __45__FeatureFlagsManager_isModernizationEnabled__block_invoke_cold_1();
  }

  v2 = AAInternalLogSystem_log;
  if (os_log_type_enabled(AAInternalLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 35;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_226177000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Mac feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

+ (BOOL)isExtensionAttestationEnabled
{
  v2 = _os_feature_enabled_impl();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__FeatureFlagsManager_isExtensionAttestationEnabled__block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  if (isExtensionAttestationEnabled_onceToken != -1)
  {
    dispatch_once(&isExtensionAttestationEnabled_onceToken, block);
  }

  return v2;
}

void __52__FeatureFlagsManager_isExtensionAttestationEnabled__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (AAInternalLogSystem_onceToken != -1)
  {
    __45__FeatureFlagsManager_isModernizationEnabled__block_invoke_cold_1();
  }

  v2 = AAInternalLogSystem_log;
  if (os_log_type_enabled(AAInternalLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315650;
    v5 = "FeatureFlagsManager.m";
    v6 = 1024;
    v7 = 47;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_226177000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App Attest Extension Support feature flag enabled { enabled=%d }.", &v4, 0x18u);
  }
}

@end