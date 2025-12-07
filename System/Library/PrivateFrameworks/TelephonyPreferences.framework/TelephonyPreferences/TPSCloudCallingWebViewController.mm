@interface TPSCloudCallingWebViewController
- (TPSCloudCallingWebViewController)initWithType:(int64_t)type;
- (void)_cancelButtonClicked:(id)clicked;
- (void)cancelWebView;
- (void)doProvisioningCanceled;
- (void)doProvisioningDone;
- (void)doProvisioningFailed;
- (void)doWebViewTimedOut;
- (void)loadURL:(id)l body:(id)body completion:(id)completion;
- (void)loadView;
- (void)loadWebViewWithSpinner:(id)spinner;
- (void)setupControllerInWebFrame:(id)frame;
- (void)webView:(id)view didFailLoadWithError:(id)error;
@end

@implementation TPSCloudCallingWebViewController

- (TPSCloudCallingWebViewController)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = TPSCloudCallingWebViewController;
  v4 = [(TPSCloudCallingWebViewController *)&v9 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v6 = objc_alloc_init(MEMORY[0x277D75D88]);
    webView = v5->_webView;
    v5->_webView = v6;
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v21 = [v3 initWithFrame:?];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v21 setBackgroundColor:whiteColor];

  [v21 setAutoresizingMask:18];
  [(TPSCloudCallingWebViewController *)self setView:v21];
  [v21 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  webView = [(TPSCloudCallingWebViewController *)self webView];
  [webView setFrame:{v7, v9, v11, v13}];

  webView2 = [(TPSCloudCallingWebViewController *)self webView];
  [webView2 setScalesPageToFit:1];

  webView3 = [(TPSCloudCallingWebViewController *)self webView];
  [webView3 setDelegate:self];

  webView4 = [(TPSCloudCallingWebViewController *)self webView];
  [webView4 setAutoresizingMask:18];

  webView5 = [(TPSCloudCallingWebViewController *)self webView];
  [v21 addSubview:webView5];

  v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonClicked_];
  navigationItem = [(TPSCloudCallingWebViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v19];
}

- (void)loadWebViewWithSpinner:(id)spinner
{
  spinnerCopy = spinner;
  v6 = TPSLog(spinnerCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "loadWebViewWithSpinner", buf, 2u);
  }

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:spinnerCopy];
  if (!self->_activityIndicator)
  {
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
    activityIndicator = self->_activityIndicator;
    self->_activityIndicator = v7;

    [(UIActivityIndicatorView *)self->_activityIndicator setAutoresizingMask:45];
    view = [(TPSCloudCallingWebViewController *)self view];
    [view center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
    [(UIWebView *)self->_webView addSubview:self->_activityIndicator];
  }

  v10 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TPSCloudCallingWebViewController_loadWebViewWithSpinner___block_invoke;
  block[3] = &unk_2782E3960;
  block[4] = self;
  dispatch_after(v10, MEMORY[0x277D85CD0], block);
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

void __59__TPSCloudCallingWebViewController_loadWebViewWithSpinner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  if (!v2 || (v4 = v2, [*(a1 + 32) body], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = TPSLog(v2, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Timed out trying to load carrier URL", v7, 2u);
    }

    [*(a1 + 32) doWebViewTimedOut];
  }
}

- (void)loadURL:(id)l body:(id)body completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  bodyCopy = body;
  completionCopy = completion;
  v12 = TPSLog(completionCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = lCopy;
    v29 = 2112;
    v30 = bodyCopy;
    _os_log_impl(&dword_21B8E9000, v12, OS_LOG_TYPE_DEFAULT, "LoadURL: %@ body: %@", buf, 0x16u);
  }

  url = self->_url;
  self->_url = lCopy;
  v14 = lCopy;

  body = self->_body;
  self->_body = bodyCopy;
  v16 = bodyCopy;

  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:completionCopy];
  v18 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v14 cachePolicy:1 timeoutInterval:30.0];
  [(NSURL *)v18 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (firstObject)
  {
    v21 = firstObject;
  }

  else
  {
    v21 = @"en";
  }

  [(NSURL *)v18 setValue:v21 forHTTPHeaderField:@"Accept-Language"];
  [(NSURL *)v18 setHTTPMethod:@"POST"];
  [(NSURL *)v18 setHTTPBody:v16];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[NSData length](v16, "length")];

  [(NSURL *)v18 setValue:v22 forHTTPHeaderField:@"Content-Length"];
  v25 = TPSLog(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&dword_21B8E9000, v25, OS_LOG_TYPE_DEFAULT, "Loading URL request: %@", buf, 0xCu);
  }

  webView = [(TPSCloudCallingWebViewController *)self webView];
  [webView loadRequest:v18];
}

- (void)cancelWebView
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Asked to cancel web view", v4, 2u);
  }

  [(TPSCloudCallingWebViewController *)self doProvisioningCanceled];
}

- (void)_cancelButtonClicked:(id)clicked
{
  v4 = TPSLog(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "_cancelButtonClicked", v5, 2u);
  }

  [(TPSCloudCallingWebViewController *)self doProvisioningCanceled];
}

- (void)doProvisioningDone
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "doProvisioningDone", buf, 2u);
  }

  completionBlock = [(TPSCloudCallingWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TPSCloudCallingWebViewController_doProvisioningDone__block_invoke;
  v7[3] = &unk_2782E3CD0;
  v8 = v5;
  v6 = v5;
  [(TPSCloudCallingWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __54__TPSCloudCallingWebViewController_doProvisioningDone__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)doProvisioningCanceled
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "doProvisioningCanceled", buf, 2u);
  }

  completionBlock = [(TPSCloudCallingWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TPSCloudCallingWebViewController_doProvisioningCanceled__block_invoke;
  v7[3] = &unk_2782E3CD0;
  v8 = v5;
  v6 = v5;
  [(TPSCloudCallingWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __58__TPSCloudCallingWebViewController_doProvisioningCanceled__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)doProvisioningFailed
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(TPSCloudCallingWebViewController *)v3 doProvisioningFailed];
  }

  completionBlock = [(TPSCloudCallingWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TPSCloudCallingWebViewController_doProvisioningFailed__block_invoke;
  v7[3] = &unk_2782E3CD0;
  v8 = v5;
  v6 = v5;
  [(TPSCloudCallingWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __56__TPSCloudCallingWebViewController_doProvisioningFailed__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 3);
  }

  return result;
}

- (void)doWebViewTimedOut
{
  v3 = TPSLog(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "doWebViewTimedOut", buf, 2u);
  }

  completionBlock = [(TPSCloudCallingWebViewController *)self completionBlock];
  v5 = [completionBlock copy];

  [(TPSCloudCallingWebViewController *)self setCompletionBlock:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__TPSCloudCallingWebViewController_doWebViewTimedOut__block_invoke;
  v7[3] = &unk_2782E3CD0;
  v8 = v5;
  v6 = v5;
  [(TPSCloudCallingWebViewController *)self dismissViewControllerAnimated:1 completion:v7];
}

uint64_t __53__TPSCloudCallingWebViewController_doWebViewTimedOut__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  errorCopy = error;
  v7 = TPSLog(errorCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TPSCloudCallingWebViewController webView:errorCopy didFailLoadWithError:v7];
  }

  if ([errorCopy code] != -999)
  {
    [(TPSCloudCallingWebViewController *)self doProvisioningFailed];
  }
}

- (void)setupControllerInWebFrame:(id)frame
{
  frameCopy = frame;
  globalContext = [frameCopy globalContext];
  if (!globalContext)
  {
    [TPSCloudCallingWebViewController setupControllerInWebFrame:];
  }

  v5 = globalContext;
  v6 = CloudCallingWebViewController_controllerClass;
  if (!CloudCallingWebViewController_controllerClass)
  {
    v6 = JSClassCreate(&CloudCallingWebViewController_classDefinition);
    CloudCallingWebViewController_controllerClass = v6;
  }

  v7 = JSObjectMake(v5, v6, self);
  if (!v7)
  {
    [TPSCloudCallingWebViewController setupControllerInWebFrame:];
  }

  v8 = v7;
  windowObject = [frameCopy windowObject];
  jSObject = [windowObject JSObject];

  if (!jSObject)
  {
    [TPSCloudCallingWebViewController setupControllerInWebFrame:];
  }

  v11 = JSStringCreateWithCFString(@"WiFiCallingWebViewController");
  JSObjectSetProperty(v5, jSObject, v11, v8, 0, 0);
}

- (void)webView:(uint64_t)a1 didFailLoadWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21B8E9000, a2, OS_LOG_TYPE_ERROR, "didFailLoadWithError: %@", &v2, 0xCu);
}

@end