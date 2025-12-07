@interface SOConfigurationClient
+ (id)defaultClient;
- (BOOL)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier;
- (SOConfiguration)configuration;
- (SOConfigurationClient)init;
- (id)profileForURL:(id)l responseCode:(int64_t)code;
- (int64_t)configVersion;
- (void)_checkNewVersion;
- (void)_reloadConfig;
- (void)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SOConfigurationClient

uint64_t __38__SOConfigurationClient_defaultClient__block_invoke()
{
  defaultClient_client = objc_alloc_init(SOConfigurationClient);

  return MEMORY[0x1EEE66BB8]();
}

- (SOConfigurationClient)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOConfigurationClient init]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = SOConfigurationClient;
  v4 = [(SOConfigurationClient *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(SOClient);
    client = v4->_client;
    v4->_client = v5;

    v7 = [[SOConfigurationVersion alloc] initWithMode:1];
    configurationVersion = v4->_configurationVersion;
    v4->_configurationVersion = v7;
  }

  return v4;
}

+ (id)defaultClient
{
  if (defaultClient_onceToken != -1)
  {
    +[SOConfigurationClient defaultClient];
  }

  v2 = defaultClient_client;
  if (!defaultClient_client)
  {
    v3 = SO_LOG_SOConfigurationClient();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(SOConfigurationClient *)v3];
    }

    v2 = defaultClient_client;
  }

  return v2;
}

void __38__SOConfigurationClient__reloadConfig__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOConfigurationClient();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __38__SOConfigurationClient__reloadConfig__block_invoke_cold_1(v5, v6, v7);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (void)_reloadConfig
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfigurationClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOConfigurationClient _reloadConfig]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  client = self->_client;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SOConfigurationClient__reloadConfig__block_invoke;
  v5[3] = &unk_1E836CD70;
  v5[4] = buf;
  [(SOClient *)client configurationWithCompletion:v5];
  objc_storeStrong(&self->_configuration, *(*&buf[8] + 40));
  _Block_object_dispose(buf, 8);
}

- (void)_checkNewVersion
{
  checkVersion = [(SOConfigurationVersion *)self->_configurationVersion checkVersion];
  if (checkVersion == 1)
  {

    [(SOConfigurationClient *)self _reloadConfig];
  }

  else if (checkVersion == 2)
  {
    configuration = self->_configuration;
    self->_configuration = 0;
  }
}

- (id)profileForURL:(id)l responseCode:(int64_t)code
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SOConfigurationClient *)selfCopy _checkNewVersion];
  v8 = [(SOConfiguration *)selfCopy->_configuration profileForURL:lCopy responseCode:code];
  if (!v8 && selfCopy->_configuration)
  {
    v9 = SO_LOG_SOConfigurationClient();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SOConfigurationClient *)lCopy profileForURL:v9 responseCode:?];
    }
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (BOOL)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SOConfigurationClient *)selfCopy _checkNewVersion];
  LOBYTE(code) = [(SOConfiguration *)selfCopy->_configuration willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return code;
}

- (void)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SOConfigurationClient_willHandleURL_responseCode_callerBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E836CD48;
  block[4] = self;
  v18 = lCopy;
  v20 = completionCopy;
  codeCopy = code;
  v19 = identifierCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
  v16 = lCopy;
  dispatch_async(v13, block);
}

void __86__SOConfigurationClient_willHandleURL_responseCode_callerBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _checkNewVersion];
  [*(*(a1 + 32) + 16) willHandleURL:*(a1 + 40) responseCode:*(a1 + 64) callerBundleIdentifier:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
  objc_sync_exit(obj);
}

- (SOConfiguration)configuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SOConfigurationClient *)selfCopy _checkNewVersion];
  v3 = selfCopy->_configuration;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)configVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  version = [(SOConfigurationVersion *)selfCopy->_configurationVersion version];
  objc_sync_exit(selfCopy);

  return version;
}

- (void)profileForURL:(os_log_t)log responseCode:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 141558531;
  v5 = 1752392040;
  v6 = 2117;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&dword_1CA238000, log, OS_LOG_TYPE_ERROR, "not AppSSO URL: %{sensitive, mask.hash}@ in %{public}@", &v4, 0x20u);
}

void __38__SOConfigurationClient__reloadConfig__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 profiles];
  v6[0] = 67109378;
  v6[1] = [v5 count];
  v7 = 2114;
  v8 = a2;
  _os_log_debug_impl(&dword_1CA238000, a3, OS_LOG_TYPE_DEBUG, "got new configuration with %d profile(s), error = %{public}@", v6, 0x12u);
}

@end