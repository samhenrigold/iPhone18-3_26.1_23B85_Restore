@interface SPUISpotlightSceneManager
+ (id)sharedManager;
- (SPUISpotlightSceneManager)init;
- (SPUISpotlightSceneManagerDelegate)delegate;
- (void)addScene:(id)scene;
- (void)launchSpotlightIfNeededWithForegroundPriority:(BOOL)priority;
- (void)removeScene:(id)scene;
- (void)sceneWillBackground:(id)background;
- (void)sceneWillForeground:(id)foreground;
- (void)spendMoreTimeReleasingMemory;
@end

@implementation SPUISpotlightSceneManager

void __33__SPUISpotlightSceneManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightui"];
  v6 = [v5 BOOLForKey:@"SPUIPrewarmSpotlightDisabled"];

  if (v6)
  {
    goto LABEL_18;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v4 elements];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v8)
  {

    goto LABEL_18;
  }

  v9 = v8;
  obj = v7;
  v23 = a1;
  v24 = v4;
  v10 = 0;
  v11 = 0;
  v25 = 0;
  v12 = *v28;
  v13 = *MEMORY[0x277D66F20];
  v14 = *MEMORY[0x277D0ABA0];
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v27 + 1) + 8 * i);
      v17 = [v16 identifier];
      v18 = [v17 isEqualToString:v13];

      if (v18)
      {
        v25 = 1;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v20 = [v16 identifier];
        v21 = [v20 isEqualToString:v14];

        v11 |= v21;
        if (!v10)
        {
LABEL_9:
          v19 = [v16 bundleIdentifier];
          v10 = v19 != 0;

          continue;
        }
      }

      v10 = 1;
    }

    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v9);

  v22 = v11 | ~v25 | v10;
  v4 = v24;
  if ((v22 & 1) == 0 && [v24 displayBacklightLevel] >= 1)
  {
    [*(v23 + 32) launchSpotlightIfNeededWithForegroundPriority:0];
  }

LABEL_18:
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SPUISpotlightSceneManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __42__SPUISpotlightSceneManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SPUISpotlightSceneManager)init
{
  v15.receiver = self;
  v15.super_class = SPUISpotlightSceneManager;
  v2 = [(SPUISpotlightSceneManager *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    [(SPUISpotlightSceneManager *)v2 setManagedScenes:v3];

    v4 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    [(SPUISpotlightSceneManager *)v2 setForegroundScenes:v4];

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("spotlight process queue", v5);
    [(SPUISpotlightSceneManager *)v2 setQueue:v6];

    v7 = +[SPUIAppService sharedAppService];
    appService = v2->_appService;
    v2->_appService = v7;

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [configurationForDefaultMainDisplayMonitor setNeedsUserInteractivePriority:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__SPUISpotlightSceneManager_init__block_invoke;
    v13[3] = &unk_279D056B0;
    v10 = v2;
    v14 = v10;
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v13];
    v11 = [MEMORY[0x277D0AD08] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    [(SPUISpotlightSceneManager *)v10 setLayoutMonitor:v11];
  }

  return v2;
}

- (void)launchSpotlightIfNeededWithForegroundPriority:(BOOL)priority
{
  priorityCopy = priority;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SPUISpotlightSceneManager_launchSpotlightIfNeededWithForegroundPriority___block_invoke;
  v8[3] = &unk_279D056D8;
  v8[4] = self;
  priorityCopy2 = priority;
  v5 = MEMORY[0x26D682990](v8, a2);
  queue = [(SPUISpotlightSceneManager *)self queue];
  v7 = queue;
  if (priorityCopy)
  {
    dispatch_sync(queue, v5);
  }

  else
  {
    dispatch_async(queue, v5);
  }
}

void __75__SPUISpotlightSceneManager_launchSpotlightIfNeededWithForegroundPriority___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) spotlightProcessHandle];
  if (!v2 || (v4 = v2, [*(a1 + 32) spotlightProcessHandle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentState"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isRunning"), v6, v5, v4, (v7 & 1) == 0))
  {
    v8 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v2, v3);
      v8 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B824000, v8, OS_LOG_TYPE_DEFAULT, "Spotlight launch via runningboard", buf, 2u);
    }

    v9 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Spotlight"];
    v10 = [MEMORY[0x277D46EB0] contextWithIdentity:v9];
    [v10 setExplanation:@"Spotlight launch via runningboard"];
    if (*(a1 + 40) == 1)
    {
      v11 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.spotlight" name:@"LaunchInForeground"];
      v32[0] = v11;
      v12 = v32;
    }

    else
    {
      v11 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.spotlight" name:@"LaunchInBackground"];
      v31 = v11;
      v12 = &v31;
    }

    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v10 setAttributes:v13];

    v14 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v10];
    v16 = v14;
    if (v14)
    {
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v17 = [v14 execute:&v29 assertion:&v28 error:&v27];
      v18 = v29;
      v19 = v28;
      v20 = v27;
      v22 = v20;
      if ((v17 & 1) == 0)
      {
        v23 = qword_280F8EFF0;
        if (!qword_280F8EFF0)
        {
          SPUIInitLogging(v20, v21);
          v23 = qword_280F8EFF0;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __75__SPUISpotlightSceneManager_launchSpotlightIfNeededWithForegroundPriority___block_invoke_cold_1(v22, v23);
        }
      }

      [*(a1 + 32) setSpotlightProcessHandle:v18];
      v24 = [*(a1 + 32) initializationAssertions];
      [v24 invalidate];

      [*(a1 + 32) setInitializationAssertions:v19];
      if ((*(a1 + 40) & 1) == 0)
      {
        v25 = [*(a1 + 32) delegate];
        [v25 willLaunchSpotlightInBackground];
      }
    }

    else
    {
      v26 = qword_280F8EFF0;
      if (!qword_280F8EFF0)
      {
        SPUIInitLogging(0, v15);
        v26 = qword_280F8EFF0;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __75__SPUISpotlightSceneManager_launchSpotlightIfNeededWithForegroundPriority___block_invoke_cold_2(v26);
      }
    }
  }
}

- (void)addScene:(id)scene
{
  sceneCopy = scene;
  managedScenes = [(SPUISpotlightSceneManager *)self managedScenes];
  [managedScenes addObject:sceneCopy];
}

- (void)removeScene:(id)scene
{
  sceneCopy = scene;
  managedScenes = [(SPUISpotlightSceneManager *)self managedScenes];
  [managedScenes removeObject:sceneCopy];

  foregroundScenes = [(SPUISpotlightSceneManager *)self foregroundScenes];
  [foregroundScenes removeObject:sceneCopy];
}

- (void)sceneWillForeground:(id)foreground
{
  foregroundCopy = foreground;
  identifier = [foregroundCopy identifier];
  v6 = [identifier isEqualToString:@"searchScreen"];

  if (v6)
  {
    v9 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v7, v8);
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SPUISpotlightSceneManager *)v9 sceneWillForeground:foregroundCopy];
    }

    [(SPUIAppService *)self->_appService activate];
  }

  foregroundScenes = [(SPUISpotlightSceneManager *)self foregroundScenes];
  [foregroundScenes addObject:foregroundCopy];

  [(SPUISpotlightSceneManager *)self applyAssertionAsNeeded];
}

- (void)sceneWillBackground:(id)background
{
  backgroundCopy = background;
  identifier = [backgroundCopy identifier];
  v6 = [identifier isEqualToString:@"searchScreen"];

  if (v6)
  {
    v9 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging(v7, v8);
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SPUISpotlightSceneManager *)v9 sceneWillBackground:backgroundCopy];
    }

    [(SPUIAppService *)self->_appService deactivate];
  }

  foregroundScenes = [(SPUISpotlightSceneManager *)self foregroundScenes];
  [foregroundScenes removeObject:backgroundCopy];

  [(SPUISpotlightSceneManager *)self applyAssertionAsNeeded];
}

- (void)spendMoreTimeReleasingMemory
{
  v19[1] = *MEMORY[0x277D85DE8];
  backgroundingAssertions = [(SPUISpotlightSceneManager *)self backgroundingAssertions];
  [backgroundingAssertions invalidate];

  spotlightProcessHandle = [(SPUISpotlightSceneManager *)self spotlightProcessHandle];
  identity = [spotlightProcessHandle identity];

  if (identity)
  {
    v6 = objc_alloc(MEMORY[0x277D46DB8]);
    v7 = [MEMORY[0x277D47008] targetWithProcessIdentity:identity];
    v8 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.spotlight" name:@"ReleaseMemory"];
    v19[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v10 = [v6 initWithExplanation:@"spotlightMemoryBG" target:v7 attributes:v9];
    [(SPUISpotlightSceneManager *)self setBackgroundingAssertions:v10];

    backgroundingAssertions2 = [(SPUISpotlightSceneManager *)self backgroundingAssertions];
    v16 = 0;
    [backgroundingAssertions2 acquireWithError:&v16];
    v12 = v16;

    if (v12)
    {
      v15 = qword_280F8EFF0;
      if (!qword_280F8EFF0)
      {
        SPUIInitLogging(v13, v14);
        v15 = qword_280F8EFF0;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_26B824000, v15, OS_LOG_TYPE_DEFAULT, "Failed to acquire background assertion with error %@", buf, 0xCu);
      }
    }
  }
}

- (SPUISpotlightSceneManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __75__SPUISpotlightSceneManager_launchSpotlightIfNeededWithForegroundPriority___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B824000, a2, OS_LOG_TYPE_ERROR, "Spotlight launch failed because of error: %@", &v2, 0xCu);
}

- (void)sceneWillForeground:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_0(&dword_26B824000, v5, v6, "Activate for %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)sceneWillBackground:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  LODWORD(v11) = 138412290;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0_0(&dword_26B824000, v5, v6, "Deactivate for %@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end