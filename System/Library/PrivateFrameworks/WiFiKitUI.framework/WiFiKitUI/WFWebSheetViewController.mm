@interface WFWebSheetViewController
- (WFWebSheetViewController)initWithDelegate:(id)delegate;
- (WFWebSheetViewControllerDelegate)delegate;
- (void)_finishSetupWithError:(id)error;
- (void)_requestRemoteViewController;
- (void)_showRemoteViewController;
- (void)dealloc;
- (void)remoteWebSheetViewController:(id)controller handleEvent:(unint64_t)event context:(id)context;
- (void)webSheetViewControllerServiceShouldTerminate;
@end

@implementation WFWebSheetViewController

- (WFWebSheetViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = WFWebSheetViewController;
  v5 = [(WFWebSheetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(WFWebSheetViewController *)v6 _requestRemoteViewController];
  }

  return v6;
}

- (void)dealloc
{
  cancelServiceInvocation = [(WFWebSheetViewController *)self cancelServiceInvocation];

  if (cancelServiceInvocation)
  {
    cancelServiceInvocation2 = [(WFWebSheetViewController *)self cancelServiceInvocation];
    invoke = [cancelServiceInvocation2 invoke];
  }

  v6.receiver = self;
  v6.super_class = WFWebSheetViewController;
  [(WFWebSheetViewController *)&v6 dealloc];
}

- (void)_requestRemoteViewController
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__WFWebSheetViewController__requestRemoteViewController__block_invoke;
  v4[3] = &unk_279EC61D0;
  v4[4] = self;
  v3 = [WFRemoteWebSheetViewController requestViewControllerWithConnectionHandler:v4];
  [(WFWebSheetViewController *)self setCancelServiceInvocation:v3];
}

void __56__WFWebSheetViewController__requestRemoteViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315650;
    v19 = "[WFWebSheetViewController _requestRemoteViewController]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_273FB9000, v7, v9, "%s: vc %@ error %@", buf, 0x20u);
  }

  if (v5)
  {
    [*(a1 + 32) setRemoteViewController:v5];
    v11 = *(a1 + 32);
    v12 = [v11 remoteViewController];
    [v12 setDelegate:v11];

    [*(a1 + 32) _showRemoteViewController];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA7E8];
    v17 = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.wifi" code:100 userInfo:v14];

    [*(a1 + 32) _finishSetupWithError:v15];
  }
}

- (void)_finishSetupWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5 && os_log_type_enabled(v5, v7))
  {
    v14 = 136315394;
    v15 = "[WFWebSheetViewController _finishSetupWithError:]";
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&dword_273FB9000, v5, v7, "%s: error %@", &v14, 0x16u);
  }

  presentingViewController = [(WFWebSheetViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  [(WFWebSheetViewController *)self _endDelayingPresentation];
  remoteViewController = [(WFWebSheetViewController *)self remoteViewController];
  [(WFWebSheetViewController *)self removeChildViewController:remoteViewController];

  [(WFWebSheetViewController *)self setRemoteViewController:0];
  delegate = [(WFWebSheetViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(WFWebSheetViewController *)self delegate];
    [delegate2 webSheetViewController:self didTerminateWithError:errorCopy];
  }
}

- (void)_showRemoteViewController
{
  remoteViewController = [(WFWebSheetViewController *)self remoteViewController];
  [(WFWebSheetViewController *)self addChildViewController:remoteViewController];

  remoteViewController2 = [(WFWebSheetViewController *)self remoteViewController];
  view = [remoteViewController2 view];

  view2 = [(WFWebSheetViewController *)self view];
  [view2 addSubview:view];

  view3 = [(WFWebSheetViewController *)self view];
  [view3 frame];
  [view setFrame:?];

  remoteViewController3 = [(WFWebSheetViewController *)self remoteViewController];
  [remoteViewController3 didMoveToParentViewController:self];
}

- (void)webSheetViewControllerServiceShouldTerminate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 3 && v3 && os_log_type_enabled(v3, v5))
  {
    v11 = 136315138;
    v12 = "[WFWebSheetViewController webSheetViewControllerServiceShouldTerminate]";
    _os_log_impl(&dword_273FB9000, v3, v5, "%s", &v11, 0xCu);
  }

  cancelServiceInvocation = [(WFWebSheetViewController *)self cancelServiceInvocation];
  invoke = [cancelServiceInvocation invoke];

  remoteViewController = [(WFWebSheetViewController *)self remoteViewController];
  disconnect = [remoteViewController disconnect];
}

- (void)remoteWebSheetViewController:(id)controller handleEvent:(unint64_t)event context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
  {
    v26 = 136315650;
    v27 = "[WFWebSheetViewController remoteWebSheetViewController:handleEvent:context:]";
    v28 = 2048;
    eventCopy = event;
    v30 = 2112;
    v31 = contextCopy;
    _os_log_impl(&dword_273FB9000, v8, v10, "%s: event %lu context %@", &v26, 0x20u);
  }

  if (event > 1)
  {
    if (event == 2)
    {
      delegate = [(WFWebSheetViewController *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        delegate2 = [(WFWebSheetViewController *)self delegate];
        [delegate2 webSheetViewControllerContentDidStartLoading:self];
        goto LABEL_22;
      }
    }

    else if (event == 3)
    {
      if (contextCopy)
      {
        delegate2 = [contextCopy error];
      }

      else
      {
        delegate2 = 0;
      }

      delegate3 = [(WFWebSheetViewController *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        delegate4 = [(WFWebSheetViewController *)self delegate];
        [delegate4 webSheetViewController:self didTerminateWithError:delegate2];
      }

      cancelServiceInvocation = [(WFWebSheetViewController *)self cancelServiceInvocation];
      invoke = [cancelServiceInvocation invoke];

      remoteViewController = [(WFWebSheetViewController *)self remoteViewController];
      disconnect = [remoteViewController disconnect];

      goto LABEL_22;
    }
  }

  else if (event)
  {
    if (event == 1)
    {
      delegate5 = [(WFWebSheetViewController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(WFWebSheetViewController *)self delegate];
        [delegate2 webSheetViewControllerContentReadyForPresentation:self];
LABEL_22:
      }
    }
  }

  else
  {
    delegate6 = [(WFWebSheetViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(WFWebSheetViewController *)self delegate];
      [delegate2 webSheetViewControllerContentDidFinishLoading:self];
      goto LABEL_22;
    }
  }
}

- (WFWebSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end