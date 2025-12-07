@interface WFCaptiveContext
- (WFCaptiveContext)init;
- (void)_presentationTimerFired:(id)fired;
- (void)_readyForPresentation:(id)presentation;
- (void)cancel;
- (void)init;
- (void)webSheetViewController:(id)controller didTerminateWithError:(id)error;
- (void)webSheetViewControllerContentReadyForPresentation:(id)presentation;
@end

@implementation WFCaptiveContext

- (WFCaptiveContext)init
{
  v8.receiver = self;
  v8.super_class = WFCaptiveContext;
  v2 = [(WFCaptiveContext *)&v8 init];
  v3 = [objc_alloc(MEMORY[0x277D7BA10]) initWithDelegate:v2];
  webSheetViewController = v2->_webSheetViewController;
  v2->_webSheetViewController = v3;

  if (v2->_webSheetViewController)
  {
    v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:v2 target:sel__presentationTimerFired_ selector:0 userInfo:0 repeats:10.0];
    timer = v2->_timer;
    v2->_timer = v5;
  }

  else
  {
    [(WFCaptiveContext *)v2 init];
    return 0;
  }

  return v2;
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(2uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) && v3 && os_log_type_enabled(v3, v5))
  {
    v8 = 136315138;
    v9 = "[WFCaptiveContext cancel]";
    _os_log_impl(&dword_273ECD000, v3, v5, "%s", &v8, 0xCu);
  }

  completionHandler = [(WFCaptiveContext *)self completionHandler];
  completionHandler[2]();
}

- (void)_presentationTimerFired:(id)fired
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(WFCaptiveContext *)self readyForPresentation])
  {
    v4 = WFLogForCategory(2uLL);
    v5 = OSLogForWFLogLevel(1uLL);
    v6 = v5;
    if (WFCurrentLogLevel(v5, v7) && v4)
    {
      v8 = v4;
      if (os_log_type_enabled(v8, v6))
      {
        webSheetViewController = [(WFCaptiveContext *)self webSheetViewController];
        v11 = 136315394;
        v12 = "[WFCaptiveContext _presentationTimerFired:]";
        v13 = 2112;
        v14 = webSheetViewController;
        _os_log_impl(&dword_273ECD000, v8, v6, "%s: presenting view controller %@", &v11, 0x16u);
      }
    }

    webSheetViewController2 = [(WFCaptiveContext *)self webSheetViewController];
    [(WFCaptiveContext *)self _readyForPresentation:webSheetViewController2];
  }
}

- (void)_readyForPresentation:(id)presentation
{
  presentationCopy = presentation;
  readyForPresentationHandler = [(WFCaptiveContext *)self readyForPresentationHandler];
  (readyForPresentationHandler)[2](readyForPresentationHandler, presentationCopy);

  timer = [(WFCaptiveContext *)self timer];
  [timer invalidate];

  [(WFCaptiveContext *)self setTimer:0];
}

- (void)webSheetViewControllerContentReadyForPresentation:(id)presentation
{
  v13 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v5 = WFLogForCategory(2uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v9 = 136315394;
    v10 = "[WFCaptiveContext webSheetViewControllerContentReadyForPresentation:]";
    v11 = 2112;
    v12 = presentationCopy;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: viewController %@", &v9, 0x16u);
  }

  [(WFCaptiveContext *)self _readyForPresentation:presentationCopy];
}

- (void)webSheetViewController:(id)controller didTerminateWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = WFLogForCategory(2uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10 = 136315394;
    v11 = "[WFCaptiveContext webSheetViewController:didTerminateWithError:]";
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&dword_273ECD000, v6, v8, "%s: error %@", &v10, 0x16u);
  }

  [(WFCaptiveContext *)self cancel];
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(2uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = 136315138;
    v7 = "[WFCaptiveContext init]";
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: web sheet view controller is nil", &v6, 0xCu);
  }
}

@end