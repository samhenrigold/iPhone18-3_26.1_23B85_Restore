@interface GCGameIntentManager
+ (void)initialize;
- (GCGameIntentManager)init;
- (void)_ui_launchApplicationWithBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)launchApplicationWithBundleIdentifier:(id)identifier;
- (void)toggleGamesFolder;
- (void)tryPresentAppLibraryPod;
- (void)ui_togglePlatformGamesLibrary;
@end

@implementation GCGameIntentManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    LoadGameControllerUIFramework(2);
  }
}

- (GCGameIntentManager)init
{
  v6.receiver = self;
  v6.super_class = GCGameIntentManager;
  v2 = [(GCGameIntentManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D4238]);
    service = v2->_service;
    v2->_service = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GCGameIntentManager;
  [(GCGameIntentManager *)&v2 dealloc];
}

- (void)launchApplicationWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E6963608];
  identifierCopy = identifier;
  defaultWorkspace = [v3 defaultWorkspace];
  [defaultWorkspace openApplicationWithBundleID:identifierCopy];
}

- (void)_ui_launchApplicationWithBundleIdentifier:(id)identifier
{
  isInternalBuild = gc_isInternalBuild(self, a2);
  if (isInternalBuild)
  {
    [GCGameIntentManager _ui_launchApplicationWithBundleIdentifier:?];
  }
}

- (void)ui_togglePlatformGamesLibrary
{
  isInternalBuild = gc_isInternalBuild(self, a2);
  if (isInternalBuild)
  {
    [GCGameIntentManager _ui_launchApplicationWithBundleIdentifier:?];
  }
}

- (void)toggleGamesFolder
{
  v2 = getGCLogger(self);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 code];
  if (v4 == 7)
  {
    if (gc_isInternalBuild(7, v5))
    {
      __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_3(v3);
    }

    [*(a1 + 32) tryPresentAppLibraryPod];
  }

  else
  {
    isInternalBuild = gc_isInternalBuild(v4, v5);
    if (v3)
    {
      if (isInternalBuild)
      {
        __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_1(v3);
      }
    }

    else if (isInternalBuild)
    {
      __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_2(isInternalBuild);
    }
  }
}

- (void)tryPresentAppLibraryPod
{
  service = self->_service;
  6014 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 6014];
  [(SBSHomeScreenService *)service presentAppLibraryCategoryPodForCategoryIdentifier:6014 completion:&__block_literal_global_19];
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    if (gc_isInternalBuild(v2, v3))
    {
      __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_1(v4);
    }

    if ([v4 code] == 2)
    {
      isInternalBuild = gc_isInternalBuild(2, v5);
      if (isInternalBuild)
      {
        __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_4(isInternalBuild);
      }

      SBSSuspendFrontmostApplication();
    }

    else
    {
      v7 = [v4 code];
      v9 = gc_isInternalBuild(v7, v8);
      if (v7 == 9)
      {
        if (v9)
        {
          __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_3(v9);
        }
      }

      else if (v9)
      {
        __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_2(v4);
      }
    }
  }
}

- (void)_ui_launchApplicationWithBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_2(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_3(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_2(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_3(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_4(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

@end