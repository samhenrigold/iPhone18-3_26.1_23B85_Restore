@interface MusicStoreFlowScriptingClientController
+ (id)sharedScriptingClientController;
- (BOOL)clientInterface:(id)interface isAllowedToOpenExternalURL:(id)l;
- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated;
- (MusicStoreFlowScriptingClientController)init;
- (id)_correspondingStoreFlowServiceViewControllerForViewController:(id)controller;
- (void)_activateStoreFlowServiceViewController:(id)controller;
- (void)_deactivateStoreFlowServiceViewController:(id)controller andUnregister:(BOOL)unregister;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification;
- (void)_handleApplicationWillEnterForegroundNotification:(id)notification;
- (void)applyCloudServiceSetupConfiguration:(id)configuration;
- (void)clientInterface:(id)interface dismissSafariViewControllerAnimated:(BOOL)animated fromViewController:(id)controller completion:(id)completion;
- (void)clientInterface:(id)interface dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)clientInterface:(id)interface overrideCreditCardPresentationFromViewController:(id)controller completion:(id)completion;
- (void)clientInterface:(id)interface presentSafariViewControllerWithURL:(id)l fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)registerStoreFlowServiceViewController:(id)controller;
- (void)storeFlowServiceViewControllerDidLoad:(id)load;
- (void)storeFlowServiceViewControllerWillAppear:(id)appear;
@end

@implementation MusicStoreFlowScriptingClientController

+ (id)sharedScriptingClientController
{
  if (qword_100011768 != -1)
  {
    sub_100004850();
  }

  v3 = qword_100011760;

  return v3;
}

- (MusicStoreFlowScriptingClientController)init
{
  v9.receiver = self;
  v9.super_class = MusicStoreFlowScriptingClientController;
  v2 = [(MusicStoreFlowScriptingClientController *)&v9 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    registeredStoreFlowServiceViewControllers = v2->_registeredStoreFlowServiceViewControllers;
    v2->_registeredStoreFlowServiceViewControllers = v3;

    v5 = +[NSPointerArray weakObjectsPointerArray];
    activeStoreFlowServiceViewControllersStack = v2->_activeStoreFlowServiceViewControllersStack;
    v2->_activeStoreFlowServiceViewControllersStack = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v7 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v4.receiver = self;
  v4.super_class = MusicStoreFlowScriptingClientController;
  [(MusicStoreFlowScriptingClientController *)&v4 dealloc];
}

- (void)applyCloudServiceSetupConfiguration:(id)configuration
{
  configurationCopy = configuration;
  clientInterface = [(MusicStoreFlowScriptingClientController *)self clientInterface];
  applicationIdentifier = [configurationCopy applicationIdentifier];
  [clientInterface setApplicationIdentifier:applicationIdentifier];

  applicationVersion = [configurationCopy applicationVersion];

  [clientInterface setApplicationVersion:applicationVersion];
}

- (void)registerStoreFlowServiceViewController:(id)controller
{
  controllerCopy = controller;
  if (![(NSHashTable *)self->_registeredStoreFlowServiceViewControllers containsObject:?])
  {
    [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers addObject:controllerCopy];
  }
}

- (void)storeFlowServiceViewControllerDidLoad:(id)load
{
  loadCopy = load;
  rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  if (!rootViewController)
  {
    [(MusicStoreFlowScriptingClientController *)self _activateStoreFlowServiceViewController:loadCopy];
  }
}

- (void)storeFlowServiceViewControllerWillAppear:(id)appear
{
  appearCopy = appear;
  rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  v5 = appearCopy;
  if (rootViewController != appearCopy)
  {
    [(MusicStoreFlowScriptingClientController *)self _activateStoreFlowServiceViewController:appearCopy];
    v5 = appearCopy;
  }
}

- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  controllerCopy = controller;
  v9 = [[SUNavigationController alloc] initWithRootViewController:controllerCopy];
  clientInterface = [controllerCopy clientInterface];

  [v9 setClientInterface:clientInterface];
  [v9 setNavigationBarHidden:!barCopy];
  rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];
  LOBYTE(animatedCopy) = [rootViewController storeFlowScriptingClientController:self requestsPresentingViewController:v9 animated:animatedCopy];

  return animatedCopy;
}

- (void)clientInterface:(id)interface dismissViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [controllerCopy adjustedTargetForSelector:"self"];
  }

  else
  {
    v10 = controllerCopy;
  }

  v11 = v10;
  v12 = [(MusicStoreFlowScriptingClientController *)self _correspondingStoreFlowServiceViewControllerForViewController:controllerCopy];
  [v12 storeFlowScriptingClientController:self requestsDismissingViewController:v11 animated:animatedCopy completion:completionCopy];
}

- (void)clientInterface:(id)interface presentSafariViewControllerWithURL:(id)l fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  lCopy = l;
  v13 = [(MusicStoreFlowScriptingClientController *)self _correspondingStoreFlowServiceViewControllerForViewController:controller];
  [v13 storeFlowScriptingClientController:self requestsPresentingSafariViewControllerWithURL:lCopy animated:animatedCopy completion:completionCopy];
}

- (void)clientInterface:(id)interface dismissSafariViewControllerAnimated:(BOOL)animated fromViewController:(id)controller completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v10 = [(MusicStoreFlowScriptingClientController *)self _correspondingStoreFlowServiceViewControllerForViewController:controller];
  [v10 storeFlowScriptingClientController:self requestsDismissingSafariViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (BOOL)clientInterface:(id)interface isAllowedToOpenExternalURL:(id)l
{
  lCopy = l;
  if ([lCopy isSafeExternalURL])
  {
    v5 = 1;
  }

  else
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];
    v5 = [lowercaseString containsString:@"sonos"];
  }

  return v5;
}

- (void)clientInterface:(id)interface overrideCreditCardPresentationFromViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  v8 = [(MusicStoreFlowScriptingClientController *)self _correspondingStoreFlowServiceViewControllerForViewController:controller];
  [v8 storeFlowScriptingClientController:self overrideCreditCardPresentationWithCompletion:completionCopy];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)notification
{
  self->_isApplicationInBackground = 1;
  if ([(MusicStoreFlowScriptingClientController *)self isActive])
  {

    [(MusicStoreFlowScriptingClientController *)self resignActive];
  }
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)notification
{
  self->_isApplicationInBackground = 0;
  if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0)
  {
    rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];

    if (rootViewController)
    {

      [(MusicStoreFlowScriptingClientController *)self becomeActive];
    }
  }
}

- (void)_activateStoreFlowServiceViewController:(id)controller
{
  controllerCopy = controller;
  [(MusicStoreFlowScriptingClientController *)self setRootViewController:?];
  if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0 && !self->_isApplicationInBackground)
  {
    [(MusicStoreFlowScriptingClientController *)self becomeActive];
  }

  [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack addPointer:controllerCopy];
}

- (id)_correspondingStoreFlowServiceViewControllerForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    v6 = controllerCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController = [v6 parentViewController];

      v6 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_5;
      }
    }

    v9 = v6;
    rootViewController = v9;
  }

  else
  {
LABEL_5:
    rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];
    v9 = 0;
  }

  return rootViewController;
}

- (void)_deactivateStoreFlowServiceViewController:(id)controller andUnregister:(BOOL)unregister
{
  controllerCopy = controller;
  v6 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack pointerAtIndex:v7];
      if (v8 == controllerCopy)
      {
        [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack removePointerAtIndex:v7];
      }

      --v7;
    }

    while (v7 != -1);
  }

  if (unregister && [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers containsObject:controllerCopy])
  {
    [(NSHashTable *)self->_registeredStoreFlowServiceViewControllers removeObject:controllerCopy];
  }

  rootViewController = [(MusicStoreFlowScriptingClientController *)self rootViewController];

  v10 = controllerCopy;
  if (rootViewController == controllerCopy)
  {
    v11 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack count];
    if (v11)
    {
      v12 = v11 - 1;
      while (1)
      {
        v13 = [(NSPointerArray *)self->_activeStoreFlowServiceViewControllersStack pointerAtIndex:v12];
        if (v13)
        {
          break;
        }

        if (--v12 == -1)
        {
          goto LABEL_14;
        }
      }

      v14 = v13;
      [(MusicStoreFlowScriptingClientController *)self setRootViewController:v13];
      if (([(MusicStoreFlowScriptingClientController *)self isActive]& 1) == 0 && !self->_isApplicationInBackground)
      {
        [(MusicStoreFlowScriptingClientController *)self becomeActive];
      }
    }

    else
    {
LABEL_14:
      [(MusicStoreFlowScriptingClientController *)self setRootViewController:0];
      v14 = 0;
      if ([(MusicStoreFlowScriptingClientController *)self isActive])
      {
        [(MusicStoreFlowScriptingClientController *)self resignActive];
        v14 = 0;
      }
    }

    v10 = controllerCopy;
  }
}

@end