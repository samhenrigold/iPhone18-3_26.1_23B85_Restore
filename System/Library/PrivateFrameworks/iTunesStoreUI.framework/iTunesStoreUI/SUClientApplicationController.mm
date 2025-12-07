@interface SUClientApplicationController
+ (id)sharedController;
+ (void)setSharedController:(id)controller;
- (BOOL)_displayClientURL:(id)l;
- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block;
- (BOOL)_reloadForStorefrontChange;
- (BOOL)_showWildcatAccountViewController:(id)controller animated:(BOOL)animated;
- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated;
- (BOOL)displayClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string;
- (BOOL)openClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string;
- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated;
- (NSString)defaultPNGNameForSuspend;
- (SUClientApplicationController)initWithClientInterface:(id)interface;
- (SUTabBarController)tabBarController;
- (UINavigationController)topNavigationController;
- (double)defaultImageSnapshotExpiration;
- (id)_accountViewController;
- (id)_newTabBarController;
- (id)_previewOverlayViewController;
- (id)_resumableViewController;
- (id)_showPageForExternalOriginatedURLBagKey:(id)key;
- (id)previewOverlayForClientInterface:(id)interface;
- (id)showMainPageForItemKind:(id)kind sectionIdentifiers:(id)identifiers;
- (void)_accountControllerDisappearedNotification:(id)notification;
- (void)_cancelLoadSectionsOperation;
- (void)_cancelSectionFetchPlaceholder;
- (void)_cancelSuspendAfterDialogsDismissed;
- (void)_defaultHandleApplicationURLRequestProperties:(id)properties;
- (void)_dialogDidFinishNotification:(id)notification;
- (void)_handleAccountURL:(id)l;
- (void)_handleAddPassbookPassURL:(id)l;
- (void)_handleDonationURL:(id)l;
- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)operation;
- (void)_handleFinishedLoadSectionsOperation:(id)operation;
- (void)_handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL;
- (void)_handleSectionsLoadFailedWithError:(id)error;
- (void)_openClientURL:(id)l;
- (void)_presentSectionFetchUI;
- (void)_reloadWithSectionsResponse:(id)response;
- (void)_restorePreMediaPlayerSettings;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_retrySectionsAfterNetworkTransition;
- (void)_selectFooterSectionNotification:(id)notification;
- (void)_setActiveMediaPlayer:(id)player;
- (void)_setupTabBarController;
- (void)_showPreviewOverlayAnimated:(BOOL)animated;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)bagDidLoadNotification:(id)notification;
- (void)becomeActive;
- (void)cancelAllOperations;
- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated;
- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated;
- (void)dealloc;
- (void)endIgnoringDownloadQueueChanges;
- (void)exitStoreAfterDialogsDismiss;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)prepareUserInterface;
- (void)presentExternalURLViewController:(id)controller;
- (void)resignActive;
- (void)setExitStoreButtonTitle:(id)title;
- (void)setupUI;
- (void)tearDownUI;
@end

@implementation SUClientApplicationController

- (SUClientApplicationController)initWithClientInterface:(id)interface
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SUClientApplicationController;
  v4 = [(SUClientController *)&v21 initWithClientInterface:?];
  if (v4)
  {
    v5 = +[SUSectionsResponse lastCachedVersionIdentifier];
    if (v5)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      v8 = -[SUSectionsResponse initWithClientInterface:cacheDirectory:]([SUSectionsResponse alloc], "initWithClientInterface:cacheDirectory:", interface, [+[SUSectionsResponse sectionsCacheDirectory](SUSectionsResponse "sectionsCacheDirectory")]);
      v4->_lastSectionsResponse = v8;
      if (v8)
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          LODWORD(v11) = shouldLog | 2;
        }

        else
        {
          LODWORD(v11) = shouldLog;
        }

        oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v11;
        }

        else
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v13 = objc_opt_class();
          v14 = CFAbsoluteTimeGetCurrent();
          v22 = 138412546;
          v23 = v13;
          v24 = 2048;
          v25 = v14 - Current;
          v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Loaded cached footer sections: [%.2fs]", &v22, 22);
          if (v15)
          {
            v16 = v15;
            v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
            free(v16);
            v20 = v17;
            SSFileLog();
          }
        }
      }
    }

    v4->_shouldPrepareUserInterfaceWhenActivated = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__selectFooterSectionNotification_ name:*MEMORY[0x1E69E46F8] object:0];
    [defaultCenter addObserver:v4 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [defaultCenter addObserver:v4 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];
    [defaultCenter addObserver:v4 selector:sel__accountControllerDisappearedNotification_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46F8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];

  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  [(SUTabBarController *)self->_tabBarController setDelegate:0];

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 dealloc];
}

+ (void)setSharedController:(id)controller
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  objc_msgSendSuper2(&v3, sel_setSharedController_, controller);
}

+ (id)sharedController
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  return objc_msgSendSuper2(&v3, sel_sharedController);
}

- (double)defaultImageSnapshotExpiration
{
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  if (self->_reloadSectionsOnNextLaunch)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];

    [distantPast timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = v3;
    if ([(SUClientApplicationController *)self isTabBarControllerLoaded]&& (v7 = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController], (objc_opt_respondsToSelector() & 1) != 0))
    {

      [(UIViewController *)v7 defaultPNGExpirationTime];
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (NSString)defaultPNGNameForSuspend
{
  v3 = [-[SUClientApplicationController _resumableViewController](self "_resumableViewController")];

  self->_preMediaDefaultPNG = 0;
  _activeMediaPlayer = [(SUClientApplicationController *)self _activeMediaPlayer];
  if (!_activeMediaPlayer)
  {
    return v3;
  }

  v5 = _activeMediaPlayer;
  self->_preMediaDefaultPNG = v3;

  return [(SUMediaPlayerViewController *)v5 defaultPNGName];
}

- (void)endIgnoringDownloadQueueChanges
{
  ignoreDownloadQueueChangeCount = self->_ignoreDownloadQueueChangeCount;
  v3 = ignoreDownloadQueueChangeCount == 1;
  v4 = ignoreDownloadQueueChangeCount < 1;
  v5 = ignoreDownloadQueueChangeCount - 1;
  if (!v4)
  {
    self->_ignoreDownloadQueueChangeCount = v5;
    if (v3)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"SUClientDidStopIgnoringDownloadQueueNotification" object:self];
    }
  }
}

- (void)exitStoreAfterDialogsDismiss
{
  if ([+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [(SUClientApplicationController *)self _cancelSuspendAfterDialogsDismissed];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter addObserver:self selector:sel__dialogDidFinishNotification_ name:@"SUDialogDidFinishNotification" object:0];
  }

  else
  {

    [(SUClientController *)self exitStoreWithReason:0];
  }
}

- (void)prepareUserInterface
{
  [(SUClientApplicationController *)self tabBarController];

  [(SUClientApplicationController *)self _setupTabBarController];
}

- (void)setExitStoreButtonTitle:(id)title
{
  exitStoreButtonTitle = self->_exitStoreButtonTitle;
  if (exitStoreButtonTitle != title && ![(NSString *)exitStoreButtonTitle isEqualToString:?])
  {

    self->_exitStoreButtonTitle = [title copy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUClientExitStoreButtonDidChangeNotification" object:self];
  }
}

- (void)setupUI
{
  self->_preMediaDefaultPNG = 0;
  launchURL = self->_launchURL;
  if (launchURL)
  {
    v4 = launchURL;

    self->_launchURL = 0;
    [(SUClientApplicationController *)self _openClientURL:v4];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {

    [(SUClientController *)self composeEmailByRestoringAutosavedMessage];
  }
}

- (id)showMainPageForItemKind:(id)kind sectionIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69E47F0] storeFrontURLBagKeyForItemKind:kind];
  if (v6)
  {

    return [(SUClientApplicationController *)self _showPageForExternalOriginatedURLBagKey:v6];
  }

  else
  {
    tabBarController = [(SUClientApplicationController *)self tabBarController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(identifiers);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if ([(SUTabBarController *)tabBarController viewControllerForSectionIdentifier:v12])
          {
            [(SUTabBarController *)tabBarController setSelectedIdentifier:v12];
            return [(SUTabBarController *)tabBarController selectedViewController];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        result = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (SUTabBarController)tabBarController
{
  tabBarController = self->_tabBarController;
  if (!tabBarController)
  {
    tabBarController = [(SUClientApplicationController *)self _newTabBarController];
    self->_tabBarController = tabBarController;
    if (!self->super._rootViewController)
    {
      [(SUClientController *)self setRootViewController:tabBarController];
      return self->_tabBarController;
    }
  }

  return tabBarController;
}

- (void)tearDownUI
{
  [(SUClientApplicationController *)self _cancelSuspendAfterDialogsDismissed];
  tabBarController = self->_tabBarController;
  if (self->super._rootViewController == tabBarController)
  {
    [(SUClientController *)self setRootViewController:0];
    tabBarController = self->_tabBarController;
  }

  [(SUTabBarController *)tabBarController setDelegate:0];
  if ([(SUTabBarController *)self->_tabBarController isViewLoaded])
  {
    [-[SUTabBarController view](self->_tabBarController "view")];
  }

  self->_tabBarController = 0;
}

- (UINavigationController)topNavigationController
{
  transientViewController = [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] transientViewController];
  if (!transientViewController)
  {
    transientViewController = [(UITabBarController *)[(SUClientApplicationController *)self tabBarController] selectedNavigationController];
  }

  for (i = transientViewController; [(UINavigationController *)i presentedViewController]; transientViewController = i)
  {
    i = [(UINavigationController *)transientViewController presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return transientViewController;
  }

  return [(UINavigationController *)transientViewController navigationController];
}

- (void)becomeActive
{
  isActive = [(SUClientController *)self isActive];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 becomeActive];
  if (!isActive && ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    if ([(SUClientApplicationController *)self shouldPrepareUserInterfaceWhenActivated])
    {
      [(SUClientApplicationController *)self _setupTabBarController];
    }
  }
}

- (void)cancelAllOperations
{
  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
  v3.receiver = self;
  v3.super_class = SUClientApplicationController;
  [(SUClientController *)&v3 cancelAllOperations];
}

- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topViewController = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  [(UIViewController *)topViewController dismissAnimated:animatedCopy];
  return topViewController != 0;
}

- (BOOL)displayClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string
{
  storeURLType = [l storeURLType];
  v10 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (storeURLType != 1 || v10 == 1)
  {
    switch(storeURLType)
    {
      case 4:
        [(SUClientApplicationController *)self _handleAddPassbookPassURL:l];
        break;
      case 3:
        [(SUClientApplicationController *)self _handleDonationURL:l];
        break;
      case 2:
        [(SUClientApplicationController *)self _handleAccountURL:l];
        break;
      default:
        v12 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{objc_msgSend(l, "schemeSwizzledURL")}];
        [v12 setValue:string forHTTPHeaderField:@"referer"];
        [v12 setValue:application forHTTPHeaderField:@"ref-user-agent"];
        [(SUClientApplicationController *)self _defaultHandleApplicationURLRequestProperties:v12];

        break;
    }
  }

  else
  {
    [(SUClientApplicationController *)self _handleSearchURL:l withSourceApplication:application sourceURL:string];
  }

  return 1;
}

- (BOOL)openClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string
{
  v9 = ISUIMobileStoreUIFramework(self, a2);
  v10 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v9))];
  [v10 setReferrerApplicationName:application];
  [v10 setReferrerURLString:string];
  if (self->_lastSectionsResponse)
  {
    v11 = [(SUClientApplicationController *)self _displayClientURL:v10];
  }

  else
  {

    self->_launchURL = v10;
    v11 = 1;
  }

  return v11;
}

- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  v9 = [[SUNavigationController alloc] initWithRootViewController:controller];
  -[SUNavigationController setClientInterface:](v9, "setClientInterface:", [controller clientInterface]);
  [(SUNavigationController *)v9 setNavigationBarHidden:!barCopy];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    v10 = [(SUClientApplicationController *)self _showWildcatAccountViewController:v9 animated:animatedCopy];
  }

  else
  {
    for (i = [(SUClientApplicationController *)self tabBarController]; ; i = [(SUTabBarController *)v12 presentedViewController])
    {
      v12 = i;
      if (![(SUTabBarController *)i presentedViewController])
      {
        break;
      }
    }

    [(UIViewController *)v12 transitionSafePresentModalViewController:v9 animated:animatedCopy];
    v10 = v12 != 0;
  }

  return v10;
}

- (void)presentExternalURLViewController:(id)controller
{
  objc_opt_class();
  controllerCopy = controller;
  if (objc_opt_isKindOfClass())
  {
    controllerCopy = [controller topViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(SUClientController *)self overlayConfigurationForStorePage:controllerCopy]) != 0)
  {
    v7 = v6;
    tabBarController = [(SUClientApplicationController *)self tabBarController];

    [(UIViewController *)tabBarController presentViewController:controller inOverlayWithConfiguration:v7];
  }

  else
  {
    tabBarController2 = [(SUClientApplicationController *)self tabBarController];
    [(SUTabBarController *)tabBarController2 setTransientViewController:controller animated:0];
    if ([(SUTabBarController *)tabBarController2 presentedViewController])
    {

      [(SUTabBarController *)tabBarController2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)resignActive
{
  if ([(SUClientController *)self isActive])
  {
    [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
    if (self->super._mailComposeViewController)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = *MEMORY[0x1E69DDBE8];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__SUClientApplicationController_resignActive__block_invoke;
      v7[3] = &unk_1E8164320;
      v7[4] = &v8;
      v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v7];
      v9[3] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__SUClientApplicationController_resignActive__block_invoke_2;
      v6[3] = &unk_1E8164320;
      v6[4] = &v8;
      [(SUClientController *)self autosaveMessageWithCompletionBlock:v6];
      _Block_object_dispose(&v8, 8);
    }

    if (self->_lastSectionsResponse)
    {
      [(SUTabBarController *)self->_tabBarController saveToDefaults];
    }
  }

  v5.receiver = self;
  v5.super_class = SUClientApplicationController;
  [(SUClientController *)&v5 resignActive];
}

void *__45__SUClientApplicationController_resignActive__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

void *__45__SUClientApplicationController_resignActive__block_invoke_2(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

- (id)_newTabBarController
{
  v3 = [[SUTabBarController alloc] initWithClientInterface:[(SUClientController *)self clientInterface]];
  [(SUTabBarController *)v3 setDelegate:self];
  view = [(SUTabBarController *)v3 view];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [view setFrame:?];
  if ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG])
  {
    v5 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
    [v5 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
    v6 = [[SUNavigationController alloc] initWithRootViewController:v5];
    [(SUNavigationController *)v6 setClientInterface:[(SUClientController *)self clientInterface]];
    [(SUTabBarController *)v3 setTransientViewController:v6];
  }

  return v3;
}

- (void)_restorePreMediaPlayerSettings
{
  if (self->_preMediaDefaultPNG)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v3 initWithObjectsAndKeys:{self->_preMediaDefaultPNG, *MEMORY[0x1E69DEBA0], 0}];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

    self->_preMediaDefaultPNG = 0;
  }
}

- (void)_setActiveMediaPlayer:(id)player
{
  activeMediaPlayer = self->_activeMediaPlayer;
  if (activeMediaPlayer != player)
  {

    playerCopy = player;
    self->_activeMediaPlayer = playerCopy;
    if (!playerCopy)
    {

      [(SUClientApplicationController *)self _restorePreMediaPlayerSettings];
    }
  }
}

- (id)_showPageForExternalOriginatedURLBagKey:(id)key
{
  v5 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v5 setURLBagKey:key];
  v6 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v6 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v6 setExternalRequest:1];
  [v6 setURLRequestProperties:v5];
  v7 = [[SUNavigationController alloc] initWithRootViewController:v6];
  [(SUNavigationController *)v7 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v7];

  return v6;
}

- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated
{
  if (self->_previewOverlay)
  {
    animatedCopy = animated;
    tabBarController = [(SUClientApplicationController *)self tabBarController];

    [(SUTabBarController *)tabBarController _hidePreviewOverlayAnimated:animatedCopy];
  }
}

- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v35 = *MEMORY[0x1E69E9840];
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];
  if ([_previewOverlayViewController isContentLoaded])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v31 = 138412546;
      v32 = objc_opt_class();
      v33 = 2112;
      v34 = _previewOverlayViewController;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Showing already-loaded preview overlay: %@", &v31, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
        free(v12);
        v28 = v13;
        SSFileLog();
      }
    }

    [(SUClientApplicationController *)self _showPreviewOverlayAnimated:animatedCopy, v28];
  }

  else
  {
    isSkLoaded = [_previewOverlayViewController isSkLoaded];
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
    v19 = oSLogObject2;
    if (isSkLoaded)
    {
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v17;
      }

      else
      {
        v20 = v17 & 2;
      }

      if (v20)
      {
        v31 = 138412290;
        v32 = objc_opt_class();
        v21 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &dword_1C21AF000, v19, 0, "%@: Ignoring preview overlay show, already loading", &v31, 12);
        if (v21)
        {
          v22 = v21;
          [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
          free(v22);
          SSFileLog();
        }
      }
    }

    else
    {
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v23 = v17;
      }

      else
      {
        v23 = v17 & 2;
      }

      if (v23)
      {
        v31 = 138412290;
        v32 = objc_opt_class();
        v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1C21AF000, v19, 2, "%@: Loading preview overlay", &v31, 12);
        if (v24)
        {
          v25 = v24;
          v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
          free(v25);
          v28 = v26;
          SSFileLog();
        }
      }

      v27 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:{self, v28}];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76__SUClientApplicationController_clientInterface_showPreviewOverlayAnimated___block_invoke;
      v29[3] = &unk_1E8166DF8;
      v29[4] = v27;
      v30 = animatedCopy;
      [_previewOverlayViewController loadWithCompletionBlock:v29];
    }
  }
}

id *__76__SUClientApplicationController_clientInterface_showPreviewOverlayAnimated___block_invoke(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] object];
    v4 = *(v2 + 40);

    return [v3 _showPreviewOverlayAnimated:v4];
  }

  return result;
}

- (id)previewOverlayForClientInterface:(id)interface
{
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];

  return _previewOverlayViewController;
}

- (void)passbookLoaderDidFinish:(id)finish
{
  passbookLoader = self->_passbookLoader;
  if (passbookLoader == finish)
  {
    [(SUUIPassbookLoader *)passbookLoader setDelegate:0];

    self->_passbookLoader = 0;
  }
}

- (void)_accountControllerDisappearedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_reloadForStorefrontChangeAfterAccountSetup)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v6) = shouldLog | 2;
    }

    else
    {
      LODWORD(v6) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Reloading for storefront change after account dismissal", &v12, 12);
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    self->_reloadForStorefrontChangeAfterAccountSetup = 0;
    [(SUClientApplicationController *)self _reloadForStorefrontChange];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)bagDidLoadNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SUClientApplicationController *)self _accountViewController])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Ignoring bag load since account UI is visible", &v17, 12);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v10);
        v15 = v11;
        SSFileLog();
      }
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v13 = [objc_msgSend(mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"platform-gradients"}];
  objc_opt_class();
  v14 = 0;
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 objectForKey:{-[SUClientController clientIdentifier](self, "clientIdentifier")}];
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v16.receiver = self;
  v16.super_class = SUClientApplicationController;
  [(SUClientController *)&v16 bagDidLoadNotification:notification];
}

- (void)_dialogDidFinishNotification:(id)notification
{
  if (![+[SUDialogManager numberOfPendingDialogs:notification]])
  {

    [(SUClientController *)self exitStoreWithReason:0];
  }
}

- (void)_restrictionsChangedNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SUClientApplicationController__restrictionsChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__66__SUClientApplicationController__restrictionsChangedNotification___block_invoke(void *result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(result[4] + 160))
  {
    v1 = result;
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v6 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 2, "%@: Reloading sections after restrictions change", &v10, 12);
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
        free(v7);
        v9 = v8;
        SSFileLog();
      }
    }

    return [*(v1[4] + 216) setSections:{objc_msgSend(*(v1[4] + 160), "sections", v9)}];
  }

  return result;
}

- (void)_selectFooterSectionNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69E46F0]];
  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v8) = shouldLog | 2;
      }

      else
      {
        LODWORD(v8) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v5;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Selecting section in response to notification: %@", &v14, 22);
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
          free(v11);
          v13 = v12;
          SSFileLog();
        }
      }

      [(SUTabBarController *)self->_tabBarController setSelectedIdentifier:v5, v13];
    }
  }
}

- (void)_storeFrontChangedNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SUClientApplicationController__storeFrontChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__SUClientApplicationController__storeFrontChangedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] == 2)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    result = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      result = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 2, "%@: Ignoring storefront change while in the background", &v14, 12);
      if (result)
      {
        v7 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:4];
        free(v7);
        return SSFileLog();
      }
    }
  }

  else if ([*(a1 + 32) _accountViewController])
  {
    v8 = [MEMORY[0x1E69D4938] sharedConfig];
    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = v9 | 2;
    }

    else
    {
      LODWORD(v10) = v9;
    }

    v11 = [v8 OSLogObject];
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      result = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1C21AF000, v11, 2, "%@: Pending reacting to storefront change until account sheet is dismissed", &v14, 12);
      if (result)
      {
        v12 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:4];
        free(v12);
        result = SSFileLog();
      }
    }

    *(*(a1 + 32) + 208) = 1;
  }

  else
  {
    v13 = *(a1 + 32);

    return [v13 _reloadForStorefrontChange];
  }

  return result;
}

- (void)_cancelLoadSectionsOperation
{
  [(ISOperation *)self->_loadSectionsOperation setCompletionBlock:0];
  [(ISOperation *)self->_loadSectionsOperation cancel];

  self->_loadSectionsOperation = 0;
}

- (void)_cancelSectionFetchPlaceholder
{
  [(SUPlaceholderViewController *)self->_fetchSectionsPlaceholder setSkLoading:0];

  self->_fetchSectionsPlaceholder = 0;
}

- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)operation
{
  v16 = *MEMORY[0x1E69E9840];
  sectionsResponse = [operation sectionsResponse];

  self->_lastBackgroundSectionsResponse = 0;
  if ([operation success] && objc_msgSend(sectionsResponse, "responseType") == 1 && (objc_msgSend(objc_msgSend(sectionsResponse, "versionString"), "isEqualToString:", -[SUSectionsResponse versionString](self->_lastSectionsResponse, "versionString")) & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Saw footer version change, will reload on next launch", &v14, 12);
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    self->_lastBackgroundSectionsResponse = sectionsResponse;
    self->_reloadSectionsOnNextLaunch = 1;
  }

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
}

- (void)_handleFinishedLoadSectionsOperation:(id)operation
{
  if ([operation success])
  {
    sectionsResponse = [operation sectionsResponse];
    if ([objc_msgSend(sectionsResponse "sections")])
    {
      [(SUClientApplicationController *)self _reloadWithSectionsResponse:sectionsResponse];
      goto LABEL_7;
    }

    selfCopy2 = self;
    error = 0;
  }

  else
  {
    error = [operation error];
    selfCopy2 = self;
  }

  [(SUClientApplicationController *)selfCopy2 _handleSectionsLoadFailedWithError:error];
LABEL_7:

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
}

- (void)_handleSectionsLoadFailedWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  if (ISErrorIndicatesSlowNetwork())
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%@: Ignoring sections failure due to slow network", &v15, 12);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v10);
        v14 = v11;
        SSFileLog();
      }
    }

    [+[SUDialogManager presentDialogForError:v14], "presentDialogForError:", error];
    [(SUClientApplicationController *)self _retrySectionsAfterNetworkTransition];
  }

  else
  {
    transientViewController = [(SUTabBarController *)self->_tabBarController transientViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transientViewController = [transientViewController topViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      [transientViewController setSkLoading:0];
    }

    v13 = +[SUDialogManager sharedInstance];
    if (![(SUDialogManager *)v13 numberOfPendingDialogs])
    {
      if (!error)
      {
        error = ISError();
      }

      [(SUDialogManager *)v13 presentDialogForError:error];
    }

    [(SUClientApplicationController *)self exitStoreAfterDialogsDismiss];
  }
}

- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block
{
  loadSectionsOperation = self->_loadSectionsOperation;
  if (!loadSectionsOperation)
  {
    cacheCopy = cache;
    v8 = [[SULoadSectionsOperation alloc] initWithClientInterface:[(SUClientController *)self clientInterface]];
    [(SULoadSectionsOperation *)v8 setActiveSectionVersionString:[(SUSectionsResponse *)self->_lastSectionsResponse versionString]];
    [(SULoadSectionsOperation *)v8 setCompletionBlock:block];
    [(SULoadSectionsOperation *)v8 setShouldUseCache:cacheCopy];
    self->_loadSectionsOperation = &v8->super;
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
  }

  return loadSectionsOperation == 0;
}

- (void)_presentSectionFetchUI
{
  v3 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  self->_fetchSectionsPlaceholder = v3;
  [(SUViewController *)v3 setClientInterface:[(SUClientController *)self clientInterface]];
  v4 = [[SUNavigationController alloc] initWithRootViewController:self->_fetchSectionsPlaceholder];
  [(SUNavigationController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUPlaceholderViewController *)self->_fetchSectionsPlaceholder setSkLoading:1];
  [(SUTabBarController *)self->_tabBarController setTransientViewController:v4 animated:0];
}

- (BOOL)_reloadForStorefrontChange
{
  if (self->_loadSectionsOperation)
  {
    return 1;
  }

  v6[7] = v2;
  v6[8] = v3;
  [(SUTabBarController *)self->_tabBarController saveToDefaults];
  [(SUTabBarController *)self->_tabBarController dismissViewControllerAnimated:0 completion:0];
  [(SUTabBarController *)self->_tabBarController setViewControllers:0];
  [(SUClientApplicationController *)self _presentSectionFetchUI];

  self->_lastBackgroundSectionsResponse = 0;
  self->_lastSectionsResponse = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke;
  v6[3] = &unk_1E8164348;
  v6[4] = self;
  return [(SUClientApplicationController *)self _loadSectionsAllowingCache:0 withCompletionBlock:v6];
}

void __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_reloadWithSectionsResponse:(id)response
{
  lastSectionsResponse = self->_lastSectionsResponse;
  if (lastSectionsResponse != response)
  {

    self->_lastSectionsResponse = response;
  }

  [(SUTabBarController *)self->_tabBarController setTransientViewController:0 animated:0];
  [(SUTabBarController *)self->_tabBarController setSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
  [(SUTabBarController *)self->_tabBarController setMoreListSelectedImage:[(SUSectionsResponse *)self->_lastSectionsResponse moreListSelectedImage] unselectedImage:[(SUSectionsResponse *)self->_lastSectionsResponse moreListImage]];
  [(SUTabBarController *)self->_tabBarController setMoreListTitle:[(SUSectionsResponse *)self->_lastSectionsResponse moreListTitle]];
  lastBackgroundSectionsResponse = self->_lastBackgroundSectionsResponse;
  if (!lastBackgroundSectionsResponse || ![(NSString *)[(SUSectionsResponse *)lastBackgroundSectionsResponse versionString] isEqualToString:[(SUSectionsResponse *)self->_lastSectionsResponse versionString]])
  {
    if (![(SUSectionsResponse *)self->_lastSectionsResponse shouldResetUserOrdering]|| ![(SUSectionsResponse *)self->_lastSectionsResponse responseType])
    {
      goto LABEL_10;
    }

LABEL_9:
    [(SUTabBarController *)self->_tabBarController selectDefaultSection];
    [(SUTabBarController *)self->_tabBarController resetUserDefaults];
    goto LABEL_11;
  }

  if ([(SUSectionsResponse *)self->_lastBackgroundSectionsResponse shouldResetUserOrdering])
  {
    goto LABEL_9;
  }

LABEL_10:
  [(SUTabBarController *)self->_tabBarController loadFromDefaults];
LABEL_11:

  self->_lastBackgroundSectionsResponse = 0;

  [(SUClientApplicationController *)self setupUI];
}

- (void)_retrySectionsAfterNetworkTransition
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_lastSectionsResponse && [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")] >= 1)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Retrying sections load after network transition", &v12, 12);
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
        free(v8);
        v10 = v9;
        SSFileLog();
      }
    }

    [(SUClientApplicationController *)self _presentSectionFetchUI];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke;
    v11[3] = &unk_1E8164348;
    v11[4] = self;
    [(SUClientApplicationController *)self _loadSectionsAllowingCache:1 withCompletionBlock:v11];
  }
}

void __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_defaultHandleApplicationURLRequestProperties:(id)properties
{
  v5 = [-[SUTabBarController selectedViewController](-[SUClientApplicationController tabBarController](self "tabBarController")];
  v7 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v7 setExternalRequest:1];
  [v7 setURLRequestProperties:properties];
  v6 = [[SUNavigationController alloc] initWithSection:v5 rootViewController:v7];
  [(SUNavigationController *)v6 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v6];
}

- (void)_handleAccountURL:(id)l
{
  v4 = [[SUAccountViewController alloc] initWithExternalAccountURL:l];
  [(SUViewController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientController *)self presentAccountViewController:v4 animated:1];
}

- (void)_handleAddPassbookPassURL:(id)l
{
  passbookLoader = self->_passbookLoader;
  if (!passbookLoader)
  {
    v6 = ISUIMobileStoreUIFramework(0, a2);
    v7 = ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v6);
    v9 = ISUIMobileStoreUIFramework(v7, v8);
    v10 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuipassbooklo.isa v9))];
    self->_passbookLoader = v10;
    [(SUUIPassbookLoader *)v10 setDelegate:self];
    passbookLoader = self->_passbookLoader;
  }

  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:l];
}

- (void)_handleDonationURL:(id)l
{
  v5 = ISUIMobileStoreUIFramework(self, a2);
  v11 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v5))];
  v7 = ISUIMobileStoreUIFramework(v11, v6);
  v8 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuidonationvi.isa v7))];
  v10 = ISUIMobileStoreUIFramework(v8, v9);
  [v8 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v10), "defaultContext")}];
  [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] presentViewController:v8 animated:1 completion:0];
}

- (void)_handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL
{
  v23 = *MEMORY[0x1E69E9840];
  tabBarController = [(SUClientApplicationController *)self tabBarController];
  sections = [(SUTabBarController *)tabBarController sections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSArray *)sections countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(sections);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      searchFieldConfiguration = [v15 searchFieldConfiguration];
      if (searchFieldConfiguration)
      {
        if ([searchFieldConfiguration location] != 2)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)sections countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    -[SUTabBarController setSelectedIdentifier:](tabBarController, "setSelectedIdentifier:", [v15 identifier]);
  }

  else
  {
LABEL_13:
    [(SUTabBarController *)tabBarController selectSectionOfType:1];
  }

  topViewController = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:withSourceApplication:sourceURL:](topViewController, "handleApplicationURL:withSourceApplication:sourceURL:", [l schemeSwizzledURL], application, rL);
  }

  else if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:](topViewController, "handleApplicationURL:", [l schemeSwizzledURL]);
  }
}

- (id)_accountViewController
{
  presentedViewController = [(SUTabBarController *)self->_tabBarController presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [objc_msgSend(-[SUTabBarController overlayBackgroundViewController](self->_tabBarController "overlayBackgroundViewController")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [presentedViewController topViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return presentedViewController;
  }

  else
  {
    return 0;
  }
}

- (void)_cancelSuspendAfterDialogsDismissed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
}

- (BOOL)_displayClientURL:(id)l
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_displayClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_displayClientURL_];
  underlyingURL = [l underlyingURL];
  if (v6 == v5)
  {
    referrerApplicationName = [l referrerApplicationName];
    referrerURLString = [l referrerURLString];

    return [(SUClientApplicationController *)self displayClientURL:underlyingURL withSourceApplication:referrerApplicationName sourceURLString:referrerURLString];
  }

  else
  {

    return [(SUClientController *)self displayClientURL:underlyingURL];
  }
}

- (void)_openClientURL:(id)l
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_openClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_openClientURL_];
  underlyingURL = [l underlyingURL];
  if (v6 == v5)
  {
    referrerApplicationName = [l referrerApplicationName];
    referrerURLString = [l referrerURLString];

    [(SUClientApplicationController *)self openClientURL:underlyingURL withSourceApplication:referrerApplicationName sourceURLString:referrerURLString];
  }

  else
  {

    [(SUClientController *)self openClientURL:underlyingURL];
  }
}

- (id)_previewOverlayViewController
{
  result = self->_previewOverlay;
  if (!result)
  {
    v4 = objc_alloc_init(SUPreviewOverlayViewController);
    self->_previewOverlay = v4;
    [(SUViewController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
    return self->_previewOverlay;
  }

  return result;
}

- (id)_resumableViewController
{
  selectedViewController = [(SUTabBarController *)self->_tabBarController selectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyArchivableContext = [selectedViewController copyArchivableContext];
    if (copyArchivableContext)
    {

      return selectedViewController;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  viewControllers = [selectedViewController viewControllers];
  v5 = [viewControllers count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  do
  {
    selectedViewController = [viewControllers objectAtIndex:v6 - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [selectedViewController copyArchivableContext]) != 0)
    {
    }

    else
    {
      selectedViewController = 0;
    }

    if (v6 < 2)
    {
      break;
    }

    --v6;
  }

  while (!selectedViewController);
  return selectedViewController;
}

- (void)_setupTabBarController
{
  v40 = *MEMORY[0x1E69E9840];
  tabBarController = [(SUClientApplicationController *)self tabBarController];
  if (![(SUClientController *)self storeFrontDidChangeSinceLastSuspend])
  {
    if (self->_reloadSectionsOnNextLaunch || (lastSectionsResponse = self->_lastSectionsResponse) == 0)
    {
      v12 = 1;
    }

    else
    {
      storeFrontIdentifier = [(SUSectionsResponse *)lastSectionsResponse storeFrontIdentifier];
      if (!-[NSString isEqualToString:](storeFrontIdentifier, "isEqualToString:", [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")]))
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          LODWORD(v28) = shouldLog | 2;
        }

        else
        {
          LODWORD(v28) = shouldLog;
        }

        oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v28 = v28;
        }

        else
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v38 = 138412290;
          v39 = objc_opt_class();
          v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Reloading for storefront change", &v38, 12);
          if (v30)
          {
            v31 = v30;
            v32 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
            free(v31);
            v33 = v32;
            SSFileLog();
          }
        }

        v11 = 0;
        goto LABEL_12;
      }

      v12 = 0;
    }

    v11 = 1;
    goto LABEL_19;
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v38 = 138412290;
    v39 = objc_opt_class();
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 2, "%@: Reloading for storefront change while suspended", &v38, 12);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v9);
      v33 = v10;
      SSFileLog();
    }
  }

  [objc_msgSend(MEMORY[0x1E69E47F8] sharedCache];
  v11 = 0;
LABEL_12:
  v12 = 1;
LABEL_19:
  self->_reloadSectionsOnNextLaunch = 0;
  standardUserDefaults = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  v16 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  if (v16 != standardUserDefaults && ([standardUserDefaults isEqual:v16] & 1) == 0)
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v38 = 138412290;
      v39 = v21;
      LODWORD(v35) = 12;
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 2, "%@: Ignoring saved navigation path after account change", &v38, v35);
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
        free(v23);
        v34 = v24;
        SSFileLog();
      }
    }

    [(SUTabBarController *)tabBarController resetToSystemDefaults];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    if (v12)
    {
      [+[SUNetworkObserver sharedInstance](SUNetworkObserver startNetworkAvailabilityTimer];
      [(SUTabBarController *)tabBarController dismissViewControllerAnimated:0 completion:0];
      [(SUTabBarController *)tabBarController setSections:0];
      [(SUClientApplicationController *)self _presentSectionFetchUI];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_4;
      v36[3] = &unk_1E8164348;
      v36[4] = self;
      [(SUClientApplicationController *)self _loadSectionsAllowingCache:v11 withCompletionBlock:v36];
    }

    else
    {
      if (![(SUTabBarController *)tabBarController sections])
      {
        [(SUTabBarController *)tabBarController loadFromDefaultsAndSetSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
        [(SUClientApplicationController *)self setupUI];
      }

      v25 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke;
      block[3] = &unk_1E8164348;
      block[4] = self;
      dispatch_after(v25, MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __55__SUClientApplicationController__setupTabBarController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_2;
  v3[3] = &unk_1E8164348;
  v3[4] = v1;
  return [v1 _loadSectionsAllowingCache:1 withCompletionBlock:v3];
}

void __55__SUClientApplicationController__setupTabBarController__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_3;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__SUClientApplicationController__setupTabBarController__block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_5;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __55__SUClientApplicationController__setupTabBarController__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];
  tabBarController = [(SUClientApplicationController *)self tabBarController];

  [(SUTabBarController *)tabBarController _showPreviewOverlay:_previewOverlayViewController animated:animatedCopy];
}

- (BOOL)_showWildcatAccountViewController:(id)controller animated:(BOOL)animated
{
  v19 = *MEMORY[0x1E69E9840];
  overlayBackgroundViewController = [-[SUTabBarController overlayBackgroundViewController](self->_tabBarController overlayBackgroundViewController];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [overlayBackgroundViewController countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(overlayBackgroundViewController);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      backViewController = [v11 backViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [backViewController topViewController];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [overlayBackgroundViewController countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (!v11)
    {
      goto LABEL_14;
    }

    [v11 setBackViewController:controller];
  }

  else
  {
LABEL_14:
    [(SUClientApplicationController *)self presentExternalURLViewController:controller];
  }

  return 1;
}

@end