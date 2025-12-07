@interface VUIUserEngagementSheetLauncher
+ (id)sharedInstance;
- (BOOL)isAnotherSheetShowingToUser;
- (VUIUserEngagementSheetLauncher)init;
- (id)_init;
- (void)_deleteKeysUsedForSheetPresentation;
- (void)_handleTabBarChange:(id)change;
- (void)_handleUserNotificationAction:(int64_t)action;
- (void)_showNotificationAuthorizationSheet;
- (void)dealloc;
- (void)handleAMSEngagementPresentationSheet:(BOOL)sheet isRepromptSupported:(BOOL)supported;
- (void)handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation VUIUserEngagementSheetLauncher

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_0 != -1)
  {
    +[VUIUserEngagementSheetLauncher sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __48__VUIUserEngagementSheetLauncher_sharedInstance__block_invoke()
{
  v0 = [[VUIUserEngagementSheetLauncher alloc] _init];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (VUIUserEngagementSheetLauncher)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)_init
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VUIUserEngagementSheetLauncher;
  v2 = [(VUIUserEngagementSheetLauncher *)&v17 init];
  if (v2)
  {
    v3 = +[_TtC8VideosUI26VUIBarItemSelectionManager lastSelectedIdentifier];
    lastTabIdentifier = v2->_lastTabIdentifier;
    v2->_lastTabIdentifier = v3;

    v2->_hasAppLostConnectivity = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
    [defaultCenter addObserver:v2 selector:sel__handleNetworkReachabilityDidChangeNotification_ name:v6 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_firstPromptLaunchNumberAfterGDPR = [standardUserDefaults integerForKey:@"KettleFirstPromptLaunchNumberAfterGDPR"];

    if (!v2->_firstPromptLaunchNumberAfterGDPR)
    {
      v2->_firstPromptLaunchNumberAfterGDPR = 1;
    }

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_lastPromptLaunchNumberAfterGDPR = [standardUserDefaults2 integerForKey:@"KettleLastPromptLaunchNumberAfterGDPR"];

    if (!v2->_lastPromptLaunchNumberAfterGDPR)
    {
      v2->_lastPromptLaunchNumberAfterGDPR = 3;
    }

    v11 = VUIDefaultLogObject(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      firstPromptLaunchNumberAfterGDPR = v2->_firstPromptLaunchNumberAfterGDPR;
      *buf = 134217984;
      v19 = firstPromptLaunchNumberAfterGDPR;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - firstPromptLaunchNumberAfterGDPR:%lu", buf, 0xCu);
    }

    v14 = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      lastPromptLaunchNumberAfterGDPR = v2->_lastPromptLaunchNumberAfterGDPR;
      *buf = 134217984;
      v19 = lastPromptLaunchNumberAfterGDPR;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - lastPromptLaunchNumberAfterGDPR:%lu", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIUserEngagementSheetLauncher;
  [(VUIUserEngagementSheetLauncher *)&v4 dealloc];
}

- (void)handleAMSEngagementPresentationSheet:(BOOL)sheet isRepromptSupported:(BOOL)supported
{
  v7 = +[VUIGDPRPresentationManager shouldShowWelcomeScreen];
  if ((v7 & 1) != 0 || sheet)
  {
    v9 = VUIDefaultLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - handleAMSEngagementPresentationSheet additional requirements to show sheet not met.", location, 2u);
    }
  }

  else
  {
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke;
    aBlock[3] = &unk_1E872E508;
    objc_copyWeak(&v14, location);
    supportedCopy = supported;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    if (_os_feature_enabled_impl())
    {
      [VUILocalNotificationService authorizationStatusWithCompletionHandler:v8];
    }

    else
    {
      vuiNotificationCenter = [MEMORY[0x1E6983308] vuiNotificationCenter];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_42;
      v11[3] = &unk_1E872E530;
      v12 = v8;
      [vuiNotificationCenter getNotificationSettingsWithCompletionHandler:v11];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

void __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke(uint64_t a1, void *a2)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_2;
  v9 = &unk_1E872E4E0;
  objc_copyWeak(v11, (a1 + 40));
  v12 = *(a1 + 48);
  v4 = *(a1 + 32);
  v11[1] = a2;
  v10 = v4;
  v5 = &v6;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(v11);
}

void __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - handleAMSEngagementPresentationSheet being called", &v27, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"KettleShouldStopShowingAMSSheet"];

  if (!*(a1 + 48) && (v5 & 1) == 0 && ([WeakRetained hasAppLostConnectivity] & 1) == 0 && (objc_msgSend(WeakRetained, "isAnotherSheetShowingToUser") & 1) == 0)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:@"KettleNumberOfAppLaunch"];

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v7, "intValue") + 1}];
    v9 = VUIDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v8;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Total number of launches: %@", &v27, 0xCu);
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setValue:v8 forKey:@"KettleNumberOfAppLaunch"];

    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v8 intValue];
    v13 = [WeakRetained firstPromptLaunchNumberAfterGDPR];
    if (v13 == v12)
    {
      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v14 setObject:v11 forKey:@"KettleFirstPromptTimestamp"];

      if ((*(a1 + 56) & 1) == 0)
      {
        v15 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v15 setBool:1 forKey:@"KettleShouldStopShowingAMSSheet"];
      }

      v13 = [*(a1 + 32) _showNotificationAuthorizationSheet];
    }

    else if (*(a1 + 56) == 1)
    {
      v16 = [MEMORY[0x1E695E000] standardUserDefaults];
      v17 = [v16 objectForKey:@"KettleFirstPromptTimestamp"];

      [v17 timeIntervalSince1970];
      v19 = v18;
      [v11 timeIntervalSince1970];
      v21 = v20;
      LODWORD(v16) = [v8 intValue];
      v22 = [WeakRetained lastPromptLaunchNumberAfterGDPR];
      if (v22 <= v16 && v19 > 0.0 && v21 - v19 >= 259200.0)
      {
        v23 = VUIDefaultLogObject(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Reprompting for the notification sheet for the last time.", &v27, 2u);
        }

        v24 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v24 setBool:1 forKey:@"KettleShouldStopShowingAMSSheet"];

        [*(a1 + 32) _showNotificationAuthorizationSheet];
      }
    }

    v25 = VUIDefaultLogObject(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [*(a1 + 32) lastTabIdentifier];
      v27 = 138412290;
      v28 = v26;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Current tab identifier:%@", &v27, 0xCu);
    }
  }
}

uint64_t __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 authorizationStatus];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)_handleTabBarChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKey:@"VUIMetricsTabBarItemNotificationKey"];
  [(VUIUserEngagementSheetLauncher *)self setLastTabIdentifier:v4];
}

- (void)_showNotificationAuthorizationSheet
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698CBD0]);
  [v3 setAuthorizationOptions:7];
  v4 = +[VUIAuthenticationManager DSID];
  v16[0] = @"pageContext";
  lastTabIdentifier = [(VUIUserEngagementSheetLauncher *)self lastTabIdentifier];
  v6 = lastTabIdentifier;
  v7 = &stru_1F5DB25C0;
  if (lastTabIdentifier)
  {
    v8 = lastTabIdentifier;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  v17[0] = v8;
  v17[1] = @"xp_amp_tv_main";
  v16[1] = @"topic";
  v16[2] = @"dsId";
  if (v4)
  {
    v7 = v4;
  }

  v17[2] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  [v3 setMetricsOverlay:v9];
  v10 = objc_alloc(MEMORY[0x1E698CBD8]);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v13 = [v10 initWithBundleIdentifier:bundleIdentifier options:v3];

  [v13 setDelegate:self];
  requestAuthorization = [v13 requestAuthorization];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__VUIUserEngagementSheetLauncher__showNotificationAuthorizationSheet__block_invoke;
  v15[3] = &unk_1E872E558;
  v15[4] = self;
  [requestAuthorization addFinishBlock:v15];
}

void __69__VUIUserEngagementSheetLauncher__showNotificationAuthorizationSheet__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 localizedDescription];
    v9 = [v6 code];
    v10 = [*(a1 + 32) lastTabIdentifier];
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Promise result. Error description:%@; error code:%ld; tab identifier:%@", &v12, 0x20u);
  }

  if (v5)
  {
    [*(a1 + 32) _handleUserNotificationAction:{objc_msgSend(v5, "authorizationStatus")}];
  }

  else if ([v6 code] == 11)
  {
    v11 = VUIDefaultLogObject(11);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - User has already granted or denied notification authorization", &v12, 2u);
    }

    [*(a1 + 32) _deleteKeysUsedForSheetPresentation];
  }
}

- (void)_deleteKeysUsedForSheetPresentation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"KettleNumberOfAppLaunch"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"KettleFirstPromptTimestamp"];
}

- (void)_handleUserNotificationAction:(int64_t)action
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    actionCopy = action;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - User notification authorization status:%ld", &v6, 0xCu);
  }

  if ((action - 1) <= 1)
  {
    [(VUIUserEngagementSheetLauncher *)self _deleteKeysUsedForSheetPresentation];
  }
}

- (BOOL)isAnotherSheetShowingToUser
{
  v2 = +[VUITVAppLauncher sharedInstance];
  appController = [v2 appController];

  v4 = +[VUIApplicationRouter topPresentedViewController];
  presentedViewController = [v4 presentedViewController];
  if (presentedViewController)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[VUIApplicationRouter currentNavigationController];
    presentedViewController2 = [v7 presentedViewController];
    if (presentedViewController2)
    {
      v6 = 1;
    }

    else
    {
      navigationController = [appController navigationController];
      presentedViewController3 = [navigationController presentedViewController];
      v6 = presentedViewController3 != 0;
    }
  }

  return v6;
}

- (void)handleEngagementRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__VUIUserEngagementSheetLauncher_handleEngagementRequest_completion___block_invoke;
  v9[3] = &unk_1E872E580;
  v10 = requestCopy;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __69__VUIUserEngagementSheetLauncher_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E698CCD0]);
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v6 = [v3 initWithRequest:v4 bag:v5 presentingViewController:v2];

    v7 = [v6 presentEngagement];
    [v7 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    v8 = VUIDefaultLogObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - failed to handle dialog request because there is no presenting view controller", v9, 2u);
    }
  }
}

@end