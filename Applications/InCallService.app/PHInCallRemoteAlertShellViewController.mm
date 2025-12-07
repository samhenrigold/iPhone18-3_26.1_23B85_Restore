@interface PHInCallRemoteAlertShellViewController
- (BOOL)isMicIndicatorVisible;
- (BOOL)isShowingHUD;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)transitionFromBannerToDismissedIfNecessary;
- (PHInCallContainerControllerProtocol)containerController;
- (PHInCallRemoteAlertShellViewController)initWithCallDisplayStyleManager:(id)manager;
- (PHPIPController)pipController;
- (id)_childViewController;
- (id)makeVideoMessageViewControllerWithURL:(id)l;
- (id)requestFromAlertActivationContextUserInfo:(id)info;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createRootViewController;
- (void)_handlePiPEndedAndShouldBePresentedFullScreen:(BOOL)screen transitionIsComplete:(BOOL)complete viewControllerToSteal:(id)steal;
- (void)_stealViewControllerFromPIP;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)constrainPIPPlaceholderFullScreen;
- (void)dealloc;
- (void)handleButtonActions:(id)actions;
- (void)handleDeviceLockEventWithSourceType:(int64_t)type resultHandler:(id)handler;
- (void)handleDoubleHeightStatusBarTap;
- (void)handleHeadsetButtonLongPressed;
- (void)handleHeadsetButtonPressed;
- (void)handleLockButtonPressed;
- (void)handleVolumeDownButtonPressed;
- (void)handleVolumeUpButtonPressed;
- (void)noteActivatedForActivityContinuationWithIdentifier:(id)identifier;
- (void)noteActivatedForCustomReason:(id)reason withUserInfo:(id)info;
- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)notification;
- (void)pipControllerStateDidChange:(id)change;
- (void)pipDidCancelNotification:(id)notification;
- (void)pipWillCancelNotification:(id)notification;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)removePIPPlaceholderView;
- (void)requestScreenTimeShieldIfNecessary;
- (void)sceneSessionDidChange;
- (void)showKeypadIfPossible;
- (void)showPIPPlaceholderView;
- (void)stopPIPAndStealViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation PHInCallRemoteAlertShellViewController

- (id)_childViewController
{
  childViewControllers = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  v4 = [childViewControllers count];

  if (v4)
  {
    if (v4 != 1)
    {
      NSLog(@"InCall view controller shell expects to only have one child view controller, but it has found more than one...");
    }

    childViewControllers2 = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
    lastObject = [childViewControllers2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (PHInCallRemoteAlertShellViewController)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PHInCallRemoteAlertShellViewController;
  v6 = [(PHInCallRemoteAlertShellViewController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    v8 = +[NSNotificationCenter defaultCenter];
    pipController = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v8 addObserver:v7 selector:"pipDidCancelNotification:" name:@"PHPIPControllerDidCancelNotification" object:pipController];

    v10 = +[NSNotificationCenter defaultCenter];
    pipController2 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v10 addObserver:v7 selector:"pipWillCancelNotification:" name:@"PHPIPControllerWillCancelNotification" object:pipController2];

    v12 = +[NSNotificationCenter defaultCenter];
    pipController3 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v12 addObserver:v7 selector:"pipControllerDidRequestReturnToFullScreenNotification:" name:@"PHPIPControllerDidRequestReturnToFullScreenNotification" object:pipController3];

    v14 = +[NSNotificationCenter defaultCenter];
    pipController4 = [(PHInCallRemoteAlertShellViewController *)v7 pipController];
    [v14 addObserver:v7 selector:"pipControllerStateDidChange:" name:@"PHPIPControllerStateDidChangeNotification" object:pipController4];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v24 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(PHInCallRemoteAlertShellViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(PHInCallRemoteAlertShellViewController *)self view];
  [view2 setOpaque:0];

  view3 = [(PHInCallRemoteAlertShellViewController *)self view];
  layer = [view3 layer];
  [layer setAllowsGroupBlending:0];

  view4 = [(PHInCallRemoteAlertShellViewController *)self view];
  layer2 = [view4 layer];
  [layer2 setAllowsGroupOpacity:0];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100104860;
  v23[3] = &unk_100356988;
  v23[4] = self;
  v10 = objc_retainBlock(v23);
  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  if ([pipController pipState] == 2)
  {
    callDisplayStyle = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 4)
    {
      v15 = sub_10000B2A0(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100256A40();
      }

LABEL_10:
      [(PHInCallRemoteAlertShellViewController *)self setPipFinishedTransitionBlock:v10];
      goto LABEL_14;
    }
  }

  else
  {
  }

  pipController2 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  pipState = [pipController2 pipState];

  v19 = sub_100004F84(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (pipState == 3)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "loadView: Appeared without a root view controller, but the PIP was animating so we'll create a new after a delay", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v20)
  {
    pipController3 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    pipState2 = [pipController3 pipState];
    *buf = 134217984;
    v26 = pipState2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "loadView: Appeared without a root view controller so we'll create a new one (%ld)", buf, 0xCu);
  }

  (v10[2])(v10);
LABEL_14:
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v15 viewWillAppear:appear];
  v4 = +[PHInCallUtilities sharedInstance];
  if ([v4 requestedVCPresentationWithStatusBar])
  {

LABEL_8:
    v11 = sub_100004F84(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "requestedVCPresentationWithStatusBar, do not add status bar suppression %@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (!callDisplayStyle)
  {
    goto LABEL_8;
  }

  hasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason = [(PHInCallRemoteAlertShellViewController *)self hasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason];
  if ((hasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason & 1) == 0)
  {
    v9 = sub_100004F84(hasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "add status bar suppression %@", buf, 0xCu);
    }

    v10 = +[PHInCallUtilities sharedInstance];
    [v10 startSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

    [(PHInCallRemoteAlertShellViewController *)self setHasStartedInitialSuppressionOfInCallStatusBarForFullscreenUIReason:1];
  }

LABEL_11:
  if (CPIsInternalDevice())
  {
    hidEventMonitor = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];

    if (!hidEventMonitor)
    {
      v13 = +[PHHIDEventMonitor HIDEventMonitor];
      [(PHInCallRemoteAlertShellViewController *)self setHidEventMonitor:v13];
    }

    hidEventMonitor2 = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];
    [hidEventMonitor2 start];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = PHInCallRemoteAlertShellViewController;
  v7 = [(PHInCallRemoteAlertShellViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  v8 = sub_100004F84(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = windowCopy;
    v12 = 1024;
    v13 = disappearCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "window: %@, shouldAppearOrDisappear: %d", buf, 0x12u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = PHInCallRemoteAlertShellViewController;
  v4 = [(PHInCallRemoteAlertShellViewController *)&v15 viewDidAppear:appear];
  v5 = sub_100004F84(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isViewLoaded = [(PHInCallRemoteAlertShellViewController *)self isViewLoaded];
    view = [(PHInCallRemoteAlertShellViewController *)self view];
    window = [view window];
    *buf = 67109378;
    v17 = isViewLoaded;
    v18 = 2112;
    v19 = window;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self.isViewLoaded: %d, self.view.window: %@", buf, 0x12u);
  }

  [ICSAriadne trace:4];
  view2 = [(PHInCallRemoteAlertShellViewController *)self view];
  window2 = [view2 window];
  _rootSheetPresentationController = [window2 _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v12 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104D44;
  block[3] = &unk_100356988;
  block[4] = self;
  dispatch_after(v12, &_dispatch_main_q, block);
  v13 = +[PHInCallUtilities sharedInstance];
  [v13 startAllowingRingingCallStatusIndicator];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = PHInCallRemoteAlertShellViewController;
  v4 = [(PHInCallRemoteAlertShellViewController *)&v14 viewDidDisappear:disappear];
  v5 = sub_100004F84(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = @"PHSuppressInCallStatusBarForFullscreenUIReason";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "remove status bar suppression %@", buf, 0xCu);
  }

  v6 = +[PHInCallUtilities sharedInstance];
  [v6 stopSuppressingInCallStatusBarForReason:@"PHSuppressInCallStatusBarForFullscreenUIReason"];

  hidEventMonitor = [(PHInCallRemoteAlertShellViewController *)self hidEventMonitor];
  [hidEventMonitor stop];

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 audioOrVideoCallWithStatus:4];

  if (v9)
  {
    callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 3)
    {
      v12 = +[UIApplication sharedApplication];
      delegate = [v12 delegate];

      [delegate requestPresentationForCall:v9 dialRequest:0];
    }
  }
}

- (PHInCallContainerControllerProtocol)containerController
{
  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  v4 = inCallRootViewController;
  if (inCallRootViewController)
  {
    screenSharingContainerViewController = inCallRootViewController;
  }

  else
  {
    screenSharingContainerViewController = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
  }

  v6 = screenSharingContainerViewController;

  return v6;
}

- (PHPIPController)pipController
{
  pipController = self->_pipController;
  if (!pipController)
  {
    callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    sceneType = [callDisplayStyleManager sceneType];

    if (sceneType)
    {
      v6 = +[PHPIPController newScreenSharingPIPController];
    }

    else
    {
      v6 = +[PHPIPController defaultPIPController];
    }

    v7 = self->_pipController;
    self->_pipController = v6;

    pipController = self->_pipController;
  }

  v8 = pipController;

  return v8;
}

- (void)sceneSessionDidChange
{
  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  [pipController sceneDidUpdate];

  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  [inCallRootViewController sceneDidConnect];
}

- (void)_createRootViewController
{
  rootViewController = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager rootViewController];

  if (!rootViewController)
  {
    callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];

    if (!callDisplayStyleManager)
    {
      v8 = objc_alloc_init(ICSCallDisplayStyleManager);
      [(ICSCallDisplayStyleManager *)v8 setCallDisplayStyle:+[ICSCallDisplayStyleManager callDisplayStyleToRequestForCurrentState]];
      v9 = +[UIApplication sharedApplication];
      delegate = [v9 delegate];
      currentInCallScene = [delegate currentInCallScene];
      session = [currentInCallScene session];
      persistentIdentifier = [session persistentIdentifier];
      [(ICSCallDisplayStyleManager *)v8 setSceneSessionIdentifier:persistentIdentifier];

      [(PHInCallRemoteAlertShellViewController *)self setCallDisplayStyleManager:v8];
    }

    callDisplayStyleManager2 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    sceneType = [callDisplayStyleManager2 sceneType];

    videoMessageRootViewController = 0;
    if (sceneType > 3)
    {
      if (sceneType == 4)
      {
        if (self->_videoMessageRootViewController)
        {
          goto LABEL_22;
        }

        v25 = +[UIApplication sharedApplication];
        delegate2 = [v25 delegate];
        activationContext = [delegate2 activationContext];
        videoMessageURL = [activationContext videoMessageURL];

        v29 = +[UIApplication sharedApplication];
        delegate3 = [v29 delegate];
        [delegate3 setActivationContext:0];

        if (videoMessageURL)
        {
          v32 = [(PHInCallRemoteAlertShellViewController *)self makeVideoMessageViewControllerWithURL:videoMessageURL];
          [(PHInCallRemoteAlertShellViewController *)self setVideoMessageRootViewController:v32];

          videoMessageRootViewController = [(PHInCallRemoteAlertShellViewController *)self videoMessageRootViewController];
        }

        else
        {
          v42 = sub_100004F84(v31);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_100256A80();
          }

          v43 = +[UIApplication sharedApplication];
          delegate4 = [v43 delegate];
          [delegate4 dismissVideoMessageSceneSession];

          videoMessageRootViewController = 0;
        }

        goto LABEL_31;
      }

      if (sceneType == 6)
      {
        screenSharingBroadcasterViewController = objc_alloc_init(UIViewController);
        goto LABEL_24;
      }

      if (sceneType != 5)
      {
        goto LABEL_32;
      }
    }

    else if (sceneType)
    {
      if (sceneType != 1)
      {
        if (sceneType == 2)
        {
          v16 = +[UIApplication sharedApplication];
          delegate5 = [v16 delegate];
          featureFlags = [delegate5 featureFlags];
          screenSharingDrawToHighlightEnabled = [featureFlags screenSharingDrawToHighlightEnabled];

          if (screenSharingDrawToHighlightEnabled)
          {
            v20 = objc_alloc_init(ICSScreenSharingBroadcasterRootViewController);
            [(PHInCallRemoteAlertShellViewController *)self setScreenSharingBroadcasterViewController:v20];

            screenSharingBroadcasterViewController = [(PHInCallRemoteAlertShellViewController *)self screenSharingBroadcasterViewController];
LABEL_24:
            videoMessageRootViewController = screenSharingBroadcasterViewController;
            goto LABEL_32;
          }

          goto LABEL_22;
        }

LABEL_32:
        callDisplayStyleManager3 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
        [callDisplayStyleManager3 setRootViewController:videoMessageRootViewController];
        goto LABEL_33;
      }

      if (self->_screenSharingContainerViewController)
      {
LABEL_22:
        videoMessageRootViewController = 0;
        goto LABEL_32;
      }

      v33 = +[UIApplication sharedApplication];
      delegate6 = [v33 delegate];
      featureFlags2 = [delegate6 featureFlags];
      screenSharingDrawToHighlightEnabled2 = [featureFlags2 screenSharingDrawToHighlightEnabled];

      v37 = off_1003531D0;
      if (!screenSharingDrawToHighlightEnabled2)
      {
        v37 = off_100353248;
      }

      v38 = objc_alloc(*v37);
      callDisplayStyleManager4 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
      v40 = [v38 initWithCallDisplayStyleManager:callDisplayStyleManager4];
      [(PHInCallRemoteAlertShellViewController *)self setScreenSharingContainerViewController:v40];

      videoMessageRootViewController = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
      videoMessageURL = [(PHInCallRemoteAlertShellViewController *)self pipController];
      screenSharingContainerViewController = [(PHInCallRemoteAlertShellViewController *)self screenSharingContainerViewController];
      [screenSharingContainerViewController setPipController:videoMessageURL];

LABEL_31:
      goto LABEL_32;
    }

    if (!self->_inCallRootViewController)
    {
      v22 = [PHInCallRootViewController alloc];
      callDisplayStyleManager5 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
      v24 = [(PHInCallRootViewController *)v22 initWithCallDisplayStyleManager:callDisplayStyleManager5];
      [(PHInCallRemoteAlertShellViewController *)self setInCallRootViewController:v24];

      screenSharingBroadcasterViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  callDisplayStyleManager3 = sub_100004F84(v4);
  if (os_log_type_enabled(callDisplayStyleManager3, OS_LOG_TYPE_DEFAULT))
  {
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, callDisplayStyleManager3, OS_LOG_TYPE_DEFAULT, "Not creating a new root view controller because one already exists", v61, 2u);
  }

  videoMessageRootViewController = 0;
LABEL_33:

  view = [(PHInCallRemoteAlertShellViewController *)self view];
  [view bounds];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  view2 = [videoMessageRootViewController view];
  [view2 setFrame:{v47, v49, v51, v53}];

  view3 = [videoMessageRootViewController view];
  [view3 setAutoresizingMask:18];

  [videoMessageRootViewController willMoveToParentViewController:self];
  view4 = [(PHInCallRemoteAlertShellViewController *)self view];
  view5 = [videoMessageRootViewController view];
  [view4 addSubview:view5];

  [(PHInCallRemoteAlertShellViewController *)self addChildViewController:videoMessageRootViewController];
  [videoMessageRootViewController didMoveToParentViewController:self];
  containerController = [(PHInCallRemoteAlertShellViewController *)self containerController];
  pipSourceProvider = [containerController pipSourceProvider];
  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  [pipController setSourceProvider:pipSourceProvider];
}

- (void)stopPIPAndStealViewController
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping PIP and restoring its view controller", buf, 2u);
  }

  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  isPreparedToAnimateToFullScreen = [pipController isPreparedToAnimateToFullScreen];

  if (isPreparedToAnimateToFullScreen)
  {
    [(PHInCallRemoteAlertShellViewController *)self _stealViewControllerFromPIP];
  }

  else
  {
    objc_initWeak(buf, self);
    pipController2 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100105904;
    v7[3] = &unk_100356F60;
    objc_copyWeak(&v8, buf);
    [pipController2 manuallyStopPIPWithCompletion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)_stealViewControllerFromPIP
{
  objc_initWeak(&location, self);
  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100105A20;
  v4[3] = &unk_1003598A8;
  objc_copyWeak(&v5, &location);
  [pipController stopPIPAndStealViewController:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_handlePiPEndedAndShouldBePresentedFullScreen:(BOOL)screen transitionIsComplete:(BOOL)complete viewControllerToSteal:(id)steal
{
  screenCopy = screen;
  stealCopy = steal;
  if (!stealCopy)
  {
    goto LABEL_22;
  }

  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  if (inCallRootViewController)
  {

    goto LABEL_6;
  }

  v9 = [stealCopy conformsToProtocol:&OBJC_PROTOCOL___PHInCallRootViewControllerProtocol];
  if (!v9)
  {
LABEL_6:
    v11 = sub_10000B2A0(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = stealCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "View controller stolen from PIP is not an InCallRootViewController: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  [(PHInCallRemoteAlertShellViewController *)self setInCallRootViewController:stealCopy];
LABEL_8:
  containerController = [(PHInCallRemoteAlertShellViewController *)self containerController];
  parentViewControllerForRestoringPiP = [containerController parentViewControllerForRestoringPiP];
  v14 = parentViewControllerForRestoringPiP;
  if (parentViewControllerForRestoringPiP)
  {
    selfCopy = parentViewControllerForRestoringPiP;
  }

  else
  {
    selfCopy = self;
  }

  v16 = selfCopy;

  [stealCopy willMoveToParentViewController:v16];
  [(PHInCallRemoteAlertShellViewController *)v16 addChildViewController:stealCopy];
  view = [(PHInCallRemoteAlertShellViewController *)v16 view];
  view2 = [stealCopy view];
  [view addSubview:view2];

  [stealCopy didMoveToParentViewController:v16];
  containerController2 = [(PHInCallRemoteAlertShellViewController *)self containerController];
  [containerController2 handlePIPViewControllerRestoredAfterPIPStopped:stealCopy];

  [stealCopy viewWillAppear:1];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  childViewControllers = [stealCopy childViewControllers];
  v21 = [childViewControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v28 + 1) + 8 * i) viewWillAppear:1];
      }

      v22 = [childViewControllers countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  _remoteViewControllerProxy = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  [(PHInCallRemoteAlertShellViewController *)self requestScreenTimeShieldIfNecessary];
  [(PHInCallRemoteAlertShellViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PHInCallRemoteAlertShellViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (screenCopy)
  {
    callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle == 4)
    {
      TUDispatchMainIfNecessary();
    }
  }

LABEL_22:
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PHInCallRemoteAlertShellViewController;
  v5 = [(PHInCallRemoteAlertShellViewController *)&v13 _willAppearInRemoteViewController:controllerCopy];
  v6 = sub_100004F84(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithInteger:[(PHInCallRemoteAlertShellViewController *)self preferredWhitePointAdaptivityStyle]];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting WhitePointAdaptivityStyle to : %@", buf, 0xCu);
  }

  _remoteViewControllerProxy = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  _remoteViewControllerProxy2 = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 setAllowsControlCenter:1];

  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 _willAppearInRemoteViewController:controllerCopy];
  }
}

- (void)requestScreenTimeShieldIfNecessary
{
  pendingRestrictedScreenTimeRequest = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
  if (pendingRestrictedScreenTimeRequest && (v5 = pendingRestrictedScreenTimeRequest, [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = sub_10010D80C(pendingRestrictedScreenTimeRequest, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      pendingRestrictedScreenTimeRequest2 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
      v15 = 138412290;
      v16 = pendingRestrictedScreenTimeRequest2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will request screen time alert for request %@", &v15, 0xCu);
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHScreenTimeAlertAssertionReason"];
    inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    pendingRestrictedScreenTimeRequest3 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
    [inCallRootViewController forceUpdateCallControllerForFilteredRequest:pendingRestrictedScreenTimeRequest3];

    [(PHInCallRemoteAlertShellViewController *)self setPendingRestrictedScreenTimeRequest:0];
  }

  else
  {
    v12 = sub_10010D80C(pendingRestrictedScreenTimeRequest, v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      pendingRestrictedScreenTimeRequest4 = [(PHInCallRemoteAlertShellViewController *)self pendingRestrictedScreenTimeRequest];
      v15 = 138412290;
      v16 = pendingRestrictedScreenTimeRequest4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not requesting screen time shield for filtered request: %@", &v15, 0xCu);
    }
  }
}

- (void)noteActivatedForCustomReason:(id)reason withUserInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  v8 = sub_100004F84(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = reasonCopy;
    v24 = 2112;
    v25 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activated for reason: %@, userInfo: %@", &v22, 0x16u);
  }

  v9 = [reasonCopy isEqualToString:SBUIRemoteAlertActivationReasonActivatingForUILock];
  if (!v9)
  {
    if ([reasonCopy isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithClicks])
    {
      v14 = SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen;
    }

    else
    {
      v15 = [reasonCopy isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSWithKappa];
      v14 = SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen;
      if ((v15 & 1) == 0 && ([reasonCopy isEqualToString:SOSRemoteAlertActivationReasonActivatingForSOSAlertRestingScreen] & 1) == 0 && !objc_msgSend(reasonCopy, "isEqualToString:", SOSRemoteAlertActivationReasonActivatingForSOSWithVolumeLockHold))
      {
        if ([reasonCopy isEqualToString:SOSRemoteAlertActivationReasonActivatingForScreenTime])
        {
          v21 = [(PHInCallRemoteAlertShellViewController *)self requestFromAlertActivationContextUserInfo:infoCopy];
          [(PHInCallRemoteAlertShellViewController *)self setPendingRestrictedScreenTimeRequest:v21];

          [(PHInCallRemoteAlertShellViewController *)self requestScreenTimeShieldIfNecessary];
        }

        goto LABEL_17;
      }
    }

    v16 = +[TUCallCenter sharedInstance];
    [v16 disconnectAllCalls];

    v17 = [reasonCopy isEqualToString:v14];
    v18 = off_100359460;
    if (!v17)
    {
      v18 = off_100359418;
    }

    [PHInCallRootViewController obtainDismissalAssertionForReason:*v18];
    inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [inCallRootViewController setCurrentAlertButtonAction:0];

    inCallRootViewController2 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [inCallRootViewController2 forceUpdateCallControllerForSOS];

    inCallRootViewController3 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [inCallRootViewController3 dismissScreenTimeAlertHostIfNeeded];
    goto LABEL_16;
  }

  v10 = sub_100004F84(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notified that we were activated for ending all calls and locking", &v22, 2u);
  }

  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    inCallRootViewController3 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [inCallRootViewController3 handleActivationForEndAndLock];
LABEL_16:
  }

LABEL_17:
}

- (id)requestFromAlertActivationContextUserInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:SOSRemoteAlertActivationContextUserInfoRequestURLStringKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NSURL URLWithString:v3];
    if (v4)
    {
      v5 = [[TUDialRequest alloc] initWithURL:v4];
      if (!v5)
      {
        v6 = [[TUJoinConversationRequest alloc] initWithURL:v4];
        v7 = +[TUCallCenter sharedInstance];
        conversationManager = [v7 conversationManager];
        remoteMembers = [v6 remoteMembers];
        conversationLink = [v6 conversationLink];
        v11 = [conversationManager activeConversationWithRemoteMembers:remoteMembers andLink:conversationLink];

        activeRemoteParticipants = [v11 activeRemoteParticipants];
        if ([activeRemoteParticipants count])
        {
          v13 = v11;
        }

        else
        {
          v13 = v6;
        }

        v5 = v13;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteActivatedForActivityContinuationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = sub_100004F84(identifierCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activated for activity continuation with identifier: %@", buf, 0xCu);
  }

  [PHInCallRootViewController obtainDismissalAssertionForReason:@"PHDismissalReasonWaitingForHandoff"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100106718;
  v6[3] = &unk_1003598D0;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [NSUserActivity _fetchUserActivityWithUUID:v5 completionHandler:v6];
}

- (void)handleDeviceLockEventWithSourceType:(int64_t)type resultHandler:(id)handler
{
  handlerCopy = handler;
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v8 = [_childViewController conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v8)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleDeviceLockEventWithSourceType:type resultHandler:handlerCopy];
  }

  else
  {
    v11 = sub_100009960(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PHInCallRemoteAlertShellViewController does not have a child VC that can handle button events", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)handleLockButtonPressed
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleLockButtonPressed];
  }
}

- (void)handleVolumeUpButtonPressed
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [_childViewController conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleVolumeUpButtonPressed];
  }
}

- (void)handleVolumeDownButtonPressed
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [_childViewController conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleVolumeDownButtonPressed];
  }
}

- (void)handleHeadsetButtonPressed
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [_childViewController conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleHeadsetButtonPressed];
  }
}

- (void)handleHeadsetButtonLongPressed
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = [_childViewController conformsToProtocol:&OBJC_PROTOCOL___PHInCallHardwareButtonEventHandlerProtocol];

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleHeadsetButtonLongPressed];
  }
}

- (void)handleDoubleHeightStatusBarTap
{
  _childViewController = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _childViewController2 = [(PHInCallRemoteAlertShellViewController *)self _childViewController];
    [_childViewController2 handleDoubleHeightStatusBarTap];
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = sub_100004F84(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInteger:[(PHInCallRemoteAlertShellViewController *)self preferredWhitePointAdaptivityStyle]];
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting WhitePointAdaptivityStyle to : %@", buf, 0xCu);
  }

  _remoteViewControllerProxy = [(PHInCallRemoteAlertShellViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWhitePointAdaptivityStyle:{-[PHInCallRemoteAlertShellViewController preferredWhitePointAdaptivityStyle](self, "preferredWhitePointAdaptivityStyle")}];

  v11.receiver = self;
  v11.super_class = PHInCallRemoteAlertShellViewController;
  [(PHInCallRemoteAlertShellViewController *)&v11 configureWithContext:contextCopy completion:completionCopy];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = sub_100004F84(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "context: %@", &v15, 0xCu);
  }

  actions = [contextCopy actions];
  [(PHInCallRemoteAlertShellViewController *)self handleButtonActions:actions];

  reason = [contextCopy reason];
  userInfo = [contextCopy userInfo];
  [(PHInCallRemoteAlertShellViewController *)self noteActivatedForCustomReason:reason withUserInfo:userInfo];

  v12 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
  if (v12)
  {
    inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [inCallRootViewController prepareForDeviceLock];
  }

  if (completionCopy)
  {
    v14 = sub_100004F84(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling completion block", &v15, 2u);
    }

    completionCopy[2](completionCopy);
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = sub_100004F84(actionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40[0] = actionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonActions: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = actionsCopy;
  v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
    v10 = *v36;
    *&v7 = 67109378;
    v33 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = sub_100004F84(v6);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40[0] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling current SBUIRemoteAlertButtonAction: %@", buf, 0xCu);
        }

        inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
        [inCallRootViewController setCurrentAlertButtonAction:v12];

        sharedInstance = [v9[391] sharedInstance];
        incomingCall = [sharedInstance incomingCall];
        v17 = incomingCall;
        if (incomingCall)
        {
          incomingVideoCall = incomingCall;
        }

        else
        {
          sharedInstance2 = [v9[391] sharedInstance];
          incomingVideoCall = [sharedInstance2 incomingVideoCall];
        }

        v20 = +[PHSOSViewController isSOSDismissalAssertionActive];
        v21 = v20;
        if ((v20 & 1) != 0 || incomingVideoCall && (v20 = [incomingVideoCall shouldSuppressRingtone], (v20 & 1) == 0))
        {
          v22 = sub_100004F84(v20);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v33;
            LODWORD(v40[0]) = v21;
            WORD2(v40[0]) = 2112;
            *(v40 + 6) = incomingVideoCall;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "dismissalAssertions contains PHSOSCallAssertionReason: %d; incomingCall = %@\nSending response that we have handled all events", buf, 0x12u);
          }

          inCallRootViewController2 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
          [inCallRootViewController2 setCurrentAlertButtonAction:0];
        }

        events = [v12 events];
        v25 = sub_100004F84(events);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v40[0] = events;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[alertAction events]: %ld", buf, 0xCu);
        }

        if (events)
        {
          v27 = sub_100004F84(handleLockButtonPressed);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventLockButton", buf, 2u);
          }

          handleLockButtonPressed = [(PHInCallRemoteAlertShellViewController *)self handleLockButtonPressed];
          if ((events & 2) == 0)
          {
LABEL_23:
            if ((events & 4) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_34;
          }
        }

        else if ((events & 2) == 0)
        {
          goto LABEL_23;
        }

        v28 = sub_100004F84(handleLockButtonPressed);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventVolumeUpButton", buf, 2u);
        }

        handleLockButtonPressed = [(PHInCallRemoteAlertShellViewController *)self handleVolumeUpButtonPressed];
        if ((events & 4) == 0)
        {
LABEL_24:
          if ((events & 8) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_37;
        }

LABEL_34:
        v29 = sub_100004F84(handleLockButtonPressed);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventVolumeDownButton", buf, 2u);
        }

        handleLockButtonPressed = [(PHInCallRemoteAlertShellViewController *)self handleVolumeDownButtonPressed];
        if ((events & 8) == 0)
        {
LABEL_25:
          if ((events & 0x20) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_40;
        }

LABEL_37:
        v30 = sub_100004F84(handleLockButtonPressed);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHeadsetButton", buf, 2u);
        }

        handleLockButtonPressed = [(PHInCallRemoteAlertShellViewController *)self handleHeadsetButtonPressed];
        if ((events & 0x20) == 0)
        {
LABEL_26:
          if ((events & 0x10) == 0)
          {
            goto LABEL_46;
          }

LABEL_43:
          v32 = sub_100004F84(handleLockButtonPressed);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHomeButton", buf, 2u);
          }

          [(PHInCallRemoteAlertShellViewController *)self handleHomeButtonPressed];
          goto LABEL_46;
        }

LABEL_40:
        v31 = sub_100004F84(handleLockButtonPressed);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "alertAction events contained SBUIRemoteAlertServiceButtonEventHeadsetButtonLongPress", buf, 2u);
        }

        handleLockButtonPressed = [(PHInCallRemoteAlertShellViewController *)self handleHeadsetButtonLongPressed];
        if ((events & 0x10) != 0)
        {
          goto LABEL_43;
        }

LABEL_46:

        v11 = v11 + 1;
        v9 = &_s16CommunicationsUI29CallTranslationLanguagePickerV05SwiftB04ViewAAMc_ptr;
      }

      while (v8 != v11);
      v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      v8 = v6;
    }

    while (v6);
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  childViewControllers = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (objc_opt_respondsToSelector())
  {
    [lastObject willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  childViewControllers = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if (objc_opt_respondsToSelector())
  {
    v6 = [lastObject shouldAutorotateToInterfaceOrientation:orientation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[PHUIConfiguration canAutoRotateInCallUIForFaceTimeAudio](PHUIConfiguration, "canAutoRotateInCallUIForFaceTimeAudio") && (+[PHUIConfiguration canAutoRotateInCallUIForFaceTime]& 1) != 0)
  {
    return 30;
  }

  callDisplayStyleManager = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  sceneType = [callDisplayStyleManager sceneType];

  if (sceneType != 1)
  {
    goto LABEL_9;
  }

  v6 = +[UIApplication sharedApplication];
  delegate = [v6 delegate];
  featureFlags = [delegate featureFlags];
  screenSharingDrawToHighlightEnabled = [featureFlags screenSharingDrawToHighlightEnabled];

  if (screenSharingDrawToHighlightEnabled)
  {
    childViewControllers = [(PHInCallRemoteAlertShellViewController *)self childViewControllers];
    lastObject = [childViewControllers lastObject];

    supportedInterfaceOrientations = [lastObject supportedInterfaceOrientations];
    return supportedInterfaceOrientations;
  }

  v13 = +[UIApplication sharedApplication];
  delegate2 = [v13 delegate];
  featureFlags2 = [delegate2 featureFlags];
  supportsScreenSharing = [featureFlags2 supportsScreenSharing];

  if (supportsScreenSharing)
  {
    return 26;
  }

LABEL_9:
  callDisplayStyleManager2 = [(PHInCallRemoteAlertShellViewController *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    return 24;
  }

  else
  {
    return 2;
  }
}

- (void)pipWillCancelNotification:(id)notification
{
  notificationCopy = notification;
  v6 = sub_10000B2A0(notificationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
    *buf = 138543362;
    v16 = pipController;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PiP will cancel: %{public}@", buf, 0xCu);
  }

  pipFinishedCancellationBlock = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];

  if (pipFinishedCancellationBlock)
  {
    v12 = sub_10000B2A0(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100256BB0();
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100107AD8;
    v13[3] = &unk_100356F60;
    objc_copyWeak(&v14, buf);
    [(PHInCallRemoteAlertShellViewController *)self setPipFinishedCancellationBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

- (void)pipDidCancelNotification:(id)notification
{
  v4 = sub_10000B2A0(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
    v15 = 138412290;
    v16 = pipController;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PiP did cancel: %@", &v15, 0xCu);
  }

  pipController2 = [(PHInCallRemoteAlertShellViewController *)self pipController];
  if ([pipController2 pipState])
  {

    goto LABEL_5;
  }

  pipFinishedTransitionBlock = [(PHInCallRemoteAlertShellViewController *)self pipFinishedTransitionBlock];

  if (!pipFinishedTransitionBlock)
  {
LABEL_5:
    pipFinishedCancellationBlock = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];

    if (pipFinishedCancellationBlock)
    {
      pipFinishedCancellationBlock2 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedCancellationBlock];
      pipFinishedCancellationBlock2[2]();

      [(PHInCallRemoteAlertShellViewController *)self setPipFinishedCancellationBlock:0];
    }

    return;
  }

  v13 = sub_10000B2A0(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PIP state did change and we have a pending transition block - we'll run that block now", &v15, 2u);
  }

  pipFinishedTransitionBlock2 = [(PHInCallRemoteAlertShellViewController *)self pipFinishedTransitionBlock];
  pipFinishedTransitionBlock2[2]();

  [(PHInCallRemoteAlertShellViewController *)self setPipFinishedTransitionBlock:0];
}

- (void)pipControllerDidRequestReturnToFullScreenNotification:(id)notification
{
  notificationCopy = notification;
  v6 = sub_10000B2A0(notificationCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 2112;
    v18 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is handling notification %@", &v15, 0x16u);
  }

  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  windowForTransitionAnimation = [pipController windowForTransitionAnimation];
  view = [(PHInCallRemoteAlertShellViewController *)self view];
  window = [view window];
  v11 = [windowForTransitionAnimation isEqual:window];

  if (v11)
  {
    [(PHInCallRemoteAlertShellViewController *)self stopPIPAndStealViewController];
  }

  else
  {
    v14 = sub_10000B2A0(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100256BF0();
    }
  }
}

- (void)pipControllerStateDidChange:(id)change
{
  pipController = [(PHInCallRemoteAlertShellViewController *)self pipController];
  pipState = [pipController pipState];

  if (pipState == 2)
  {

    [(PHInCallRemoteAlertShellViewController *)self showPIPPlaceholderView];
  }

  else
  {
    pipController2 = [(PHInCallRemoteAlertShellViewController *)self pipController];
    pipState2 = [pipController2 pipState];

    if (pipState2 == 3)
    {

      [(PHInCallRemoteAlertShellViewController *)self removePIPPlaceholderView];
    }
  }
}

- (void)showPIPPlaceholderView
{
  pipPlaceholderView = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  if (!pipPlaceholderView || (v5 = pipPlaceholderView, -[PHInCallRemoteAlertShellViewController pipPlaceholderView](self, "pipPlaceholderView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 superview], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7))
  {
    v8 = sub_10000B2A0(pipPlaceholderView, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up PIP placeholder view to show in app switcher while calls is PIPped", v17, 2u);
    }

    v9 = objc_alloc_init(AVPictureInPictureIndicatorView);
    [(PHInCallRemoteAlertShellViewController *)self setPipPlaceholderView:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"PIP_PLACEHOLDER_MESSAGE" value:&stru_100361FD0 table:@"InCallService"];
    pipPlaceholderView2 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [pipPlaceholderView2 setCustomMessage:v11];

    v13 = +[UIColor blackColor];
    pipPlaceholderView3 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [pipPlaceholderView3 setBackgroundColor:v13];

    view = [(PHInCallRemoteAlertShellViewController *)self view];
    pipPlaceholderView4 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
    [view addSubview:pipPlaceholderView4];

    [(PHInCallRemoteAlertShellViewController *)self constrainPIPPlaceholderFullScreen];
  }
}

- (void)constrainPIPPlaceholderFullScreen
{
  pipPlaceholderView = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  [pipPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];

  pipPlaceholderView2 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  topAnchor = [pipPlaceholderView2 topAnchor];
  view = [(PHInCallRemoteAlertShellViewController *)self view];
  topAnchor2 = [view topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v20;
  pipPlaceholderView3 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  bottomAnchor = [pipPlaceholderView3 bottomAnchor];
  view2 = [(PHInCallRemoteAlertShellViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[1] = v15;
  pipPlaceholderView4 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  leadingAnchor = [pipPlaceholderView4 leadingAnchor];
  view3 = [(PHInCallRemoteAlertShellViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[2] = v7;
  pipPlaceholderView5 = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  trailingAnchor = [pipPlaceholderView5 trailingAnchor];
  view4 = [(PHInCallRemoteAlertShellViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[3] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)removePIPPlaceholderView
{
  v3 = sub_10000B2A0(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing PIP placeholder view", v5, 2u);
  }

  pipPlaceholderView = [(PHInCallRemoteAlertShellViewController *)self pipPlaceholderView];
  [pipPlaceholderView removeFromSuperview];

  [(PHInCallRemoteAlertShellViewController *)self setPipPlaceholderView:0];
}

- (void)showKeypadIfPossible
{
  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];

  if (inCallRootViewController)
  {
    inCallRootViewController2 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
    [inCallRootViewController2 showKeypadIfPossible];
  }
}

- (BOOL)transitionFromBannerToDismissedIfNecessary
{
  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];

  if (!inCallRootViewController)
  {
    return 0;
  }

  inCallRootViewController2 = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  transitionFromBannerToDismissedIfNecessary = [inCallRootViewController2 transitionFromBannerToDismissedIfNecessary];

  return transitionFromBannerToDismissedIfNecessary;
}

- (BOOL)isShowingHUD
{
  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  isShowingHUD = [inCallRootViewController isShowingHUD];

  return isShowingHUD;
}

- (BOOL)isMicIndicatorVisible
{
  if ([(PHInCallRemoteAlertShellViewController *)self isShowingHUD])
  {
    return 1;
  }

  inCallRootViewController = [(PHInCallRemoteAlertShellViewController *)self inCallRootViewController];
  isShowing6UP = [inCallRootViewController isShowing6UP];

  return isShowing6UP;
}

- (id)makeVideoMessageViewControllerWithURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_1001A8370(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

@end