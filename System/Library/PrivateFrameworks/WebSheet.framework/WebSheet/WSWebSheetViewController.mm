@interface WSWebSheetViewController
- (void)dismissViewController:(int64_t)controller;
- (void)handleProbeResult:(int64_t)result completionHandler:(id)handler;
- (void)loadView;
- (void)setCarPlayAndInternetMode:(BOOL)mode;
- (void)startWithURL:(id)l ssid:(id)ssid interface:(id)interface proxyConfiguration:(id)configuration enableTVMode:(BOOL)mode delegate:(id)delegate;
- (void)startWithURL:(id)l ssid:(id)ssid interface:(id)interface proxyConfiguration:(id)configuration showCancelMenu:(BOOL)menu delegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation WSWebSheetViewController

- (void)loadView
{
  NSLog(&cfstr_Loadview.isa, a2);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;

  v8 = [[WSWebSheetView alloc] initWithFrame:self webSheetViewController:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), v5, v7];
  [(WSWebSheetViewController *)self setView:v8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WSWebSheetViewController;
  [(WSWebSheetViewController *)&v6 viewDidAppear:appear];
  view = [(WSWebSheetViewController *)self view];
  window = [view window];
  [window makeKeyWindow];
}

- (void)dismissViewController:(int64_t)controller
{
  webSheetView = [(WSWebSheetViewController *)self webSheetView];
  delegate = [webSheetView delegate];

  if (delegate)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__WSWebSheetViewController_dismissViewController___block_invoke;
    v7[3] = &unk_279EAFE58;
    v7[4] = self;
    v7[5] = controller;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __50__WSWebSheetViewController_dismissViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webSheetView];
  [v2 dismissWebSheetWithCaptiveWebSheetResult:*(a1 + 40)];
}

- (void)startWithURL:(id)l ssid:(id)ssid interface:(id)interface proxyConfiguration:(id)configuration enableTVMode:(BOOL)mode delegate:(id)delegate
{
  modeCopy = mode;
  [(WSWebSheetViewController *)self startWithURL:l ssid:ssid interface:interface proxyConfiguration:configuration showCancelMenu:!mode delegate:delegate];
  view = [(WSWebSheetViewController *)self view];

  if (view)
  {
    view2 = [(WSWebSheetViewController *)self view];
    [view2 setEnableTVMode:modeCopy];
  }
}

- (void)setCarPlayAndInternetMode:(BOOL)mode
{
  modeCopy = mode;
  view = [(WSWebSheetViewController *)self view];

  if (view)
  {
    view2 = [(WSWebSheetViewController *)self view];
    [view2 setCarPlayAndInternet:modeCopy];
  }
}

- (void)startWithURL:(id)l ssid:(id)ssid interface:(id)interface proxyConfiguration:(id)configuration showCancelMenu:(BOOL)menu delegate:(id)delegate
{
  menuCopy = menu;
  lCopy = l;
  ssidCopy = ssid;
  interfaceCopy = interface;
  configurationCopy = configuration;
  delegateCopy = delegate;
  view = [(WSWebSheetViewController *)self view];

  if (view)
  {
    mEMORY[0x277CBAB38] = [MEMORY[0x277CBAB38] sharedHTTPCookieStorage];
    [mEMORY[0x277CBAB38] webui_applySafariCookieAcceptPolicy];
    view2 = [(WSWebSheetViewController *)self view];
    [view2 setDelegate:delegateCopy];
    [view2 setCurrentURL:lCopy];
    [view2 setProbeURL:lCopy];
    [view2 setSSID:ssidCopy];
    if (configurationCopy)
    {
      [view2 setProxyConfiguration:configurationCopy];
    }

    [view2 setShouldShowStayConnectedOptions:menuCopy];
    [view2 setWebViewWithInterfaceName:interfaceCopy];
    webView = [view2 webView];
    v22 = [MEMORY[0x277CBABA0] requestWithURL:lCopy];
    v23 = [webView loadRequest:v22];
  }

  else
  {
    NSLog(&cfstr_WebsheetViewIs.isa);
  }
}

- (void)handleProbeResult:(int64_t)result completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__WSWebSheetViewController_handleProbeResult_completionHandler___block_invoke;
  block[3] = &unk_279EAFFF8;
  v9 = handlerCopy;
  resultCopy = result;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__WSWebSheetViewController_handleProbeResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webSheetView];
  [v2 handleProbeResult:*(a1 + 48)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end