@interface AARequester
- (AARequester)initWithRequest:(id)request handler:(id)handler;
- (void)__unsafe_callHandler;
- (void)_callHandler;
- (void)_kickOffRequest:(id)request;
- (void)cancel;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
- (void)connectionDidFinishLoading:(id)loading;
- (void)start;
@end

@implementation AARequester

- (AARequester)initWithRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = AARequester;
  v9 = [(AARequester *)&v18 init];
  if (v9)
  {
    v10 = [handlerCopy copy];
    handler = v9->_handler;
    v9->_handler = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
    data = v9->_data;
    v9->_data = v12;

    objc_storeStrong(&v9->_request, request);
    v9->_responseClass = [objc_opt_class() responseClass];
    v9->_canceled = 0;
    handlerQueue = v9->_handlerQueue;
    v9->_handlerQueue = 0;

    v15 = [objc_alloc(MEMORY[0x1E698DCC8]) initWithIdentifier:@"com.apple.icloud"];
    appleIDSession = v9->_appleIDSession;
    v9->_appleIDSession = v15;
  }

  return v9;
}

- (void)cancel
{
  urlConnection = self->_urlConnection;
  if (urlConnection)
  {
    [(NSURLConnection *)urlConnection cancel];
  }

  if (![(AARequester *)self isFinished])
  {
    handlerQueue = self->_handlerQueue;
    if (handlerQueue)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __21__AARequester_cancel__block_invoke;
      v14 = &unk_1E7C9A868;
      selfCopy = self;
      v5 = &v11;
    }

    else
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __21__AARequester_cancel__block_invoke_2;
      v9 = &unk_1E7C9A868;
      selfCopy2 = self;
      handlerQueue = MEMORY[0x1E69E96A0];
      v5 = &v6;
    }

    dispatch_async(handlerQueue, v5);
  }

  [(AARequester *)self setCanceled:1, v6, v7, v8, v9, selfCopy2, v11, v12, v13, v14, selfCopy];
}

- (void)start
{
  v20 = *MEMORY[0x1E69E9840];
  [(AARequester *)self setIsExecuting:1];
  [(AARequester *)self setFinished:0];
  urlString = [(AARequest *)self->_request urlString];

  if (urlString)
  {
    urlRequest = [(AARequest *)self->_request urlRequest];
    [(AARequester *)self _kickOffRequest:?];
  }

  else
  {
    v5 = _AALogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "AARequester starting an AARequest (%@) with nil URL. Calling handler with an error.", buf, 0xCu);
    }

    v8 = [objc_alloc(self->_responseClass) initWithHTTPResponse:0 data:0];
    response = self->_response;
    self->_response = v8;

    v10 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v12 = [v11 localizedStringForKey:@"ICLOUD_CONFIG_ERROR" value:0 table:@"Localizable"];
    v17 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = [v10 errorWithDomain:@"com.apple.appleaccount" code:-2 userInfo:v13];
    [(AAResponse *)self->_response setError:v14];

    [(AARequester *)self setIsExecuting:0];
    [(AARequester *)self setFinished:1];
    [(AARequester *)self _callHandler];
  }
}

- (void)_kickOffRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  v6 = [(AKAppleIDSession *)self->_appleIDSession appleIDHeadersForRequest:requestCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        [v5 setValue:v12 forHTTPHeaderField:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x1E695AC40] connectionWithRequest:v5 delegate:self];
  urlConnection = self->_urlConnection;
  self->_urlConnection = v13;

  v15 = self->_urlConnection;
  v16 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [(NSURLConnection *)v15 setDelegateQueue:v16];

  if (self->_urlConnection)
  {
    v17 = *MEMORY[0x1E695D918];
    do
    {
      isFinished = [(AARequester *)self isFinished];
      if (isFinished)
      {
        break;
      }

      isFinished = [(AARequester *)self isCanceled];
      if (isFinished)
      {
        break;
      }

      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v21 = [currentRunLoop runMode:v17 beforeDate:distantFuture];
    }

    while ((v21 & 1) != 0);
    v22 = _AALogSystem(isFinished);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "AARequester runloop finished", v25, 2u);
    }

    if (![(AARequester *)self isFinished])
    {
      isCanceled = [(AARequester *)self isCanceled];
      if ((isCanceled & 1) == 0)
      {
        v24 = _AALogSystem(isCanceled);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&dword_1B6F6A000, v24, OS_LOG_TYPE_DEFAULT, "AARequester: Premature runloop exit, calling cancel", v25, 2u);
        }

        [(AARequester *)self cancel];
      }
    }
  }

  else
  {
    [(AARequester *)self setIsExecuting:0];
    [(AARequester *)self setFinished:1];
    [(AARequester *)self _callHandler];
  }
}

- (void)_callHandler
{
  if (self->_shouldRetry)
  {
    originalRequest = [(NSURLConnection *)self->_urlConnection originalRequest];
    [(AARequester *)self _kickOffRequest:originalRequest];
  }

  else
  {
    handlerQueue = self->_handlerQueue;
    if (handlerQueue)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __27__AARequester__callHandler__block_invoke;
      v7[3] = &unk_1E7C9A868;
      v7[4] = self;
      v4 = v7;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __27__AARequester__callHandler__block_invoke_2;
      block[3] = &unk_1E7C9A868;
      block[4] = self;
      handlerQueue = MEMORY[0x1E69E96A0];
      v4 = block;
    }

    dispatch_async(handlerQueue, v4);
  }
}

- (void)__unsafe_callHandler
{
  (*(self->_handler + 2))();
  [(AARequester *)self setIsExecuting:0];

  [(AARequester *)self setFinished:1];
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  connectionCopy = connection;
  challengeCopy = challenge;
  v8 = +[AACertificatePinner sharedPinner];
  v9 = objc_opt_respondsToSelector();

  v11 = _AALogSystem(v10);
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(AARequester *)a2 connection:challengeCopy willSendRequestForAuthenticationChallenge:v12];
    }

    sender = +[AACertificatePinner sharedPinner];
    [sender connection:connectionCopy willSendRequestForAuthenticationChallenge:challengeCopy];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AARequester connection:a2 willSendRequestForAuthenticationChallenge:v12];
    }

    sender = [challengeCopy sender];
    [sender performDefaultHandlingForAuthenticationChallenge:challengeCopy];
  }
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  connectionCopy = connection;
  v8 = _AALogSystem(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    allHeaderFields = [(NSHTTPURLResponse *)responseCopy allHeaderFields];
    v13 = 138412290;
    v14 = allHeaderFields;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Received response. Headers: %@", &v13, 0xCu);
  }

  self->_shouldRetry = 0;
  appleIDSession = self->_appleIDSession;
  originalRequest = [connectionCopy originalRequest];

  [(AKAppleIDSession *)appleIDSession handleResponse:responseCopy forRequest:originalRequest shouldRetry:&self->_shouldRetry];
  httpResponse = self->_httpResponse;
  self->_httpResponse = responseCopy;
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  v9 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = _AALogSystem(dataCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [dataCopy length];
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Received %lu bytes.", &v7, 0xCu);
  }

  [(NSMutableData *)self->_data appendData:dataCopy];
}

- (void)connectionDidFinishLoading:(id)loading
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _AALogSystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSMutableData *)self->_data length];
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Finished loading: %lu bytes.", &v8, 0xCu);
  }

  v6 = [objc_alloc(self->_responseClass) initWithHTTPResponse:self->_httpResponse data:self->_data];
  response = self->_response;
  self->_response = v6;

  [(AARequester *)self _callHandler];
  [(AARequester *)self setIsExecuting:0];
  [(AARequester *)self setFinished:1];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = _AALogSystem(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Connection failed.", &v13, 2u);
  }

  if (errorCopy)
  {
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [errorCopy localizedDescription];
      v13 = 138412290;
      v14 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
    }
  }

  v10 = [objc_alloc(self->_responseClass) initWithHTTPResponse:self->_httpResponse data:self->_data];
  response = self->_response;
  self->_response = v10;

  _aa_userReadableError = [errorCopy _aa_userReadableError];
  [(AAResponse *)self->_response setError:_aa_userReadableError];

  [(AARequester *)self _callHandler];
  [(AARequester *)self setIsExecuting:0];
  [(AARequester *)self setFinished:1];
}

- (void)connection:(const char *)a1 willSendRequestForAuthenticationChallenge:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "AACertificatePinner does not respond to %{private}@!", &v4, 0xCu);
}

- (void)connection:(NSObject *)a3 willSendRequestForAuthenticationChallenge:.cold.2(const char *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 protectionSpace];
  v7 = [v6 host];
  v8 = 138478083;
  v9 = v5;
  v10 = 2113;
  v11 = v7;
  _os_log_debug_impl(&dword_1B6F6A000, a3, OS_LOG_TYPE_DEBUG, "AACertificatePinner responds to %{private}@, routing challenge for host: %{private}@", &v8, 0x16u);
}

@end