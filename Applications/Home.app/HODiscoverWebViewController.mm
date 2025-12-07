@interface HODiscoverWebViewController
- (HODiscoverWebViewController)initWithLocalizationDictionary:(id)dictionary;
- (HODiscoverWebViewController)initWithURLString:(id)string;
- (double)statusBarHeight;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_addConnectionIssueOverlayViewConstraints;
- (void)_addConstraintsForWebViewActivityIndicator;
- (void)_addContentViewConstraints;
- (void)_addWebViewConstraints;
- (void)_commonInitializer:(id)initializer;
- (void)_startWebViewActivityIndicator;
- (void)_stopWebViewActivityIndicator;
- (void)_updateNavigationBarAppearenceFromOffset;
- (void)_updateNetworkConnectionState:(unint64_t)state;
- (void)_updateScrollPocketAppearanceFromOffset;
- (void)applicationWentIntoBackground:(id)background;
- (void)connectionIssueOverlayRetryButtonPressed;
- (void)contentSizeDidChange:(id)change;
- (void)dealloc;
- (void)exitToAppleStoreAppOrSafariWithURL:(id)l;
- (void)presentModalDiscoverWebViewControllerWithURLString:(id)string;
- (void)pushNewDiscoverWebViewControllerWithURLString:(id)string;
- (void)reloadWebView:(id)view;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setupWebViewAndActivityIndicator;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)webViewNavigationStateUpdated:(id)updated navigationState:(unint64_t)state;
@end

@implementation HODiscoverWebViewController

- (HODiscoverWebViewController)initWithLocalizationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = HODiscoverWebViewController;
  v5 = [(HODiscoverWebViewController *)&v9 init];
  if (v5)
  {
    v6 = +[HODiscoverWebViewManager sharedInstance];
    v7 = [v6 getURLStringFromLocaleDictionary:dictionaryCopy];

    [(HODiscoverWebViewController *)v5 _commonInitializer:v7];
  }

  return v5;
}

- (HODiscoverWebViewController)initWithURLString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = HODiscoverWebViewController;
  v5 = [(HODiscoverWebViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HODiscoverWebViewController *)v5 _commonInitializer:stringCopy];
  }

  return v6;
}

- (void)_commonInitializer:(id)initializer
{
  [(HODiscoverWebViewController *)self setUrlString:initializer];
  [(HODiscoverWebViewController *)self setHasConnectedToNetwork:1];
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(HODiscoverWebViewController *)self setContentView:v4];

  contentView = [(HODiscoverWebViewController *)self contentView];
  [contentView setClipsToBounds:1];

  contentView2 = [(HODiscoverWebViewController *)self contentView];
  [contentView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = sub_100014198(v7);
  [(HODiscoverWebViewController *)self setNetworkPathMonitorDispatchQueue:v8];

  v9 = nw_path_monitor_create();
  [(HODiscoverWebViewController *)self setNetworkPathMonitor:v9];

  networkPathMonitor = [(HODiscoverWebViewController *)self networkPathMonitor];
  networkPathMonitorDispatchQueue = [(HODiscoverWebViewController *)self networkPathMonitorDispatchQueue];
  nw_path_monitor_set_queue(networkPathMonitor, networkPathMonitorDispatchQueue);

  networkPathMonitor2 = [(HODiscoverWebViewController *)self networkPathMonitor];
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_10001421C;
  update_handler[3] = &unk_1000C23A0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(networkPathMonitor2, update_handler);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v27 viewDidLoad];
  view = [(HODiscoverWebViewController *)self view];
  contentView = [(HODiscoverWebViewController *)self contentView];
  [view addSubview:contentView];

  [(HODiscoverWebViewController *)self _addContentViewConstraints];
  v5 = +[NSBundle mainBundle];
  v6 = @"HOTabDiscoverTitle";
  v7 = [v5 localizedStringForKey:@"HOTabDiscoverTitle" value:@"_" table:@"HOLocalizable"];

  v8 = [@"_" isEqualToString:v7];
  if (v8)
  {
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = sub_100016B2C(v8);
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"HOTabDiscoverTitle" value:@"HOTabDiscoverTitle" table:v14];

        if (![(__CFString *)v16 isEqualToString:@"HOTabDiscoverTitle"])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          v16 = @"_";
          break;
        }
      }

      v6 = @"HOTabDiscoverTitle";
    }

    else
    {
      v16 = @"_";
    }

    v7 = v16;
  }

  if ([@"_" isEqualToString:v7])
  {
    NSLog(@"Sensitive key '%@' not found!", @"HOTabDiscoverTitle");
  }

  else
  {
    v6 = v7;
  }

  [(HODiscoverWebViewController *)self setTitle:v6];
  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    navigationController = [(HODiscoverWebViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:0];

    v32 = NSForegroundColorAttributeName;
    v19 = +[UIColor labelColor];
    v33 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    navigationController2 = [(HODiscoverWebViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setTitleTextAttributes:v20];

    navigationController3 = [(HODiscoverWebViewController *)self navigationController];
    [navigationController3 setModalPresentationStyle:0];
  }

  networkPathMonitor = [(HODiscoverWebViewController *)self networkPathMonitor];
  nw_path_monitor_start(networkPathMonitor);

  [(HODiscoverWebViewController *)self _updateNetworkConnectionState:0];
  v25 = [UIColor colorNamed:@"background-color-discover"];
  view2 = [(HODiscoverWebViewController *)self view];
  [view2 setBackgroundColor:v25];
}

- (void)viewWillAppear:(BOOL)appear
{
  v26.receiver = self;
  v26.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v26 viewWillAppear:appear];
  [(HODiscoverWebViewController *)self setupWebViewAndActivityIndicator];
  v4 = +[HODiscoverWebViewManager sharedInstance];
  webView = [(HODiscoverWebViewController *)self webView];
  v6 = [v4 getWebViewNavigationStateForWebView:webView];

  webView2 = [(HODiscoverWebViewController *)self webView];
  [(HODiscoverWebViewController *)self webViewNavigationStateUpdated:webView2 navigationState:v6];

  applicationBackgroundedDate = [(HODiscoverWebViewController *)self applicationBackgroundedDate];
  [applicationBackgroundedDate timeIntervalSinceNow];
  v10 = fabs(v9);
  v11 = +[HODiscoverWebViewManager sharedInstance];
  [v11 cacheRefreshTimeInterval];
  v13 = v12;

  v14 = +[HODiscoverWebViewManager sharedInstance];
  allowForcedCacheReload = [v14 allowForcedCacheReload];

  if (v10 > v13 || allowForcedCacheReload)
  {
    v16 = +[HODiscoverWebViewManager sharedInstance];
    [v16 reloadWebViews];
  }

  if (v6 == 2)
  {
    v17 = +[HODiscoverWebViewManager sharedInstance];
    [v17 reloadWebViews];
  }

  v18 = +[HODiscoverWebViewManager sharedInstance];
  [v18 setDelegate:self];

  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      navigationController = [(HODiscoverWebViewController *)self navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setPrefersLargeTitles:0];

      v27 = NSForegroundColorAttributeName;
      v21 = +[UIColor labelColor];
      v28 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      navigationController2 = [(HODiscoverWebViewController *)self navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 setTitleTextAttributes:v22];

      navigationController3 = [(HODiscoverWebViewController *)self navigationController];
      [navigationController3 setModalPresentationStyle:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v5 viewWillDisappear:disappear];
  if (+[HFUtilities isAMac])
  {
    v4 = +[NSDate date];
    [(HODiscoverWebViewController *)self setApplicationBackgroundedDate:v4];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HODiscoverWebViewController;
  [(HODiscoverWebViewController *)&v3 viewDidLayoutSubviews];
  [(HODiscoverWebViewController *)self _updateNavigationBarAppearenceFromOffset];
}

- (void)setupWebViewAndActivityIndicator
{
  webView = [(HODiscoverWebViewController *)self webView];
  if (!webView || (v4 = webView, -[HODiscoverWebViewController contentView](self, "contentView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 subviews], v6 = objc_claimAutoreleasedReturnValue(), -[HODiscoverWebViewController webView](self, "webView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, v5, v4, (v8 & 1) == 0))
  {
    webView2 = [(HODiscoverWebViewController *)self webView];

    if (!webView2)
    {
      v10 = +[HODiscoverWebViewManager sharedInstance];
      urlString = [(HODiscoverWebViewController *)self urlString];
      v12 = [v10 webViewForURLString:urlString];
      [(HODiscoverWebViewController *)self setWebView:v12];

      webView3 = [(HODiscoverWebViewController *)self webView];
      [webView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      webView4 = [(HODiscoverWebViewController *)self webView];
      [webView4 setOpaque:0];

      webView5 = [(HODiscoverWebViewController *)self webView];
      [webView5 setClipsToBounds:1];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        webView6 = [(HODiscoverWebViewController *)self webView];
        scrollView = [webView6 scrollView];
        [scrollView contentInset];
        v19 = v18;
        v21 = v20;
        v23 = v22;

        [(HODiscoverWebViewController *)self statusBarHeight];
        v25 = v24;
        webView7 = [(HODiscoverWebViewController *)self webView];
        scrollView2 = [webView7 scrollView];
        [scrollView2 setContentInset:{v25, v19, v21, v23}];
      }

      if (+[HFUtilities isAMac])
      {
        navigationController = [(HODiscoverWebViewController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar setHidden:1];
      }

      webView8 = [(HODiscoverWebViewController *)self webView];
      configuration = [webView8 configuration];
      [configuration setAllowsInlineMediaPlayback:1];

      webView9 = [(HODiscoverWebViewController *)self webView];
      configuration2 = [webView9 configuration];
      [configuration2 setMediaTypesRequiringUserActionForPlayback:1];

      webView10 = [(HODiscoverWebViewController *)self webView];
      [webView10 setAllowsLinkPreview:0];

      v35 = +[NSDate date];
      [(HODiscoverWebViewController *)self setApplicationBackgroundedDate:v35];
    }

    view = [(HODiscoverWebViewController *)self view];
    subviews = [view subviews];
    webView11 = [(HODiscoverWebViewController *)self webView];
    v39 = [subviews containsObject:webView11];

    if ((v39 & 1) == 0)
    {
      v40 = [[HODiscoverWebKitContentController alloc] initWithDelegate:self];
      webView12 = [(HODiscoverWebViewController *)self webView];
      configuration3 = [webView12 configuration];
      userContentController = [configuration3 userContentController];
      [userContentController removeScriptMessageHandlerForName:off_1000D8788];

      webView13 = [(HODiscoverWebViewController *)self webView];
      configuration4 = [webView13 configuration];
      userContentController2 = [configuration4 userContentController];
      [userContentController2 addScriptMessageHandler:v40 name:off_1000D8788];

      webView14 = [(HODiscoverWebViewController *)self webView];
      configuration5 = [webView14 configuration];
      userContentController3 = [configuration5 userContentController];
      [userContentController3 removeScriptMessageHandlerForName:off_1000D8790];

      webView15 = [(HODiscoverWebViewController *)self webView];
      configuration6 = [webView15 configuration];
      userContentController4 = [configuration6 userContentController];
      [userContentController4 addScriptMessageHandler:v40 name:off_1000D8790];

      webView16 = [(HODiscoverWebViewController *)self webView];
      [webView16 setUIDelegate:self];

      webView17 = [(HODiscoverWebViewController *)self webView];
      scrollView3 = [webView17 scrollView];
      [scrollView3 setDelegate:self];

      contentView = [(HODiscoverWebViewController *)self contentView];
      webView18 = [(HODiscoverWebViewController *)self webView];
      [contentView addSubview:webView18];

      contentView2 = [(HODiscoverWebViewController *)self contentView];
      webView19 = [(HODiscoverWebViewController *)self webView];
      [contentView2 sendSubviewToBack:webView19];

      [(HODiscoverWebViewController *)self _addWebViewConstraints];
      v60 = +[NSNotificationCenter defaultCenter];
      [v60 addObserver:self selector:"reloadWebView:" name:UIApplicationWillEnterForegroundNotification object:0];

      v61 = +[NSNotificationCenter defaultCenter];
      [v61 addObserver:self selector:"applicationWentIntoBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

      v62 = +[NSNotificationCenter defaultCenter];
      [v62 addObserver:self selector:"contentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    }

    webViewActivityIndicator = [(HODiscoverWebViewController *)self webViewActivityIndicator];

    if (!webViewActivityIndicator)
    {
      v64 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
      [(HODiscoverWebViewController *)self setWebViewActivityIndicator:v64];

      webViewActivityIndicator2 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [webViewActivityIndicator2 setHidesWhenStopped:1];

      webViewActivityIndicator3 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [webViewActivityIndicator3 setTranslatesAutoresizingMaskIntoConstraints:0];

      contentView3 = [(HODiscoverWebViewController *)self contentView];
      webViewActivityIndicator4 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
      [contentView3 addSubview:webViewActivityIndicator4];

      [(HODiscoverWebViewController *)self _addConstraintsForWebViewActivityIndicator];
    }
  }
}

- (double)statusBarHeight
{
  if (+[HFUtilities isAnIPad]&& ([(HODiscoverWebViewController *)self navigationController], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    navigationController = [(HODiscoverWebViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar size];
    v7 = v6;
  }

  else
  {
    navigationController = +[UIApplication sharedApplication];
    navigationBar = [navigationController windows];
    firstObject = [navigationBar firstObject];
    windowScene = [firstObject windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
    v7 = v11;
  }

  return v7;
}

- (void)_addContentViewConstraints
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    contentView = [(HODiscoverWebViewController *)self contentView];
    leadingAnchor = [contentView leadingAnchor];
    view = [(HODiscoverWebViewController *)self view];
    safeAreaLayoutGuide = [view safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    contentView6 = [leadingAnchor constraintEqualToAnchor:?];
    v32[0] = contentView6;
    contentView2 = [(HODiscoverWebViewController *)self contentView];
    trailingAnchor = [contentView2 trailingAnchor];
    view2 = [(HODiscoverWebViewController *)self view];
    safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide2 trailingAnchor];
    contentView7 = view5 = trailingAnchor;
    v21 = [trailingAnchor constraintEqualToAnchor:?];
    v32[1] = v21;
    contentView3 = [(HODiscoverWebViewController *)self contentView];
    topAnchor = [contentView3 topAnchor];
    view3 = [(HODiscoverWebViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    bottomAnchor3 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = bottomAnchor3;
    contentView4 = [(HODiscoverWebViewController *)self contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    view4 = [(HODiscoverWebViewController *)self view];
    bottomAnchor2 = [view4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v12;
    v13 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v13];

    leadingAnchor3 = leadingAnchor;
    contentView5 = contentView;
  }

  else
  {
    contentView5 = [(HODiscoverWebViewController *)self contentView];
    leadingAnchor3 = [contentView5 leadingAnchor];
    view = [(HODiscoverWebViewController *)self view];
    safeAreaLayoutGuide = [view leadingAnchor];
    leadingAnchor2 = [leadingAnchor3 constraintEqualToAnchor:?];
    v31[0] = leadingAnchor2;
    contentView6 = [(HODiscoverWebViewController *)self contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    view5 = [(HODiscoverWebViewController *)self view];
    [view5 trailingAnchor];
    view2 = contentView2 = trailingAnchor2;
    safeAreaLayoutGuide2 = [trailingAnchor2 constraintEqualToAnchor:?];
    v31[1] = safeAreaLayoutGuide2;
    contentView7 = [(HODiscoverWebViewController *)self contentView];
    topAnchor3 = [contentView7 topAnchor];
    contentView3 = [(HODiscoverWebViewController *)self view];
    topAnchor = [contentView3 topAnchor];
    v21 = topAnchor3;
    view3 = [topAnchor3 constraintEqualToAnchor:topAnchor];
    v31[2] = view3;
    topAnchor2 = [(HODiscoverWebViewController *)self contentView];
    bottomAnchor3 = [topAnchor2 bottomAnchor];
    contentView4 = [(HODiscoverWebViewController *)self view];
    bottomAnchor = [contentView4 bottomAnchor];
    view4 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor];
    v31[3] = view4;
    bottomAnchor2 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:bottomAnchor2];
  }
}

- (void)_addWebViewConstraints
{
  webView = [(HODiscoverWebViewController *)self webView];
  topAnchor = [webView topAnchor];
  contentView = [(HODiscoverWebViewController *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];

  webView2 = [(HODiscoverWebViewController *)self webView];
  leadingAnchor = [webView2 leadingAnchor];
  contentView2 = [(HODiscoverWebViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v19;
  webView3 = [(HODiscoverWebViewController *)self webView];
  trailingAnchor = [webView3 trailingAnchor];
  contentView3 = [(HODiscoverWebViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v10;
  v24[2] = v18;
  webView4 = [(HODiscoverWebViewController *)self webView];
  bottomAnchor = [webView4 bottomAnchor];
  contentView4 = [(HODiscoverWebViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

- (void)_addConnectionIssueOverlayViewConstraints
{
  connectionIssueOverlayView = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  leadingAnchor = [connectionIssueOverlayView leadingAnchor];
  contentView = [(HODiscoverWebViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v19;
  connectionIssueOverlayView2 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  trailingAnchor = [connectionIssueOverlayView2 trailingAnchor];
  contentView2 = [(HODiscoverWebViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v14;
  connectionIssueOverlayView3 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  topAnchor = [connectionIssueOverlayView3 topAnchor];
  contentView3 = [(HODiscoverWebViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v6;
  connectionIssueOverlayView4 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
  bottomAnchor = [connectionIssueOverlayView4 bottomAnchor];
  contentView4 = [(HODiscoverWebViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_addConstraintsForWebViewActivityIndicator
{
  webViewActivityIndicator = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  centerXAnchor = [webViewActivityIndicator centerXAnchor];
  contentView = [(HODiscoverWebViewController *)self contentView];
  centerXAnchor2 = [contentView centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v14[0] = v6;
  webViewActivityIndicator2 = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  centerYAnchor = [webViewActivityIndicator2 centerYAnchor];
  contentView2 = [(HODiscoverWebViewController *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateNetworkConnectionState:(unint64_t)state
{
  connectionIssueOverlayView = [(HODiscoverWebViewController *)self connectionIssueOverlayView];

  if (connectionIssueOverlayView)
  {
    if ([(HODiscoverWebViewController *)self currentConnectionIssueState]== state)
    {
      return;
    }
  }

  else
  {
    v6 = [[HODiscoverConnectionIssueOverlayView alloc] initWithFrame:self withDelegate:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(HODiscoverWebViewController *)self setConnectionIssueOverlayView:v6];

    connectionIssueOverlayView2 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
    [connectionIssueOverlayView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(HODiscoverWebViewController *)self contentView];
    connectionIssueOverlayView3 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
    [contentView addSubview:connectionIssueOverlayView3];

    [(HODiscoverWebViewController *)self _addConnectionIssueOverlayViewConstraints];
  }

  switch(state)
  {
    case 2uLL:
      connectionIssueOverlayView4 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [connectionIssueOverlayView4 setConnectionIssueType:2];

      connectionIssueOverlayView5 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [connectionIssueOverlayView5 setHidden:0];

      webView = [(HODiscoverWebViewController *)self webView];
      v11 = 1;
      [webView setHidden:1];
      goto LABEL_12;
    case 1uLL:
      connectionIssueOverlayView6 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [connectionIssueOverlayView6 setConnectionIssueType:1];

      connectionIssueOverlayView7 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      [connectionIssueOverlayView7 setHidden:0];

      webView = [(HODiscoverWebViewController *)self webView];
      [webView setHidden:1];
      v11 = 0;
      goto LABEL_12;
    case 0uLL:
      connectionIssueOverlayView8 = [(HODiscoverWebViewController *)self connectionIssueOverlayView];
      v11 = 1;
      [connectionIssueOverlayView8 setHidden:1];

      webView2 = [(HODiscoverWebViewController *)self webView];
      [webView2 setHidden:0];

      if ([(HODiscoverWebViewController *)self hasConnectedToNetwork])
      {
LABEL_13:
        [(HODiscoverWebViewController *)self setHasConnectedToNetwork:v11];
        break;
      }

      webView = +[HODiscoverWebViewManager sharedInstance];
      [webView reloadWebViews];
LABEL_12:

      goto LABEL_13;
  }

  [(HODiscoverWebViewController *)self setCurrentConnectionIssueState:state];
}

- (void)_updateNavigationBarAppearenceFromOffset
{
  webView = [(HODiscoverWebViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v6 = v5 / 20.0;

  v7 = 1.0;
  if (v6 > 1.0)
  {
    navigationController = [(HODiscoverWebViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    v10 = navigationBar;
    v11 = 1.0;
LABEL_5:
    [navigationBar _setTitleOpacity:v11];
    goto LABEL_7;
  }

  navigationController = [(HODiscoverWebViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  v10 = navigationBar;
  if (v6 < 0.0)
  {
    v7 = 0.0;
    v11 = 0.0;
    goto LABEL_5;
  }

  [navigationBar _setTitleOpacity:v6];
  v7 = v6;
LABEL_7:

  navigationController2 = [(HODiscoverWebViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 _setBackgroundOpacity:v7];

  [(HODiscoverWebViewController *)self _updateScrollPocketAppearanceFromOffset];
}

- (void)_updateScrollPocketAppearanceFromOffset
{
  webView = [(HODiscoverWebViewController *)self webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v6 = v5;
  webView2 = [(HODiscoverWebViewController *)self webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 contentInset];
  v10 = v6 / -v9;

  webView3 = [(HODiscoverWebViewController *)self webView];
  scrollView3 = [webView3 scrollView];
  [scrollView3 _setHiddenPocketEdges:v10 >= 1.0];
}

- (void)_startWebViewActivityIndicator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016168;
  v4[3] = &unk_1000C23C8;
  v4[4] = self;
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v4 block:1.5];
  [(HODiscoverWebViewController *)self setWebViewActivityIndicatorDelayTimer:v3];
}

- (void)_stopWebViewActivityIndicator
{
  webViewActivityIndicatorDelayTimer = [(HODiscoverWebViewController *)self webViewActivityIndicatorDelayTimer];

  if (webViewActivityIndicatorDelayTimer)
  {
    webViewActivityIndicatorDelayTimer2 = [(HODiscoverWebViewController *)self webViewActivityIndicatorDelayTimer];
    [webViewActivityIndicatorDelayTimer2 invalidate];
  }

  [(HODiscoverWebViewController *)self setWebViewActivityIndicatorDelayTimer:0];
  webViewActivityIndicator = [(HODiscoverWebViewController *)self webViewActivityIndicator];
  [webViewActivityIndicator stopAnimating];
}

- (void)reloadWebView:(id)view
{
  applicationBackgroundedDate = [(HODiscoverWebViewController *)self applicationBackgroundedDate];
  [applicationBackgroundedDate timeIntervalSinceNow];
  v5 = fabs(v4);
  v6 = +[HODiscoverWebViewManager sharedInstance];
  [v6 cacheRefreshTimeInterval];
  if (v5 > v7)
  {
  }

  else
  {
    v8 = +[HODiscoverWebViewManager sharedInstance];
    allowForcedCacheReload = [v8 allowForcedCacheReload];

    if (!allowForcedCacheReload)
    {
      return;
    }
  }

  v10 = +[HODiscoverWebViewManager sharedInstance];
  [v10 reloadWebViews];
}

- (void)applicationWentIntoBackground:(id)background
{
  v4 = +[NSDate date];
  [(HODiscoverWebViewController *)self setApplicationBackgroundedDate:v4];
}

- (void)contentSizeDidChange:(id)change
{
  applicationBackgroundedDate = [(HODiscoverWebViewController *)self applicationBackgroundedDate];
  [applicationBackgroundedDate timeIntervalSinceNow];
  v4 = fabs(v3);
  v5 = +[HODiscoverWebViewManager sharedInstance];
  [v5 cacheRefreshTimeInterval];
  if (v4 > v6)
  {
  }

  else
  {
    v7 = +[HODiscoverWebViewManager sharedInstance];
    allowForcedCacheReload = [v7 allowForcedCacheReload];

    if (allowForcedCacheReload)
    {
      return;
    }

    applicationBackgroundedDate = +[HODiscoverWebViewManager sharedInstance];
    [applicationBackgroundedDate reloadWebViews];
  }
}

- (void)pushNewDiscoverWebViewControllerWithURLString:(id)string
{
  stringCopy = string;
  v6 = [[HODiscoverModalWebViewController alloc] initWithURLString:stringCopy];

  navigationController = [(HODiscoverWebViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)presentModalDiscoverWebViewControllerWithURLString:(id)string
{
  stringCopy = string;
  v8 = [[HODiscoverModalWebViewController alloc] initWithURLString:stringCopy];

  if (+[HFUtilities isAnIPad])
  {
    presentationController = [(HODiscoverModalWebViewController *)v8 presentationController];
    [presentationController setDelegate:self];

    [(HODiscoverModalWebViewController *)v8 setTransitioningDelegate:self];
  }

  v6 = [[UINavigationController alloc] initWithRootViewController:v8];
  navigationController = [(HODiscoverWebViewController *)self navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)exitToAppleStoreAppOrSafariWithURL:(id)l
{
  lCopy = l;
  v3 = +[HFOpenURLRouter sharedInstance];
  v4 = [v3 openURL:lCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  [scrollCopy setContentOffset:0.0];

  [(HODiscoverWebViewController *)self _updateNavigationBarAppearenceFromOffset];
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  v6 = [(HODiscoverWebViewController *)self webView:zooming];
  scrollView = [v6 scrollView];
  pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:0];
}

- (void)webViewNavigationStateUpdated:(id)updated navigationState:(unint64_t)state
{
  updatedCopy = updated;
  webView = [(HODiscoverWebViewController *)self webView];

  if (webView == updatedCopy)
  {
    if (state == 2)
    {
      [(HODiscoverWebViewController *)self _stopWebViewActivityIndicator];
      v8 = 2;
    }

    else
    {
      if (state == 1)
      {
        [(HODiscoverWebViewController *)self _stopWebViewActivityIndicator];
      }

      else
      {
        if (state)
        {
          return;
        }

        [(HODiscoverWebViewController *)self _startWebViewActivityIndicator];
      }

      v8 = 0;
    }

    [(HODiscoverWebViewController *)self _updateNetworkConnectionState:v8];
  }
}

- (void)connectionIssueOverlayRetryButtonPressed
{
  v2 = +[HODiscoverWebViewManager sharedInstance];
  [v2 reloadWebViews];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[HODiscoverModalPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

@end