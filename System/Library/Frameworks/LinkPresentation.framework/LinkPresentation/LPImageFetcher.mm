@interface LPImageFetcher
+ (id)imageFetcherForConfiguration:(id)configuration;
- (void)_completedWithImage:(id)image error:(id)error;
- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error;
- (void)cancel;
- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LPImageFetcher

+ (id)imageFetcherForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fetchIsNotUserInitiated = [configurationCopy fetchIsNotUserInitiated];
  v5 = off_1E7A346E0;
  if (!fetchIsNotUserInitiated)
  {
    v5 = off_1E7A347A8;
  }

  v6 = objc_alloc_init(*v5);

  return v6;
}

- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  rootEvent = [configurationCopy rootEvent];
  v9 = [rootEvent childWithType:2 subtitle:0];
  [(LPFetcher *)self set_event:v9];

  URL = self->_URL;
  _event = [(LPFetcher *)self _event];
  [_event setURL:URL];

  v12 = _Block_copy(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v12;

  v16 = LPLogChannelFetching(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [LPImageFetcher fetchWithConfiguration:v31 completionHandler:[(LPFetcher *)self _loggingID]];
  }

  v17 = [(LPImageFetcher *)self URL];
  v18 = [v17 _lp_requestWithAttribution:{objc_msgSend(configurationCopy, "loadingIsNonAppInitiated")}];

  webViewForProcessSharing = [configurationCopy webViewForProcessSharing];
  if (!webViewForProcessSharing)
  {
    v21 = LPLogChannelFetching(0, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [LPImageFetcher fetchWithConfiguration:v30 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v22 = objc_alloc(MEMORY[0x1E69853A0]);
    v23 = +[LPMetadataProvider _copyDefaultWebViewConfiguration];
    v24 = [v22 initWithFrame:v23 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    webView = self->_webView;
    self->_webView = v24;

    v26 = +[LPMetadataProvider _defaultUserAgent];
    [(WKWebView *)self->_webView setCustomUserAgent:v26];

    webViewForProcessSharing = self->_webView;
  }

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __59__LPImageFetcher_fetchWithConfiguration_completionHandler___block_invoke;
  v27[3] = &unk_1E7A36E50;
  objc_copyWeak(&v28, &location);
  [(WKWebView *)webViewForProcessSharing _loadAndDecodeImage:v18 constrainedToSize:10485760 maximumBytesFromNetwork:v27 completionHandler:1024.0, 1024.0];
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __59__LPImageFetcher_fetchWithConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v10 = LPLogChannelFetching(WeakRetained, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 _loggingID];
        v12 = [v6 domain];
        v13[0] = 67109891;
        v13[1] = v11;
        v14 = 2112;
        v15 = v12;
        v16 = 2048;
        v17 = [v6 code];
        v18 = 2117;
        v19 = v6;
        _os_log_error_impl(&dword_1AE886000, v10, OS_LOG_TYPE_ERROR, "LPImageFetcher<%d>: subresource load completed with error: Domain=%@ Code=%ld Error=%{sensitive}@", v13, 0x26u);
      }

      [v9 _failedWithErrorCode:2 underlyingError:v6];
    }

    else
    {
      [WeakRetained _completedWithImage:v5 error:0];
    }
  }
}

- (void)cancel
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_completionHandler)
  {
    v3 = LPLogChannelFetching(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(LPImageFetcher *)v4 cancel];
    }

    [(LPImageFetcher *)self _failedWithErrorCode:3 underlyingError:0];
  }
}

- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = errorCopy;
  if (self->_completionHandler)
  {
    if (code != 3)
    {
      v9 = LPLogChannelFetching(errorCopy, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _loggingID = [(LPFetcher *)self _loggingID];
        domain = [v8 domain];
        v13[0] = 67109891;
        v13[1] = _loggingID;
        v14 = 2112;
        v15 = domain;
        v16 = 2048;
        code = [v8 code];
        v18 = 2117;
        v19 = v8;
        _os_log_error_impl(&dword_1AE886000, v9, OS_LOG_TYPE_ERROR, "LPImageFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v13, 0x26u);
      }
    }

    v10 = makeLPError(code, v8);
    [(LPImageFetcher *)self _completedWithImage:0 error:v10];
  }
}

- (void)_completedWithImage:(id)image error:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v9 = _Block_copy(completionHandler);
    v10 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!imageCopy)
    {
      goto LABEL_8;
    }

    v13 = LPLogChannelFetching(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LPImageFetcher _completedWithImage:v21 error:[(LPFetcher *)self _loggingID]];
    }

    responseClass = [(LPFetcher *)self responseClass];
    if (!responseClass)
    {
      responseClass = objc_opt_class();
    }

    v15 = [(objc_class *)responseClass responseForFetcher:self withImage:imageCopy];
    if (!v15)
    {
LABEL_8:
      v15 = [[LPFetcherErrorResponse alloc] initWithError:errorCopy fetcher:self];
    }

    [(WKWebView *)self->_webView _close];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__5;
    v19[4] = __Block_byref_object_dispose__5;
    v20 = self->_webView;
    webView = self->_webView;
    self->_webView = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__LPImageFetcher__completedWithImage_error___block_invoke;
    block[3] = &unk_1E7A35518;
    block[4] = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    _event = [(LPFetcher *)self _event];
    [_event didCompleteWithErrorCode:{objc_msgSend(errorCopy, "code")}];

    v9[2](v9, v15);
    _Block_object_dispose(v19, 8);
  }
}

void __44__LPImageFetcher__completedWithImage_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end