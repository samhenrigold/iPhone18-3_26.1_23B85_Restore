@interface LPRawURLContentsFetcher
- (void)_completedWithData:(id)data MIMEType:(id)type error:(id)error;
- (void)_failedWithErrorCode:(int64_t)code underlyingError:(id)error;
- (void)cancel;
- (void)dataTask:(id)task didCompleteWithError:(id)error;
- (void)dataTask:(id)task didReceiveData:(id)data;
- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler;
- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation LPRawURLContentsFetcher

- (void)fetchWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy fetchIsNotUserInitiated])
  {
    v8 = [LPFetcherErrorResponse alloc];
    v9 = makeLPError(5, 0);
    v10 = [(LPFetcherErrorResponse *)v8 initWithError:v9 fetcher:self];
    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    rootEvent = [configurationCopy rootEvent];
    v12 = [rootEvent childWithType:2 subtitle:0];
    [(LPFetcher *)self set_event:v12];

    URL = self->_URL;
    _event = [(LPFetcher *)self _event];
    [_event setURL:URL];

    v15 = _Block_copy(handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v15;

    v19 = LPLogChannelFetching(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v36 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    v20 = [(LPRawURLContentsFetcher *)self URL];
    v21 = [v20 _lp_requestWithAttribution:{objc_msgSend(configurationCopy, "loadingIsNonAppInitiated")}];

    v24 = LPLogChannelFetching(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher fetchWithConfiguration:v35 completionHandler:[(LPFetcher *)self _loggingID]];
    }

    webViewForProcessSharing = [configurationCopy webViewForProcessSharing];
    if (!webViewForProcessSharing)
    {
      v27 = LPLogChannelFetching(0, v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [LPRawURLContentsFetcher fetchWithConfiguration:v34 completionHandler:[(LPFetcher *)self _loggingID]];
      }

      v28 = objc_alloc(MEMORY[0x1E69853A0]);
      v29 = +[LPMetadataProvider _copyDefaultWebViewConfiguration];
      v30 = [v28 initWithFrame:v29 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      webView = self->_webView;
      self->_webView = v30;

      v32 = +[LPMetadataProvider _defaultUserAgent];
      [(WKWebView *)self->_webView setCustomUserAgent:v32];

      webViewForProcessSharing = self->_webView;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __68__LPRawURLContentsFetcher_fetchWithConfiguration_completionHandler___block_invoke;
    v33[3] = &unk_1E7A37130;
    v33[4] = self;
    [(WKWebView *)webViewForProcessSharing _dataTaskWithRequest:v21 runAtForegroundPriority:1 completionHandler:v33];
  }
}

- (void)dataTask:(id)task didReceiveResponse:(id)response decisionHandler:(id)handler
{
  v27[3] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = responseCopy;
    v10 = [MEMORY[0x1E695AC08] isErrorStatusCode:{objc_msgSend(v9, "statusCode")}];
    if (v10)
    {
      v12 = LPLogChannelFetching(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.3(v27, -[LPFetcher _loggingID](self, "_loggingID"), [v9 statusCode]);
      }

      handlerCopy[2](handlerCopy, 0);
      [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];

      goto LABEL_19;
    }
  }

  responseClass = [(LPFetcher *)self responseClass];
  mIMEType = [responseCopy MIMEType];
  LOBYTE(responseClass) = [(objc_class *)responseClass isValidMIMEType:mIMEType];

  if (responseClass)
  {
    expectedContentLength = [responseCopy expectedContentLength];
    if (expectedContentLength == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = expectedContentLength;
    }

    if (v19 <= 10485760)
    {
      v23 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v19];
      data = self->_data;
      self->_data = v23;

      mIMEType2 = [responseCopy MIMEType];
      MIMEType = self->_MIMEType;
      self->_MIMEType = mIMEType2;

      handlerCopy[2](handlerCopy, 1);
      goto LABEL_19;
    }

    v20 = LPLogChannelFetching(expectedContentLength, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      -[LPRawURLContentsFetcher dataTask:didReceiveResponse:decisionHandler:].cold.2(v27, -[LPFetcher _loggingID](self, "_loggingID"), [responseCopy expectedContentLength]);
    }
  }

  else
  {
    v20 = LPLogChannelFetching(v15, v16);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      _loggingID = [(LPFetcher *)self _loggingID];
      mIMEType3 = [responseCopy MIMEType];
      [(LPRawURLContentsFetcher *)mIMEType3 dataTask:v27 didReceiveResponse:_loggingID decisionHandler:v20];
    }
  }

  handlerCopy[2](handlerCopy, 0);
  [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
LABEL_19:
}

- (void)dataTask:(id)task didReceiveData:(id)data
{
  v13[3] = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dataCopy = data;
  v8 = [(NSMutableData *)self->_data length];
  v9 = [dataCopy length];
  v11 = v9 + v8;
  if (v11 <= 0xA00000)
  {
    [(NSMutableData *)self->_data appendData:dataCopy];
  }

  else
  {
    v12 = LPLogChannelFetching(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(LPRawURLContentsFetcher *)v13 dataTask:v11 didReceiveData:?];
    }

    [taskCopy cancel];
    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:0];
  }
}

- (void)dataTask:(id)task didCompleteWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  v9 = errorCopy;
  if (errorCopy)
  {
    v10 = LPLogChannelFetching(errorCopy, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _loggingID = [(LPFetcher *)self _loggingID];
      domain = [v9 domain];
      v13[0] = 67109891;
      v13[1] = _loggingID;
      v14 = 2112;
      v15 = domain;
      v16 = 2048;
      code = [v9 code];
      v18 = 2117;
      v19 = v9;
      _os_log_error_impl(&dword_1AE886000, v10, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: subresource load completed with error: Domain=%@ Code=%ld Error=%{sensitive}@", v13, 0x26u);
    }

    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:2 underlyingError:v9];
  }

  else
  {
    [(LPRawURLContentsFetcher *)self _completedWithData:self->_data MIMEType:self->_MIMEType error:0];
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
      [(LPRawURLContentsFetcher *)v4 cancel];
    }

    [(LPRawURLContentsFetcher *)self _failedWithErrorCode:3 underlyingError:0];
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
        _os_log_error_impl(&dword_1AE886000, v9, OS_LOG_TYPE_ERROR, "LPRawURLContentsFetcher<%d>: failed subresource load: Domain=%@ Code=%ld Error=%{sensitive}@", v13, 0x26u);
      }
    }

    v10 = makeLPError(code, v8);
    [(LPRawURLContentsFetcher *)self _completedWithData:0 MIMEType:0 error:v10];
  }
}

- (void)_completedWithData:(id)data MIMEType:(id)type error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  typeCopy = type;
  errorCopy = error;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v12 = _Block_copy(completionHandler);
    v13 = self->_completionHandler;
    self->_completionHandler = 0;

    if (!dataCopy)
    {
      goto LABEL_6;
    }

    v16 = LPLogChannelFetching(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [LPRawURLContentsFetcher _completedWithData:v23 MIMEType:[(LPFetcher *)self _loggingID] error:?];
    }

    v17 = [(objc_class *)[(LPFetcher *)self responseClass] responseForFetcher:self withData:dataCopy MIMEType:typeCopy];
    if (!v17)
    {
LABEL_6:
      v17 = [[LPFetcherErrorResponse alloc] initWithError:errorCopy fetcher:self];
    }

    [(WKWebView *)self->_webView _close];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__8;
    v21[4] = __Block_byref_object_dispose__8;
    v22 = self->_webView;
    webView = self->_webView;
    self->_webView = 0;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__LPRawURLContentsFetcher__completedWithData_MIMEType_error___block_invoke;
    block[3] = &unk_1E7A35518;
    block[4] = v21;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    _event = [(LPFetcher *)self _event];
    [_event didCompleteWithErrorCode:{objc_msgSend(errorCopy, "code")}];

    v12[2](v12, v17);
    _Block_object_dispose(v21, 8);
  }
}

void __61__LPRawURLContentsFetcher__completedWithData_MIMEType_error___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)dataTask:(int)a3 didReceiveResponse:(NSObject *)a4 decisionHandler:.cold.1(void *a1, uint64_t a2, int a3, NSObject *a4)
{
  *a2 = 67109378;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = a1;
  OUTLINED_FUNCTION_3(&dword_1AE886000, "LPRawURLContentsFetcher<%d>: cancelling subresource load due to unknown MIME type: %@", a2, a4);
}

@end