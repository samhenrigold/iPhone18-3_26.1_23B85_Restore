@interface SLURLPreviewGenerator
- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type;
- (SLURLPreviewGenerator)initWithFrame:(CGRect)frame;
- (void)_callCompletionWithPreview:(id)preview;
- (void)dealloc;
- (void)loadURL:(id)l completion:(id)completion;
- (void)uiWebView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener;
- (void)webView:(id)view didFailLoadWithError:(id)error;
- (void)webViewDidFinishLoad:(id)load;
@end

@implementation SLURLPreviewGenerator

- (SLURLPreviewGenerator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _SLLog(v8, 7, @"SLURLPreviewGenerator %@ initWithFrame: %g %g %g %g", v3, v4, v5, v6, v7, self);
  v20.receiver = self;
  v20.super_class = SLURLPreviewGenerator;
  v14 = [(SLURLPreviewGenerator *)&v20 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD2E0]) initWithFrame:{x, y, width, height}];
    webView = v14->_webView;
    v14->_webView = v15;

    [(UIWebView *)v14->_webView setAllowsInlineMediaPlayback:0];
    [(UIWebView *)v14->_webView setMediaPlaybackRequiresUserAction:1];
    [(UIWebView *)v14->_webView setMediaPlaybackAllowsAirPlay:0];
    [(UIWebView *)v14->_webView setSuppressesIncrementalRendering:1];
    [(UIWebView *)v14->_webView setScalesPageToFit:1];
    [(UIWebView *)v14->_webView setDelegate:v14];
    _browserView = [(UIWebView *)v14->_webView _browserView];
    webView = [_browserView webView];

    [webView setUIDelegate:v14];
  }

  return v14;
}

- (void)dealloc
{
  _SLLog(v7, 7, @"SLURLPreviewGenerator %@ dealloc", v2, v3, v4, v5, v6, self);
  if (self->_completion)
  {
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }

  [(UIWebView *)self->_webView setDelegate:0];
  [(UIWebView *)self->_webView stopLoading];
  v9.receiver = self;
  v9.super_class = SLURLPreviewGenerator;
  [(SLURLPreviewGenerator *)&v9 dealloc];
}

- (void)_callCompletionWithPreview:(id)preview
{
  previewCopy = preview;
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ _callCompletionWithPreview: %@", v5, v6, v7, v8, v9, self);
  v10 = MEMORY[0x1C6917BF0](self->_completion);
  _SLLog(v3, 7, @"_completion %@", v11, v12, v13, v14, v15, v10);

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, previewCopy);
    v17 = self->_completion;
    self->_completion = 0;
  }
}

- (void)loadURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ loadURL:completion: with %@", v8, v9, v10, v11, v12, self);
  if ([lCopy loadingInUIWebViewWillLaunchAnotherApp])
  {
    _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.", v13, v14, v15, v16, v17, v30);
LABEL_3:
    completionCopy[2](completionCopy, 0);
    goto LABEL_8;
  }

  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"http"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v20 = [scheme2 isEqualToString:@"https"];

    if (!v20)
    {
      scheme3 = [lCopy scheme];
      _SLLog(v4, 7, @"SLURLPreviewGenerator not loading a preview for url with unsupported scheme '%@'.", v25, v26, v27, v28, v29, scheme3);

      goto LABEL_3;
    }
  }

  v21 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v21;

  v23 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:lCopy];
  [v23 setHTTPShouldHandleCookies:0];
  [(UIWebView *)self->_webView loadRequest:v23];

LABEL_8:
}

- (BOOL)webView:(id)view shouldStartLoadWithRequest:(id)request navigationType:(int64_t)type
{
  requestCopy = request;
  _SLLog(v5, 7, @"SLURLPreviewGenerator %@ shouldStartLoadWithRequest: %@ navigationType: %d", v7, v8, v9, v10, v11, self);
  v12 = [requestCopy URL];

  loadingInUIWebViewWillLaunchAnotherApp = [v12 loadingInUIWebViewWillLaunchAnotherApp];
  if (loadingInUIWebViewWillLaunchAnotherApp)
  {
    _SLLog(v5, 7, @"SLURLPreviewGenerator not loading a preview that would launch another app.", v14, v15, v16, v17, v18, v20);
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }

  return loadingInUIWebViewWillLaunchAnotherApp ^ 1;
}

- (void)webViewDidFinishLoad:(id)load
{
  [(UIWebView *)self->_webView isLoading];
  _SLLog(v3, 7, @"SLURLPreviewGenerator %@ webViewDidFinishLoad: still loading %d", v5, v6, v7, v8, v9, self);
  if (![(UIWebView *)self->_webView isLoading]&& self->_completion)
  {
    webView = self->_webView;
    [(UIWebView *)webView frame];
    v17 = [(UIWebView *)webView newSnapshotWithRect:?];
    _SLLog(v3, 7, @"SLURLPreviewGenerator %@ generated cgImage %p", v11, v12, v13, v14, v15, self);
    v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v17];
    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:v16];

    CGImageRelease(v17);
  }
}

- (void)webView:(id)view didFailLoadWithError:(id)error
{
  webView = self->_webView;
  errorCopy = error;
  [(UIWebView *)webView isLoading];
  _SLLog(v4, 7, @"SLURLPreviewGenerator %@ webView:didFailLoadWithError: %@ still loading %d", v7, v8, v9, v10, v11, self);

  if (![(UIWebView *)self->_webView isLoading])
  {

    [(SLURLPreviewGenerator *)self _callCompletionWithPreview:0];
  }
}

- (void)uiWebView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener
{
  listenerCopy = listener;
  v6 = listenerCopy;
  WebThreadRun();
}

@end