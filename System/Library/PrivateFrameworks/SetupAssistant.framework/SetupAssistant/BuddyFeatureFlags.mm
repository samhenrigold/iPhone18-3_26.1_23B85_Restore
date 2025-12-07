@interface BuddyFeatureFlags
+ (id)currentFlags;
- (BOOL)isSolariumEnabled;
- (BOOL)isUseCDPContextSecretInsteadOfSBDSecretEnabled;
- (void)isUseCDPContextSecretInsteadOfSBDSecretEnabled;
@end

@implementation BuddyFeatureFlags

+ (id)currentFlags
{
  if (currentFlags_onceToken != -1)
  {
    +[BuddyFeatureFlags currentFlags];
  }

  v3 = currentFlags_featureFlags;

  return v3;
}

uint64_t __33__BuddyFeatureFlags_currentFlags__block_invoke()
{
  currentFlags_featureFlags = objc_alloc_init(BuddyFeatureFlags);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isUseCDPContextSecretInsteadOfSBDSecretEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _BYLoggingFacility(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BuddyFeatureFlags *)v2 isUseCDPContextSecretInsteadOfSBDSecretEnabled];
  }

  return v2;
}

- (BOOL)isSolariumEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (void)isUseCDPContextSecretInsteadOfSBDSecretEnabled
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "UseCDPContextSecretInsteadOfSBDSecret = %{BOOL}d", v2, 8u);
}

@end