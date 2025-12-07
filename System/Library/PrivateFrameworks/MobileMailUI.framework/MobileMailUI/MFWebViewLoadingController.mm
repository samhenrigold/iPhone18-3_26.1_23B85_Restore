@interface MFWebViewLoadingController
- (MFMailWebProcessDelegate)webProcessDelegate;
- (MFWebViewLoadingController)init;
- (void)_doIssueLoadRequest;
- (void)_reconveneWebProcessBundle;
- (void)_registerWebProcessDelegate:(id)delegate;
- (void)_unregisterWebProcessDelegate:(id)delegate;
- (void)dealloc;
- (void)reload;
- (void)remoteContentURLSession:(id)session failedToProxyURL:(id)l failureReason:(int64_t)reason;
- (void)requestWebViewLoadWithContentRepresentation:(id)representation;
- (void)requestWebViewLoadWithError:(id)error;
- (void)requestWebViewLoadWithoutShowingMessageWithRepresentation:(id)representation;
- (void)setContentRepresentation:(id)representation;
- (void)setLoadingURL:(id)l;
- (void)setWebProcessDelegate:(id)delegate;
- (void)slapWebView;
- (void)stopLoading;
@end

@implementation MFWebViewLoadingController

- (MFWebViewLoadingController)init
{
  v18.receiver = self;
  v18.super_class = MFWebViewLoadingController;
  v2 = [(MFWebViewLoadingController *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_webProcessPluginNeedsUpdate = 1;
    v4 = +[MFWKWebViewFactory sharedWebViewFactory];
    webView = [v4 webView];
    webView = v3->_webView;
    v3->_webView = webView;

    v7 = objc_alloc_init(MFWebViewDictionary);
    webViewConstants = v3->_webViewConstants;
    v3->_webViewConstants = v7;

    ec_attributionExpression = [MEMORY[0x277CCAC68] ec_attributionExpression];
    pattern = [ec_attributionExpression pattern];
    [(MFWebViewDictionary *)v3->_webViewConstants setObject:pattern forKeyedSubscript:@"outdentedAttributionsPattern"];

    v11 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_2826FEA60];
    remoteObjectInterface = v3->_remoteObjectInterface;
    v3->_remoteObjectInterface = v11;

    v13 = v3->_remoteObjectInterface;
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    [(_WKRemoteObjectInterface *)v13 setClasses:v16 forSelector:sel_webProcessDidFinishDocumentLoadForURL_andRequestedRemoteURLs_ argumentIndex:1 ofReply:0];

    [(MFWebViewLoadingController *)v3 _reconveneWebProcessBundle];
  }

  return v3;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);
  [(MFWebViewLoadingController *)self _unregisterWebProcessDelegate:WeakRetained];

  v4.receiver = self;
  v4.super_class = MFWebViewLoadingController;
  [(MFWebViewLoadingController *)&v4 dealloc];
}

- (void)_unregisterWebProcessDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    webView = [(MFWebViewLoadingController *)self webView];
    _remoteObjectRegistry = [webView _remoteObjectRegistry];
    v6 = [MEMORY[0x277D28278] weakProxyForObject:delegateCopy];
    remoteObjectInterface = [(MFWebViewLoadingController *)self remoteObjectInterface];
    [_remoteObjectRegistry unregisterExportedObject:v6 interface:remoteObjectInterface];

    v8 = +[MFWKWebViewFactory sharedWebViewFactory];
    urlSession = [v8 urlSession];

    [urlSession unregisterObserver:self];
  }
}

- (void)_registerWebProcessDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    webView = [(MFWebViewLoadingController *)self webView];
    _remoteObjectRegistry = [webView _remoteObjectRegistry];
    v6 = [MEMORY[0x277D28278] weakProxyForObject:delegateCopy];
    remoteObjectInterface = [(MFWebViewLoadingController *)self remoteObjectInterface];
    [_remoteObjectRegistry registerExportedObject:v6 interface:remoteObjectInterface];

    v8 = +[MFWKWebViewFactory sharedWebViewFactory];
    urlSession = [v8 urlSession];

    [urlSession registerObserver:self];
  }
}

- (void)setWebProcessDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);
  if (WeakRetained != obj)
  {
    [(MFWebViewLoadingController *)self _unregisterWebProcessDelegate:WeakRetained];
    objc_storeWeak(&self->_webProcessDelegate, obj);
    [(MFWebViewLoadingController *)self _registerWebProcessDelegate:obj];
  }
}

- (void)setLoadingURL:(id)l
{
  lCopy = l;
  contentRepresentation = self->_contentRepresentation;
  self->_contentRepresentation = 0;

  error = self->_error;
  self->_error = 0;

  loadingURL = self->_loadingURL;
  self->_loadingURL = lCopy;
}

- (void)setContentRepresentation:(id)representation
{
  representationCopy = representation;
  loadingURL = self->_loadingURL;
  self->_loadingURL = 0;

  error = self->_error;
  self->_error = 0;

  contentRepresentation = self->_contentRepresentation;
  self->_contentRepresentation = representationCopy;
}

- (void)slapWebView
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    webView = [(MFWebViewLoadingController *)self webView];
    v11 = 138543874;
    v12 = v9;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = webView;
    _os_log_error_impl(&dword_2149C9000, v3, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Killing and resetting webview: %@", &v11, 0x20u);
  }

  webView2 = [(MFWebViewLoadingController *)self webView];
  [webView2 _killWebContentProcessAndResetState];

  contentRepresentation = [(MFWebViewLoadingController *)self contentRepresentation];
  if (contentRepresentation)
  {

LABEL_6:
    [(MFWebViewLoadingController *)self _doIssueLoadRequest];
    return;
  }

  loadingURL = [(MFWebViewLoadingController *)self loadingURL];
  v7 = loadingURL == 0;

  if (!v7)
  {
    goto LABEL_6;
  }

  [(MFWebViewLoadingController *)self reload];
}

- (void)reload
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    webView = [(MFWebViewLoadingController *)self webView];
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = webView;
    _os_log_debug_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: Sending request to reload webview: %@", &v9, 0x20u);
  }

  webView2 = [(MFWebViewLoadingController *)self webView];
  reload = [webView2 reload];
}

- (void)stopLoading
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    webView = [(MFWebViewLoadingController *)self webView];
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = webView;
    _os_log_debug_impl(&dword_2149C9000, v3, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: Sending request to stop loading webview: %@", &v8, 0x20u);
  }

  webView2 = [(MFWebViewLoadingController *)self webView];
  [webView2 stopLoading];
}

- (void)_doIssueLoadRequest
{
  v30 = *MEMORY[0x277D85DE8];
  contentRepresentation = [(MFWebViewLoadingController *)self contentRepresentation];
  error = [(MFWebViewLoadingController *)self error];
  v5 = error;
  if (contentRepresentation)
  {
    contentURL = [contentRepresentation contentURL];
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      ef_publicDescription = [contentRepresentation ef_publicDescription];
      v24 = 138543874;
      v25 = v9;
      v26 = 2048;
      selfCopy3 = self;
      v28 = 2114;
      v29 = ef_publicDescription;
      _os_log_impl(&dword_2149C9000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Sending request to load webview with content representation: %{public}@", &v24, 0x20u);
    }

    webView = [(MFWebViewLoadingController *)self webView];
    v12 = [webView loadFileURL:contentURL allowingReadAccessToURL:contentURL];
LABEL_5:

    goto LABEL_10;
  }

  if (!error)
  {
    v14 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      loadingURL = [(MFWebViewLoadingController *)self loadingURL];
      v24 = 138543874;
      v25 = v16;
      v26 = 2048;
      selfCopy3 = self;
      v28 = 2112;
      v29 = loadingURL;
      _os_log_impl(&dword_2149C9000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p>: Sending request to load webview with loading URL: %@", &v24, 0x20u);
    }

    contentURL = [(MFWebViewLoadingController *)self webView];
    v18 = MEMORY[0x277CCAD20];
    webView = [(MFWebViewLoadingController *)self loadingURL];
    v19 = [v18 requestWithURL:webView cachePolicy:0 timeoutInterval:60.0];
    v20 = [contentURL loadRequest:v19];

    goto LABEL_5;
  }

  v13 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    ef_publicDescription2 = [v5 ef_publicDescription];
    v24 = 138543874;
    v25 = v22;
    v26 = 2048;
    selfCopy3 = self;
    v28 = 2114;
    v29 = ef_publicDescription2;
    _os_log_error_impl(&dword_2149C9000, v13, OS_LOG_TYPE_ERROR, "<%{public}@: %p>: Sending request to load webview with error: %{public}@", &v24, 0x20u);
  }

  [(MFWebViewLoadingController *)self requestWebViewLoadWithError:v5];
LABEL_10:
}

- (void)requestWebViewLoadWithoutShowingMessageWithRepresentation:(id)representation
{
  contentURL = [representation contentURL];
  [(MFWebViewLoadingController *)self setLoadingURL:?];
  webView = [(MFWebViewLoadingController *)self webView];
  v5 = [webView loadHTMLString:&stru_2826D1AD8 baseURL:contentURL];
}

- (void)requestWebViewLoadWithError:(id)error
{
  errorCopy = error;
  [(MFWebViewLoadingController *)self setError:?];
  webView = [(MFWebViewLoadingController *)self webView];
  mf_markupString = [errorCopy mf_markupString];
  v6 = [webView loadHTMLString:mf_markupString baseURL:0];
}

- (void)requestWebViewLoadWithContentRepresentation:(id)representation
{
  representationCopy = representation;
  currentDevice = [MEMORY[0x277D07148] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v6 = MEMORY[0x277CCACA8];
    [(WKWebView *)self->_webView _webProcessIdentifier];
    v7 = EFStringWithInt64();
    contentItem = [representationCopy contentItem];
    displayName = [contentItem displayName];
    v10 = [v6 stringWithFormat:@"(%@) %@", v7, displayName];
    webView = [(MFWebViewLoadingController *)self webView];
    [webView _setRemoteInspectionNameOverride:v10];
  }

  [(MFWebViewLoadingController *)self setContentRepresentation:representationCopy];
  [MEMORY[0x277CD6898] registerContentRepresentation:representationCopy];
  [(MFWebViewLoadingController *)self _doIssueLoadRequest];
}

- (void)_reconveneWebProcessBundle
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_2149C9000, log, OS_LOG_TYPE_DEBUG, "<%{public}@: %p>: updatingWebProcessPlugin", buf, 0x16u);
}

- (void)remoteContentURLSession:(id)session failedToProxyURL:(id)l failureReason:(int64_t)reason
{
  lCopy = l;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MFWebViewLoadingController_remoteContentURLSession_failedToProxyURL_failureReason___block_invoke;
  v10[3] = &unk_2781823E8;
  v10[4] = self;
  v8 = lCopy;
  v11 = v8;
  reasonCopy = reason;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  [mainThreadScheduler performSyncBlock:v10];
}

void __85__MFWebViewLoadingController_remoteContentURLSession_failedToProxyURL_failureReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) webProcessDelegate];
  [v2 webProcessFailedToLoadResourceWithProxyForURL:*(a1 + 40) failureReason:*(a1 + 48)];
}

- (MFMailWebProcessDelegate)webProcessDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessDelegate);

  return WeakRetained;
}

@end