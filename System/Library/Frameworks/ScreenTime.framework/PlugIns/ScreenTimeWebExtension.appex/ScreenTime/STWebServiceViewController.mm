@interface STWebServiceViewController
+ (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)sharedLimiter;
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (BOOL)URLIsBlocked;
- (STWebServiceViewController)initWithCoder:(id)coder;
- (STWebServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_hideBlockingViewControllerWithAnimation:(BOOL)animation replyHandler:(id)handler;
- (void)_incrementPolicyRequestCountAndReportURLIsBlocked:(BOOL)blocked;
- (void)_reportURLIsBlocked:(BOOL)blocked;
- (void)_reportURLIsBlocked:(BOOL)blocked withDelay:(double)delay;
- (void)_requestPolicyForCurrentURLWithReplyHandler:(id)handler;
- (void)_requestPolicyForURL:(id)l replyHandler:(id)handler;
- (void)_showBlockingViewControllerForWebpage:(id)webpage withPolicy:(int64_t)policy animated:(BOOL)animated replyHandler:(id)handler;
- (void)_stWebServiceViewControllerCommonInit;
- (void)_startRecordingUsageForURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageState:(int64_t)state replyHandler:(id)handler;
- (void)_stopRecordingUsage;
- (void)changeUsageState:(int64_t)state replyHandler:(id)handler;
- (void)setURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageState:(int64_t)state replyHandler:(id)handler;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation STWebServiceViewController

- (STWebServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = STWebServiceViewController;
  v4 = [(STWebServiceViewController *)&v6 initWithNibName:name bundle:bundle];
  [(STWebServiceViewController *)v4 _stWebServiceViewControllerCommonInit];
  return v4;
}

- (STWebServiceViewController)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STWebServiceViewController;
  v3 = [(STWebServiceViewController *)&v5 initWithCoder:coder];
  [(STWebServiceViewController *)v3 _stWebServiceViewControllerCommonInit];
  return v3;
}

- (void)_stWebServiceViewControllerCommonInit
{
  clientBundleIdentifier = self->_clientBundleIdentifier;
  self->_clientBundleIdentifier = @"com.apple.ScreenTime.ScreenTimeWebExtension";

  objc_initWeak(&location, self);
  v4 = [DMFWebsitePolicyMonitor alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100001ED8;
  v12 = &unk_10000C428;
  objc_copyWeak(&v13, &location);
  v5 = [v4 initWithPolicyChangeHandler:&v9];
  websitePolicyMonitor = self->_websitePolicyMonitor;
  self->_websitePolicyMonitor = v5;

  v7 = [STBlockingViewController newTranslucentBlockingViewController:v9];
  blockingViewController = self->_blockingViewController;
  self->_blockingViewController = v7;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (id)_remoteViewControllerInterface
{
  v2 = +[STWebService newDelegateInterface];

  return v2;
}

+ (id)_exportedInterface
{
  v2 = +[STWebService newServiceInterface];

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = STWebServiceViewController;
  [(STWebServiceViewController *)&v6 viewDidLayoutSubviews];
  view = [(STWebServiceViewController *)self view];
  [view bounds];
  v4 = CGRectGetHeight(v7) / 6.0;

  blockingViewController = [(STWebServiceViewController *)self blockingViewController];
  [blockingViewController setAdditionalSafeAreaInsets:{0.0, 0.0, v4, 0.0}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(STWebServiceViewController *)self _stopRecordingUsage];
  v5.receiver = self;
  v5.super_class = STWebServiceViewController;
  [(STWebServiceViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)_stopRecordingUsage
{
  webpageUsage = [(STWebServiceViewController *)self webpageUsage];
  [webpageUsage changeState:0 completionHandler:&stru_10000C468];
}

- (void)setURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageState:(int64_t)state replyHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  handlerCopy = handler;
  [(STWebServiceViewController *)self setClientBundleIdentifier:identifierCopy];
  webpageUsage = [(STWebServiceViewController *)self webpageUsage];
  if (webpageUsage)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000022BC;
    v17[3] = &unk_10000C490;
    v17[4] = self;
    v18 = lCopy;
    v19 = identifierCopy;
    v20 = profileIdentifierCopy;
    stateCopy = state;
    v21 = handlerCopy;
    [webpageUsage changeState:0 completionHandler:v17];
  }

  else
  {
    [(STWebServiceViewController *)self _startRecordingUsageForURL:lCopy bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy usageState:state replyHandler:handlerCopy];
  }
}

- (void)changeUsageState:(int64_t)state replyHandler:(id)handler
{
  handlerCopy = handler;
  webpageUsage = [(STWebServiceViewController *)self webpageUsage];
  [webpageUsage changeState:state completionHandler:handlerCopy];
}

- (void)_startRecordingUsageForURL:(id)l bundleIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier usageState:(int64_t)state replyHandler:(id)handler
{
  lCopy = l;
  identifierCopy = identifier;
  profileIdentifierCopy = profileIdentifier;
  handlerCopy = handler;
  [(STWebServiceViewController *)self setClientBundleIdentifier:identifierCopy];
  if (lCopy)
  {
    v16 = [USWebpageUsage alloc];
    objc_msgSend__hostAuditToken(self);
    v17 = [v16 initWithURL:lCopy bundleIdentifier:identifierCopy profileIdentifier:profileIdentifierCopy auditToken:v24];
    [(STWebServiceViewController *)self setWebpageUsage:v17];
    if ((state - 1) >= 2)
    {
      if (!state)
      {
        [(STWebServiceViewController *)self _requestPolicyForURL:lCopy replyHandler:handlerCopy];
      }
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100002554;
      v21[3] = &unk_10000C4B8;
      v21[4] = self;
      v22 = lCopy;
      v23 = handlerCopy;
      [v17 changeState:state completionHandler:v21];
    }
  }

  else
  {
    [(STWebServiceViewController *)self setWebpageUsage:0];
    v18 = +[NSOperationQueue mainQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002578;
    v19[3] = &unk_10000C4E0;
    v19[4] = self;
    v20 = handlerCopy;
    [v18 addOperationWithBlock:v19];
  }
}

- (void)_requestPolicyForURL:(id)l replyHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  websitePolicyMonitor = [(STWebServiceViewController *)self websitePolicyMonitor];
  v16 = lCopy;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026BC;
  v12[3] = &unk_10000C530;
  selfCopy = self;
  v15 = handlerCopy;
  v13 = lCopy;
  v10 = handlerCopy;
  v11 = lCopy;
  [websitePolicyMonitor requestPoliciesForWebsites:v9 completionHandler:v12];
}

- (void)_incrementPolicyRequestCountAndReportURLIsBlocked:(BOOL)blocked
{
  sharedLimiter = [objc_opt_class() sharedLimiter];
  clientBundleIdentifier = [(STWebServiceViewController *)self clientBundleIdentifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002994;
  v7[3] = &unk_10000C580;
  v7[4] = self;
  blockedCopy = blocked;
  [sharedLimiter incrementRequestCountForBundleIdentifier:clientBundleIdentifier completionHandler:v7];
}

- (void)_reportURLIsBlocked:(BOOL)blocked withDelay:(double)delay
{
  if (!+[NSThread isMainThread])
  {
    sub_1000060AC(a2, self);
  }

  reportURLIsBlockedTimer = [(STWebServiceViewController *)self reportURLIsBlockedTimer];
  [reportURLIsBlockedTimer invalidate];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002BF8;
  v10[3] = &unk_10000C5A8;
  objc_copyWeak(&v11, &location);
  blockedCopy = blocked;
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:delay];
  [(STWebServiceViewController *)self setReportURLIsBlockedTimer:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_reportURLIsBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  v4 = [(STWebServiceViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_10000C5C8];
  [v4 setURLIsBlocked:blockedCopy replyHandler:&stru_10000C608];
}

+ (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)sharedLimiter
{
  if (qword_100010DD8[0] != -1)
  {
    sub_1000061A0();
  }

  v3 = qword_100010DD0;

  return v3;
}

- (BOOL)URLIsBlocked
{
  childViewControllers = [(STWebServiceViewController *)self childViewControllers];
  blockingViewController = [(STWebServiceViewController *)self blockingViewController];
  v5 = [childViewControllers containsObject:blockingViewController];

  return v5;
}

- (void)_showBlockingViewControllerForWebpage:(id)webpage withPolicy:(int64_t)policy animated:(BOOL)animated replyHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  webpageCopy = webpage;
  blockingViewController = [(STWebServiceViewController *)self blockingViewController];
  [blockingViewController updateAppearanceUsingPolicy:policy forWebpageURL:webpageCopy];

  if ([(STWebServiceViewController *)self URLIsBlocked])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    [(STWebServiceViewController *)self addChildViewController:blockingViewController];
    view = [blockingViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(STWebServiceViewController *)self view];
    [view2 addSubview:view];

    v15 = _NSDictionaryOfVariableBindings(@"blockingView", view, 0);
    v16 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[blockingView]|" options:0 metrics:0 views:v15];
    v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[blockingView]|" options:0 metrics:0 views:v15];
    v18 = [v16 arrayByAddingObjectsFromArray:v17];
    [NSLayoutConstraint activateConstraints:v18];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100003004;
    v19[3] = &unk_10000C650;
    v20 = blockingViewController;
    selfCopy = self;
    v22 = handlerCopy;
    [v20 showWithAnimation:animatedCopy completionHandler:v19];
  }
}

- (void)_hideBlockingViewControllerWithAnimation:(BOOL)animation replyHandler:(id)handler
{
  animationCopy = animation;
  handlerCopy = handler;
  blockingViewController = [(STWebServiceViewController *)self blockingViewController];
  if ([(STWebServiceViewController *)self URLIsBlocked])
  {
    [blockingViewController willMoveToParentViewController:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000314C;
    v8[3] = &unk_10000C650;
    v9 = blockingViewController;
    selfCopy = self;
    v11 = handlerCopy;
    [v9 hideWithAnimation:animationCopy completionHandler:v8];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_requestPolicyForCurrentURLWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  webpageUsage = [(STWebServiceViewController *)self webpageUsage];
  v5 = [webpageUsage URL];

  if (v5)
  {
    [(STWebServiceViewController *)self _requestPolicyForURL:v5 replyHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end