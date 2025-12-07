@interface WKInterfaceController
+ (CGRect)screenBounds;
+ (double)screenScale;
+ (void)_insertPageControllersAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts;
+ (void)_removePageControllersAtIndexes:(id)indexes;
+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts;
- (CGRect)contentFrame;
- (WKInterfaceController)init;
- (void)_handleActionWithIdentifier:(id)identifier forNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification;
- (void)addMenuItemWithImage:(id)image title:(id)title action:(SEL)action;
- (void)addMenuItemWithImageNamed:(id)named title:(id)title action:(SEL)action;
- (void)addMenuItemWithItemIcon:(int64_t)icon title:(id)title action:(SEL)action;
- (void)animateWithDuration:(double)duration animations:(id)animations;
- (void)becomeCurrentPage;
- (void)clearAllMenuItems;
- (void)didRegisterWithRemoteInterface;
- (void)dismissAddPassesController;
- (void)dismissController;
- (void)dismissTextInputController;
- (void)invalidateUserActivity;
- (void)popController;
- (void)popToRootController;
- (void)presentAddPassesControllerWithPasses:(id)passes completion:(id)completion;
- (void)presentControllerWithName:(id)name context:(id)context;
- (void)presentControllerWithNames:(id)names contexts:(id)contexts;
- (void)presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(int64_t)mode completion:(id)completion;
- (void)presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(int64_t)mode completion:(id)completion;
- (void)pushControllerWithName:(id)name context:(id)context;
- (void)setTitle:(id)title;
- (void)updateUserActivity:(id)activity userInfo:(id)info;
- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l;
@end

@implementation WKInterfaceController

+ (double)screenScale
{
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 screenScale];
  v4 = v3;

  return v4;
}

+ (CGRect)screenBounds
{
  v2 = +[WKInterfaceDevice currentDevice];
  [v2 screenBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (WKInterfaceController)init
{
  v8.receiver = self;
  v8.super_class = WKInterfaceController;
  v2 = [(WKInterfaceController *)&v8 init];
  [(WKInterfaceController *)v2 setViewControllerID:__viewControllerID];
  [(WKInterfaceController *)v2 setContentFrame:__contentFrame, *&qword_27E131AB8, unk_27E131AC0];
  [(WKInterfaceController *)v2 setProperties:__properties];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(WKInterfaceController *)v2 setGestureRecognizers:dictionary];

  if (init_onceToken != -1)
  {
    [WKInterfaceController init];
  }

  array = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceController *)v2 setUninstalledGestureIDs:array];

  array2 = [MEMORY[0x277CBEB18] array];
  [(WKInterfaceController *)v2 setPendingGestureInstallationFinishedBlocks:array2];

  v6 = [SPRemoteInterface controller:v2 setupProperties:__properties viewControllerID:__viewControllerID tableIndex:0x7FFFFFFFFFFFFFFFLL rowIndex:0x7FFFFFFFFFFFFFFFLL classForType:_WKInterfaceObjectClassWithType];
  [(WKInterfaceController *)v2 setTopLevelObjects:v6];

  (*(__remoteSetup + 16))(__remoteSetup, v2);
  return v2;
}

uint64_t __29__WKInterfaceController_init__block_invoke()
{
  __gestureRecognizersQueue = dispatch_queue_create("com.apple.watchKit.WKInterfaceControllerGestureRecognizers", MEMORY[0x277D85CD8]);

  return MEMORY[0x2821F96F8]();
}

- (void)didRegisterWithRemoteInterface
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  topLevelObjects = [(WKInterfaceController *)self topLevelObjects];
  v3 = [topLevelObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(topLevelObjects);
        }

        [*(*(&v7 + 1) + 8 * v6++) didRegisterWithRemoteInterface];
      }

      while (v4 != v6);
      v4 = [topLevelObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_handleActionWithIdentifier:(id)identifier forNotification:(id)notification remoteNotification:(id)remoteNotification localNotification:(id)localNotification
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  notificationCopy = notification;
  remoteNotificationCopy = remoteNotification;
  localNotificationCopy = localNotification;
  v14 = objc_opt_class();
  v15 = spUtils_subclassForObjectOverridesSelectorFromSuperclass(self, sel_handleActionWithIdentifier_forNotification_, v14);
  if (v15)
  {
    v16 = wk_default_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136446978;
      v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
      v25 = 1024;
      v26 = 276;
      v27 = 2114;
      selfCopy5 = self;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_23B338000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
    }

    [(WKInterfaceController *)self handleActionWithIdentifier:identifierCopy forNotification:notificationCopy];
  }

  else if (localNotificationCopy)
  {
    v17 = wk_default_log(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136446978;
      v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
      v25 = 1024;
      v26 = 283;
      v27 = 2114;
      selfCopy5 = self;
      v29 = 2114;
      v30 = identifierCopy;
      _os_log_impl(&dword_23B338000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forLocalNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
    }

    [(WKInterfaceController *)self handleActionWithIdentifier:identifierCopy forLocalNotification:localNotificationCopy];
  }

  else
  {
    v18 = wk_default_log(v15);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (remoteNotificationCopy)
    {
      if (v19)
      {
        v23 = 136446978;
        v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
        v25 = 1024;
        v26 = 286;
        v27 = 2114;
        selfCopy5 = self;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_23B338000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forRemoteNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
      }

      selfCopy6 = self;
      v21 = identifierCopy;
      v22 = remoteNotificationCopy;
    }

    else
    {
      if (v19)
      {
        v23 = 136446978;
        v24 = "[WKInterfaceController _handleActionWithIdentifier:forNotification:remoteNotification:localNotification:]";
        v25 = 1024;
        v26 = 289;
        v27 = 2114;
        selfCopy5 = self;
        v29 = 2114;
        v30 = identifierCopy;
        _os_log_impl(&dword_23B338000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%d: Calling handleActionWithIdentifier:forRemoteNotification: on %{public}@ with identifier %{public}@", &v23, 0x26u);
      }

      v22 = MEMORY[0x277CBEC10];
      selfCopy6 = self;
      v21 = identifierCopy;
    }

    [(WKInterfaceController *)selfCopy6 handleActionWithIdentifier:v21 forRemoteNotification:v22];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__WKInterfaceController_setTitle___block_invoke;
  v9[3] = &unk_278B7E2F0;
  v9[4] = self;
  v10 = titleCopy;
  v5 = titleCopy;
  v6 = MEMORY[0x23EE9A9D0](v9);
  v7 = isRunningOnMainQueue();
  if (v7)
  {
    v6[2](v6);
  }

  else
  {
    v8 = wk_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController setTitle:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __34__WKInterfaceController_setTitle___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewControllerID];
  v2 = [*(a1 + 40) copy];
  [SPRemoteInterface setController:v3 key:@"#title" property:&stru_284DFE9D8 value:v2];
}

- (void)pushControllerWithName:(id)name context:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__WKInterfaceController_pushControllerWithName_context___block_invoke;
  v13[3] = &unk_278B7E278;
  v13[4] = self;
  v14 = nameCopy;
  v15 = contextCopy;
  v8 = contextCopy;
  v9 = nameCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController pushControllerWithName:context:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __56__WKInterfaceController_pushControllerWithName_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [SPRemoteInterface controller:v2 pushInterfaceController:v3 context:*(a1 + 48)];
}

- (void)popController
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)popToRootController
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

+ (void)reloadRootControllersWithNames:(id)names contexts:(id)contexts
{
  namesCopy = names;
  contextsCopy = contexts;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke;
  v12[3] = &unk_278B7E2F0;
  v13 = namesCopy;
  v14 = contextsCopy;
  v7 = contextsCopy;
  v8 = namesCopy;
  v9 = MEMORY[0x23EE9A9D0](v12);
  v10 = isRunningOnMainQueue();
  if (v10)
  {
    v9[2](v9);
  }

  else
  {
    v11 = wk_default_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[WKInterfaceController reloadRootControllersWithNames:contexts:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v4 = [*(a1 + 32) copy];
    v2 = [*(a1 + 40) copy];
    [SPRemoteInterface reloadRootControllersWithNames:v4 contexts:v2];
  }

  else
  {
    v3 = wk_default_log(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke_cold_1();
    }
  }
}

+ (void)_insertPageControllersAtIndexes:(id)indexes withNames:(id)names contexts:(id)contexts
{
  indexesCopy = indexes;
  namesCopy = names;
  contextsCopy = contexts;
  if ([namesCopy count])
  {
    v9 = [indexesCopy copy];
    v10 = [namesCopy copy];
    [SPRemoteInterface insertPageControllerAtIndexes:v9 withNames:v10 contexts:contextsCopy];
  }
}

+ (void)_removePageControllersAtIndexes:(id)indexes
{
  v3 = [indexes copy];
  [SPRemoteInterface removePageControllerAtIndexes:v3];
}

- (void)becomeCurrentPage
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)presentControllerWithName:(id)name context:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__WKInterfaceController_presentControllerWithName_context___block_invoke;
  v13[3] = &unk_278B7E278;
  v13[4] = self;
  v14 = nameCopy;
  v15 = contextCopy;
  v8 = contextCopy;
  v9 = nameCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentControllerWithName:context:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __59__WKInterfaceController_presentControllerWithName_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [SPRemoteInterface controller:v2 presentInterfaceController:v3 context:*(a1 + 48)];
}

- (void)presentControllerWithNames:(id)names contexts:(id)contexts
{
  namesCopy = names;
  contextsCopy = contexts;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__WKInterfaceController_presentControllerWithNames_contexts___block_invoke;
  v13[3] = &unk_278B7E278;
  v13[4] = self;
  v14 = namesCopy;
  v15 = contextsCopy;
  v8 = contextsCopy;
  v9 = namesCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentControllerWithNames:contexts:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __61__WKInterfaceController_presentControllerWithNames_contexts___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v3 = [*(a1 + 48) copy];
  [SPRemoteInterface controller:v2 presentInterfaceControllers:v4 contexts:v3];
}

- (void)dismissController
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)presentTextInputControllerWithSuggestions:(id)suggestions allowedInputMode:(int64_t)mode completion:(id)completion
{
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke;
  v15[3] = &unk_278B7F338;
  v15[4] = self;
  v16 = suggestionsCopy;
  v17 = completionCopy;
  modeCopy = mode;
  v10 = suggestionsCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x23EE9A9D0](v15);
  v13 = isRunningOnMainQueue();
  if (v13)
  {
    v12[2](v12);
  }

  else
  {
    v14 = wk_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentTextInputControllerWithSuggestions:allowedInputMode:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    v5 = [*(a1 + 40) copy];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    [SPRemoteInterface controller:v2 presentTextInputControllerWithSuggestions:v5 allowedInputMode:v3 completion:*(a1 + 48)];
  }

  else
  {
    v4 = wk_default_log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke_cold_1();
    }
  }
}

- (void)presentTextInputControllerWithSuggestionsForLanguage:(id)language allowedInputMode:(int64_t)mode completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke;
  v15[3] = &unk_278B7F360;
  v15[4] = self;
  v16 = completionCopy;
  v17 = languageCopy;
  modeCopy = mode;
  v10 = languageCopy;
  v11 = completionCopy;
  v12 = MEMORY[0x23EE9A9D0](v15);
  v13 = isRunningOnMainQueue();
  if (v13)
  {
    v12[2](v12);
  }

  else
  {
    v14 = wk_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentTextInputControllerWithSuggestionsForLanguage:allowedInputMode:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke(void *a1)
{
  if (a1[5])
  {
    v2 = a1[4];
    v3 = a1[6];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
    [SPRemoteInterface controller:v2 presentTextInputControllerWithSuggestionsForLanguage:v3 allowedInputMode:v5 completion:a1[5]];
  }

  else
  {
    v4 = wk_default_log(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke_cold_1();
    }
  }
}

- (void)dismissTextInputController
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)presentAddPassesControllerWithPasses:(id)passes completion:(id)completion
{
  passesCopy = passes;
  completionCopy = completion;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WKInterfaceController_presentAddPassesControllerWithPasses_completion___block_invoke;
  v13[3] = &unk_278B7F1F0;
  v13[4] = self;
  v14 = passesCopy;
  v15 = completionCopy;
  v8 = completionCopy;
  v9 = passesCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController presentAddPassesControllerWithPasses:completion:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)dismissAddPassesController
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)animateWithDuration:(double)duration animations:(id)animations
{
  animationsCopy = animations;
  v7 = animationsCopy;
  if (animationsCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__WKInterfaceController_animateWithDuration_animations___block_invoke;
    block[3] = &unk_278B7F388;
    block[4] = self;
    durationCopy = duration;
    v9 = animationsCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__WKInterfaceController_animateWithDuration_animations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerID];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [SPRemoteInterface setController:v2 key:@"#animateBegin" property:&stru_284DFE9D8 value:v3];

  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) viewControllerID];
  [SPRemoteInterface setController:v4 key:@"#animateCommit" property:&stru_284DFE9D8 value:0];
}

- (void)addMenuItemWithImage:(id)image title:(id)title action:(SEL)action
{
  imageCopy = image;
  titleCopy = title;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke;
  v15[3] = &unk_278B7F3B0;
  v16 = imageCopy;
  v17 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  v10 = titleCopy;
  v11 = imageCopy;
  v12 = MEMORY[0x23EE9A9D0](v15);
  v13 = isRunningOnMainQueue();
  if (v13)
  {
    v12[2](v12);
  }

  else
  {
    v14 = wk_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithImage:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = v2;
  if (!*(a1 + 32) || (*(a1 + 40) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    v5 = wk_default_log(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 48) viewControllerID];
    v6 = [*(a1 + 40) copy];
    v8[1] = v6;
    v8[2] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v7];
  }
}

- (void)addMenuItemWithImageNamed:(id)named title:(id)title action:(SEL)action
{
  namedCopy = named;
  titleCopy = title;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke;
  v15[3] = &unk_278B7F3B0;
  v16 = namedCopy;
  v17 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  v10 = titleCopy;
  v11 = namedCopy;
  v12 = MEMORY[0x23EE9A9D0](v15);
  v13 = isRunningOnMainQueue();
  if (v13)
  {
    v12[2](v12);
  }

  else
  {
    v14 = wk_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithImageNamed:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 56));
  v3 = v2;
  if (!*(a1 + 32) || (*(a1 + 40) ? (v4 = v2 == 0) : (v4 = 1), v4))
  {
    v5 = wk_default_log(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 48) viewControllerID];
    v6 = [*(a1 + 32) copy];
    v7 = [*(a1 + 40) copy];
    v9[1] = v7;
    v9[2] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v8];
  }
}

- (void)addMenuItemWithItemIcon:(int64_t)icon title:(id)title action:(SEL)action
{
  titleCopy = title;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke;
  v13[3] = &unk_278B7E368;
  v14 = titleCopy;
  selfCopy = self;
  actionCopy = action;
  iconCopy = icon;
  v9 = titleCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController addMenuItemWithItemIcon:title:action:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 48));
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = wk_default_log(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [*(a1 + 40) viewControllerID];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    v7 = [*(a1 + 32) copy];
    v9[1] = v7;
    v9[2] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    [SPRemoteInterface setController:v5 key:@"#item" property:&stru_284DFE9D8 value:v8];
  }
}

- (void)clearAllMenuItems
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __42__WKInterfaceController_clearAllMenuItems__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewControllerID];
  [SPRemoteInterface setController:v1 key:@"#item" property:&stru_284DFE9D8 value:0];
}

- (void)updateUserActivity:(id)activity userInfo:(id)info
{
  activityCopy = activity;
  infoCopy = info;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke;
  v13[3] = &unk_278B7E278;
  v13[4] = self;
  v14 = activityCopy;
  v15 = infoCopy;
  v8 = infoCopy;
  v9 = activityCopy;
  v10 = MEMORY[0x23EE9A9D0](v13);
  v11 = isRunningOnMainQueue();
  if (v11)
  {
    v10[2](v10);
  }

  else
  {
    v12 = wk_default_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController updateUserActivity:userInfo:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke(uint64_t a1)
{
  v2 = wk_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v5 = [*(a1 + 48) copy];
  [v3 updateUserActivity:v4 userInfo:v5 webpageURL:0];
}

- (void)updateUserActivity:(id)activity userInfo:(id)info webpageURL:(id)l
{
  activityCopy = activity;
  infoCopy = info;
  lCopy = l;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke;
  v17[3] = &unk_278B7E2C8;
  v18 = activityCopy;
  v19 = infoCopy;
  v20 = lCopy;
  selfCopy = self;
  v11 = lCopy;
  v12 = infoCopy;
  v13 = activityCopy;
  v14 = MEMORY[0x23EE9A9D0](v17);
  v15 = isRunningOnMainQueue();
  if (v15)
  {
    v14[2](v14);
  }

  else
  {
    v16 = wk_default_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WKInterfaceController updateUserActivity:userInfo:webpageURL:];
    }

    dispatch_async(MEMORY[0x277D85CD0], v14);
  }
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2 && (*(a1 + 40) || *(a1 + 48)))
  {
    v8 = [*(a1 + 32) copy];
    v3 = [*(a1 + 40) copy];
    v4 = [*(a1 + 48) copy];
    [SPRemoteInterface updateUserActivity:v8 userInfo:v3 webpageURL:v4 interfaceController:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = wk_default_log(v2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
        __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_1();
      }
    }

    else if (v7)
    {
      __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_2();
    }
  }
}

- (void)invalidateUserActivity
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTitle:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)pushControllerWithName:context:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

+ (void)reloadRootControllersWithNames:contexts:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __65__WKInterfaceController_reloadRootControllersWithNames_contexts___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)presentControllerWithName:context:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)presentControllerWithNames:contexts:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)presentTextInputControllerWithSuggestions:allowedInputMode:completion:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __95__WKInterfaceController_presentTextInputControllerWithSuggestions_allowedInputMode_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)presentTextInputControllerWithSuggestionsForLanguage:allowedInputMode:completion:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __106__WKInterfaceController_presentTextInputControllerWithSuggestionsForLanguage_allowedInputMode_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)presentAddPassesControllerWithPasses:completion:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

- (void)addMenuItemWithImage:title:action:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __59__WKInterfaceController_addMenuItemWithImage_title_action___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)addMenuItemWithImageNamed:title:action:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __64__WKInterfaceController_addMenuItemWithImageNamed_title_action___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)addMenuItemWithItemIcon:title:action:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __62__WKInterfaceController_addMenuItemWithItemIcon_title_action___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)updateUserActivity:userInfo:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __53__WKInterfaceController_updateUserActivity_userInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)updateUserActivity:userInfo:webpageURL:.cold.1()
{
  v6 = 136446722;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_0(&dword_23B338000, v0, v1, "%{public}s:%d: %{public}s: called from queue other than main. This is not supported and may fail in the future.", v2, v3, v4, v5, v6);
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __64__WKInterfaceController_updateUserActivity_userInfo_webpageURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end