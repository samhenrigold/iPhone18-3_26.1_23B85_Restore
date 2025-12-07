@interface ICQUIRootViewController
- (void)_dismissAndExit;
- (void)_dismissFlowWithSuccess:(BOOL)success;
- (void)_fetchDefaultOfferAndLaunchUpgradeFlow;
- (void)_handleFallback;
- (void)_launchUpgradeFlowWithOffer:(id)offer icqLink:(id)link;
- (void)_notifyFlowCompletionToDaemonWithSuccess:(BOOL)success;
- (void)loadView;
- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)viewDidLoad;
@end

@implementation ICQUIRootViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(ICQUIRootViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = ICQUIRootViewController;
  [(ICQUIRootViewController *)&v19 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(ICQUIRootViewController *)self view];
  [view setBackgroundColor:v3];

  remoteContext = self->_remoteContext;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (remoteContext)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote context found. Proceeding to launch the upgrade flow.", v18, 2u);
    }

    offer = [(ICQRemoteContext *)self->_remoteContext offer];
    bundleIdentifier = [offer bundleIdentifier];
    v10 = [bundleIdentifier isEqualToString:ICQBundleId];

    serverUIURL = [offer serverUIURL];
    if (serverUIURL)
    {
      v12 = 0;
    }

    else
    {
      link = [(ICQRemoteContext *)self->_remoteContext link];
      actionURL = [link actionURL];
      v12 = actionURL == 0;
    }

    if ((v10 | v12))
    {
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000051D4();
      }

      [(ICQUIRootViewController *)self _fetchDefaultOfferAndLaunchUpgradeFlow];
    }

    else
    {
      offer2 = [(ICQRemoteContext *)self->_remoteContext offer];
      link2 = [(ICQRemoteContext *)self->_remoteContext link];
      [(ICQUIRootViewController *)self _launchUpgradeFlowWithOffer:offer2 icqLink:link2];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100005208();
    }

    [(ICQUIRootViewController *)self _dismissAndExit];
  }
}

- (void)_launchUpgradeFlowWithOffer:(id)offer icqLink:(id)link
{
  offerCopy = offer;
  linkCopy = link;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  flowManager = self->_flowManager;
  v9 = _ICQGetLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (flowManager)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Upgrade flow manager already presented; ignoring.", buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Presenting upgrade flow within hidden app.", buf, 2u);
    }

    v11 = [[ICQUpgradeFlowManager alloc] initWithOffer:offerCopy];
    v12 = self->_flowManager;
    self->_flowManager = v11;

    [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:self];
    flowOptionsData = [(ICQRemoteContext *)self->_remoteContext flowOptionsData];
    v14 = [ICQUpgradeFlowOptions flowOptionsFromData:flowOptionsData];
    [(ICQUpgradeFlowManager *)self->_flowManager setFlowOptions:v14];

    [(ICQUpgradeFlowManager *)self->_flowManager setIcqLink:linkCopy];
    presentingSceneIdentifier = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];

    v16 = _ICQGetLogSystem();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (presentingSceneIdentifier)
    {
      if (v17)
      {
        presentingSceneIdentifier2 = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];
        *buf = 138412290;
        v23 = presentingSceneIdentifier2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting OOP parent/host's app sceneIdentifier: %@", buf, 0xCu);
      }

      presentingSceneIdentifier3 = [(ICQRemoteContext *)self->_remoteContext presentingSceneIdentifier];
      [(ICQUpgradeFlowManager *)self->_flowManager setPresentingSceneIdentifier:presentingSceneIdentifier3];
    }

    else
    {
      if (v17)
      {
        sceneIdentifier = self->_sceneIdentifier;
        *buf = 138412290;
        v23 = sceneIdentifier;
      }

      [(ICQUpgradeFlowManager *)self->_flowManager setPresentingSceneIdentifier:self->_sceneIdentifier];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003DE4;
    block[3] = &unk_10000C3D8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_fetchDefaultOfferAndLaunchUpgradeFlow
{
  v3 = +[ICQOfferManager sharedOfferManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E94;
  v4[3] = &unk_10000C488;
  v4[4] = self;
  [v3 getOfferForBundleIdentifier:ICQBundleId completion:v4];
}

- (void)_handleFallback
{
  offer = [(ICQRemoteContext *)self->_remoteContext offer];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    context = [offer context];
    v12 = 138412290;
    v13 = context;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to launch upgrade flow with context = %@", &v12, 0xCu);
  }

  context2 = [offer context];
  v6 = [NSURL URLWithString:context2];

  icq_isICQLaunchURL = [v6 icq_isICQLaunchURL];
  v8 = _ICQGetLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (icq_isICQLaunchURL)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
    }

    v10 = [NSURL URLWithString:ICQManageStoragePreferencesURL];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openSensitiveURL:v10 withOptions:0];
  }

  else
  {
    if (v9)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launching link %@ in safari", &v12, 0xCu);
    }

    v10 = objc_alloc_init(_LSOpenConfiguration);
    [v10 setAllowURLOverrides:0];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openURL:v6 configuration:v10 completionHandler:&stru_10000C4A8];
  }
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000523C();
  }

  flowManager = self->_flowManager;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (flowManager)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      v8 = "Upgrade flow has been cancelled.";
      v9 = v6;
      v10 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    v11 = 136315138;
    v12 = "[ICQUIRootViewController upgradeFlowManagerDidCancel:]";
    v8 = "Upgrade flow has been dismissed already, %s will be ignored.";
    v9 = v6;
    v10 = 12;
    goto LABEL_8;
  }

  [(ICQUIRootViewController *)self _dismissFlowWithSuccess:0];
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100005270();
  }

  flowManager = self->_flowManager;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!flowManager)
  {
    if (v7)
    {
      v14 = 136315138;
      v15 = "[ICQUIRootViewController upgradeFlowManagerDidComplete:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Upgrade flow has been dismissed already, %s will be ignored.", &v14, 0xCu);
    }

    goto LABEL_16;
  }

  if (v7)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Upgrade flow has been completed.", &v14, 2u);
  }

  offer = [(ICQUpgradeFlowManager *)self->_flowManager offer];
  isPremiumOffer = [offer isPremiumOffer];

  offer2 = [(ICQUpgradeFlowManager *)self->_flowManager offer];
  isDefaultOffer = [offer2 isDefaultOffer];

  if ((isDefaultOffer & 1) == 0)
  {
    v12 = _ICQGetLogSystem();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (isPremiumOffer)
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up pending premium followup item", &v14, 2u);
      }

      v6 = +[ICQOfferManager sharedOfferManager];
      [v6 teardownCachedPremiumOffer];
    }

    else
    {
      if (v13)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cleaning up pending regular followup item", &v14, 2u);
      }

      v6 = +[ICQOfferManager sharedOfferManager];
      [v6 teardownCachedOffer];
    }

LABEL_16:
  }

  [(ICQUIRootViewController *)self _dismissFlowWithSuccess:1];
}

- (void)upgradeFlowManager:(id)manager didPresentViewController:(id)controller
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000052A4();
  }
}

- (void)_dismissFlowWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = successCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing upgrade flow with success: %d", v6, 8u);
  }

  [(ICQUIRootViewController *)self _notifyFlowCompletionToDaemonWithSuccess:successCopy];
  [(ICQUIRootViewController *)self _dismissAndExit];
}

- (void)_notifyFlowCompletionToDaemonWithSuccess:(BOOL)success
{
  successCopy = success;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ind.xpc" options:0];
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection to ind initiated successfully.", v11, 2u);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = qword_100011BC8;
    v15 = qword_100011BC8;
    if (!qword_100011BC8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100004DAC;
      v11[3] = &unk_10000C428;
      v11[4] = &v12;
      sub_100004DAC(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    xPCInterface = [v7 XPCInterface];
    [v4 setRemoteObjectInterface:xPCInterface];

    [v4 resume];
    v6 = [v4 remoteObjectProxyWithErrorHandler:&stru_10000C4E8];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Let the daemon know about flow completion.", v11, 2u);
    }

    [v6 remoteFreshmintFlowCompletedWithSuccess:successCopy error:0];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000052D8();
  }
}

- (void)_dismissAndExit
{
  [(ICQUpgradeFlowManager *)self->_flowManager setDelegate:0];
  flowManager = self->_flowManager;
  self->_flowManager = 0;

  dispatch_async(&_dispatch_main_q, &stru_10000C528);
}

@end