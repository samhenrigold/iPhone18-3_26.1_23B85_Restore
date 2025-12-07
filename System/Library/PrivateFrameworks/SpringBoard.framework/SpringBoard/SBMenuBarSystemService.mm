@interface SBMenuBarSystemService
- (SBMenuBarSystemService)init;
- (void)_queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion;
- (void)_toggleMenuBarVisibilityForClient:(id)client;
- (void)systemServiceServer:(id)server queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion;
- (void)systemServiceServer:(id)server toggleMenuBarVisibilityForClient:(id)client;
@end

@implementation SBMenuBarSystemService

- (SBMenuBarSystemService)init
{
  v8.receiver = self;
  v8.super_class = SBMenuBarSystemService;
  v2 = [(SBMenuBarSystemService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAF8]);
    v4 = [v3 initWithEntitlement:*MEMORY[0x277D67030]];
    menuBarVisibilityRequestAuthenticator = v2->_menuBarVisibilityRequestAuthenticator;
    v2->_menuBarVisibilityRequestAuthenticator = v4;

    v6 = +[SBSystemServiceServer sharedInstance];
    [v6 setMenuBarDelegate:v2];
  }

  return v2;
}

- (void)_queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v14 = 0;
  LOBYTE(self) = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:clientCopy error:&v14];

  v9 = v14;
  v10 = v9;
  if (self)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    menuBarManager = [activeDisplayWindowScene menuBarManager];

    completionCopy[2](completionCopy, [menuBarManager isMenuBarSupported]);
  }

  else
  {
    menuBarManager = SBLogMenuBar(v9);
    if (os_log_type_enabled(menuBarManager, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v10 withCompletion:?];
    }
  }
}

- (void)_toggleMenuBarVisibilityForClient:(id)client
{
  v21 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  BSDispatchQueueAssertMain();
  menuBarVisibilityRequestAuthenticator = self->_menuBarVisibilityRequestAuthenticator;
  v16 = 0;
  v6 = [(FBServiceClientAuthenticator *)menuBarVisibilityRequestAuthenticator authenticateClient:clientCopy error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
    menuBarManager = [activeDisplayWindowScene menuBarManager];

    isMenuBarVisible = [menuBarManager isMenuBarVisible];
    v13 = isMenuBarVisible ^ 1;
    v14 = SBLogMenuBar(isMenuBarVisible);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      processHandle = [clientCopy processHandle];
      *buf = 67109378;
      v18 = v13;
      v19 = 2114;
      v20 = processHandle;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "system service setting menu bar to visible: %d for client %{public}@", buf, 0x12u);
    }

    [menuBarManager requestMenuBarVisibility:v13];
  }

  else
  {
    menuBarManager = SBLogMenuBar(v7);
    if (os_log_type_enabled(menuBarManager, OS_LOG_TYPE_ERROR))
    {
      [SBMenuBarSystemService _queryMenuBarSupportedForClient:v8 withCompletion:?];
    }
  }
}

- (void)systemServiceServer:(id)server queryMenuBarSupportedForClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = clientCopy;
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server toggleMenuBarVisibilityForClient:(id)client
{
  clientCopy = client;
  v4 = clientCopy;
  BSDispatchMain();
}

- (void)_queryMenuBarSupportedForClient:(void *)a1 withCompletion:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "%{public}@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end