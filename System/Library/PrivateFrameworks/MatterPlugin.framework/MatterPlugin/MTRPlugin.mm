@interface MTRPlugin
+ (id)sharedInstance;
- (BOOL)start;
- (BOOL)stop;
- (MTRPlugin)init;
- (void)_pairingStartedNotification:(id)notification;
- (void)_pairingStoppedNotification:(id)notification;
@end

@implementation MTRPlugin

+ (id)sharedInstance
{
  if (sharedInstance_creation_0 != -1)
  {
    +[MTRPlugin sharedInstance];
  }

  v3 = sharedInstance_sInstance_0;

  return v3;
}

uint64_t __27__MTRPlugin_sharedInstance__block_invoke()
{
  sharedInstance_sInstance_0 = objc_alloc_init(MTRPlugin);

  return MEMORY[0x2821F96F8]();
}

- (MTRPlugin)init
{
  v6.receiver = self;
  v6.super_class = MTRPlugin;
  v2 = [(MTRPlugin *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)start
{
  v9 = *MEMORY[0x277D85DE8];
  matterPluginLogInitialize(self, a2);
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Starting MTRPlugin: %p", &v7, 0xCu);
  }

  [MEMORY[0x277CD5318] swizzlePrewarm];
  [MEMORY[0x277CD5328] swizzlePrewarm];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__pairingStartedNotification_ name:@"HMDHomeManagerFirstProcessDidBecomeActiveNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__pairingStoppedNotification_ name:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:0];

  return 1;
}

- (BOOL)stop
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping MTRPlugin: %p", &v5, 0xCu);
  }

  return 1;
}

- (void)_pairingStartedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = _MTRValidateUserInfo(userInfo);

  v6 = matterPluginLog_default;
  v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      userInfo2 = [notificationCopy userInfo];
      v10 = [userInfo2 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Process activation for %@", &v14, 0xCu);
    }

    MTRSetPotentialPairing(0, 1);
  }

  else if (v7)
  {
    v11 = v6;
    userInfo3 = [notificationCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring process activation for %@, not com.apple.Home.HomeUIService", &v14, 0xCu);
  }
}

- (void)_pairingStoppedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = _MTRValidateUserInfo(userInfo);

  v6 = matterPluginLog_default;
  v7 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = v6;
      userInfo2 = [notificationCopy userInfo];
      v10 = [userInfo2 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "Process de-activation for %@", &v14, 0xCu);
    }

    MTRSetPotentialPairing(0, 0);
  }

  else if (v7)
  {
    v11 = v6;
    userInfo3 = [notificationCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:@"HMDXPCConnectionClientIdentifierKey"];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring process de-activation for %@, not com.apple.Home.HomeUIService", &v14, 0xCu);
  }
}

@end