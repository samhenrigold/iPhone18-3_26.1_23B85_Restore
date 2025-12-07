@interface ATXGlobalStateForTesting
+ (id)sharedInstance;
- (void)setTestMode:(BOOL)mode;
@end

@implementation ATXGlobalStateForTesting

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ATXGlobalStateForTesting sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void *__42__ATXGlobalStateForTesting_sharedInstance__block_invoke()
{
  result = [MEMORY[0x277D42590] isInternalBuild];
  if (result)
  {
    sharedInstance_sharedInstance = objc_alloc_init(ATXGlobalStateForTesting);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)setTestMode:(BOOL)mode
{
  modeCopy = mode;
  v7 = *MEMORY[0x277D85DE8];
  v5 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = modeCopy;
    _os_log_impl(&dword_226368000, v5, OS_LOG_TYPE_DEFAULT, "Setting test mode: %{BOOL}d", v6, 8u);
  }

  [(ATXGlobalStateForTesting *)self setTestModeEnabled:modeCopy];
}

@end