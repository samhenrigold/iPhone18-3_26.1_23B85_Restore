@interface WFRemoteWebSheetViewController
+ (id)requestViewControllerWithConnectionHandler:(id)handler;
- (WFRemoteWebSheetViewControllerDelegate)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)webSheetViewControllerContentDidFinishLoading;
- (void)webSheetViewControllerContentDidStartLoading;
- (void)webSheetViewControllerContentReadyForPresentation;
@end

@implementation WFRemoteWebSheetViewController

+ (id)requestViewControllerWithConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [objc_opt_class() requestViewController:@"WebSheetViewController" fromServiceWithBundleIdentifier:@"com.apple.NanoWebSheet" connectionHandler:handlerCopy];

  return v4;
}

- (void)viewDidLoad
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = WFRemoteWebSheetViewController;
  [(WFRemoteWebSheetViewController *)&v7 viewDidLoad];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    *buf = 136315138;
    v9 = "[WFRemoteWebSheetViewController viewDidLoad]";
    _os_log_impl(&dword_273FB9000, v3, v5, "%s", buf, 0xCu);
  }

  [(WFRemoteWebSheetViewController *)self _setupButtonListener];
}

- (void)viewDidAppear:(BOOL)appear
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(WFRemoteWebSheetViewController *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)webSheetViewControllerContentDidStartLoading
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v8 = 136315138;
    v9 = "[WFRemoteWebSheetViewController webSheetViewControllerContentDidStartLoading]";
    _os_log_impl(&dword_273FB9000, v3, v5, "%s", &v8, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:0 context:0];
}

- (void)webSheetViewControllerContentReadyForPresentation
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v8 = 136315138;
    v9 = "[WFRemoteWebSheetViewController webSheetViewControllerContentReadyForPresentation]";
    _os_log_impl(&dword_273FB9000, v3, v5, "%s", &v8, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:1 context:0];
}

- (void)webSheetViewControllerContentDidFinishLoading
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v8 = 136315138;
    v9 = "[WFRemoteWebSheetViewController webSheetViewControllerContentDidFinishLoading]";
    _os_log_impl(&dword_273FB9000, v3, v5, "%s", &v8, 0xCu);
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];
  [delegate remoteWebSheetViewController:self handleEvent:2 context:0];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v13 = 136315394;
    v14 = "[WFRemoteWebSheetViewController viewServiceDidTerminateWithError:]";
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: error %@", &v13, 0x16u);
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D77620]])
    {
      [errorCopy code];
    }
  }

  delegate = [(WFRemoteWebSheetViewController *)self delegate];

  if (delegate)
  {
    v11 = objc_alloc_init(WFRemoteWebSheetViewControllerErrorContext);
    [(WFRemoteWebSheetViewControllerErrorContext *)v11 setError:errorCopy];
    delegate2 = [(WFRemoteWebSheetViewController *)self delegate];
    [delegate2 remoteWebSheetViewController:self handleEvent:3 context:v11];
  }
}

- (WFRemoteWebSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end