@interface ASDRequest
+ (id)_sharedBroker;
+ (void)cancelAllRequestsWithErrorHandler:(id)handler;
- (ASDRequest)init;
- (ASDRequest)initWithCoder:(id)coder;
- (ASDRequestObserver)observer;
- (id)description;
- (void)_callErrorHandler:(uint64_t)handler withError:(void *)error orDefaultCode:(void *)code;
- (void)_callErrorHandler:(void *)handler withError:;
- (void)_cancelWithErrorHandler:(id)handler;
- (void)_notifyObserverOfCompletionWithError:(void *)error;
- (void)_startWithErrorHandler:(id)handler;
- (void)receiveResponse:(id)response;
@end

@implementation ASDRequest

- (ASDRequest)init
{
  v6.receiver = self;
  v6.super_class = ASDRequest;
  v2 = [(ASDRequest *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    requestID = v2->_requestID;
    v2->_requestID = uUID;
  }

  return v2;
}

+ (id)_sharedBroker
{
  if (_MergedGlobals_49 != -1)
  {
    dispatch_once(&_MergedGlobals_49, &__block_literal_global_22);
  }

  v3 = qword_1ED90D610;

  return v3;
}

uint64_t __27__ASDRequest__sharedBroker__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED90D610;
  qword_1ED90D610 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ASDRequest;
  v4 = [(ASDRequest *)&v9 description];
  requestID = [(ASDRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  v7 = [v3 stringWithFormat:@"%@: %@", v4, uUIDString];

  return v7;
}

+ (void)cancelAllRequestsWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _sharedBroker = [self _sharedBroker];
  [_sharedBroker cancelAllRequestsWithErrorHandler:handlerCopy];
}

- (void)receiveResponse:(id)response
{
  v13 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543874;
    v8 = objc_opt_class();
    v9 = 2114;
    selfCopy = self;
    v11 = 2114;
    v12 = responseCopy;
    v6 = v8;
    _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Request %{public}@ received unhandled response: %{public}@", &v7, 0x20u);
  }
}

- (ASDRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ASDRequest;
  v5 = [(ASDRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v6;
  }

  return v5;
}

- (void)_callErrorHandler:(void *)handler withError:
{
  v5 = a2;
  handlerCopy = handler;
  if (self && v5)
  {
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__ASDRequest__callErrorHandler_withError___block_invoke;
    v8[3] = &unk_1E7CDB890;
    v10 = v5;
    v9 = handlerCopy;
    dispatch_async(v7, v8);
  }
}

- (void)_callErrorHandler:(uint64_t)handler withError:(void *)error orDefaultCode:(void *)code
{
  errorCopy = error;
  codeCopy = code;
  v6 = codeCopy;
  if (handler)
  {
    if (!codeCopy)
    {
      v6 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 508, @"Could not connect to helper daemon", 0, 0);
    }

    [(ASDRequest *)handler _callErrorHandler:errorCopy withError:v6];
  }
}

- (void)_cancelWithErrorHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  proxy = [(ASDRequest *)self proxy];
  if (proxy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __38__ASDRequest__cancelWithErrorHandler___block_invoke;
    v13[3] = &unk_1E7CDBAB8;
    v13[4] = self;
    v6 = handlerCopy;
    v14 = v6;
    v7 = [proxy remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__ASDRequest__cancelWithErrorHandler___block_invoke_16;
    v11[3] = &unk_1E7CDBAB8;
    v11[4] = self;
    v12 = v6;
    [v7 cancelWithErrorHandler:v11];
  }

  else if (handlerCopy)
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v10 = v16;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Cannot cancel request that has not yet been started", buf, 0xCu);
    }

    v9 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 532, @"Request has not been started", 0, 0);
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __38__ASDRequest__cancelWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v3;
    v5 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain remote proxy with error: %{public}@", &v6, 0x16u);
  }

  [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
}

- (void)_notifyObserverOfCompletionWithError:(void *)error
{
  v3 = a2;
  if (error)
  {
    observer = [error observer];
    if (observer)
    {
      v5 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__ASDRequest__notifyObserverOfCompletionWithError___block_invoke;
      block[3] = &unk_1E7CDBA20;
      v7 = observer;
      errorCopy = error;
      v9 = v3;
      dispatch_async(v5, block);
    }
  }
}

- (void)_startWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__ASDRequest__startWithErrorHandler___block_invoke;
  v11 = &unk_1E7CDBAB8;
  selfCopy = self;
  v13 = handlerCopy;
  v5 = handlerCopy;
  v6 = &v8;
  if (self)
  {
    v7 = [ASDRequest _sharedBroker:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __45__ASDRequest__submitRequestWithErrorHandler___block_invoke;
    v14[3] = &unk_1E7CDD558;
    v14[4] = self;
    v15 = v6;
    [v7 submitRequest:self withReplyHandler:v14];
  }
}

void __37__ASDRequest__startWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) proxy];
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__ASDRequest__startWithErrorHandler___block_invoke_2;
    v12[3] = &unk_1E7CDBAB8;
    v5 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v5;
    v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__ASDRequest__startWithErrorHandler___block_invoke_20;
    v10[3] = &unk_1E7CDBAB8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v7;
    [v6 startWithErrorHandler:v10];
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Cannot start request because submission failed with error: %{public}@", buf, 0x16u);
    }

    [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
    [(ASDRequest *)*(a1 + 32) _notifyObserverOfCompletionWithError:v3];
  }
}

void __37__ASDRequest__startWithErrorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2114;
    v9 = v3;
    v5 = v7;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain remote proxy with error: %{public}@", &v6, 0x16u);
  }

  [ASDRequest _callErrorHandler:*(a1 + 40) withError:v3 orDefaultCode:?];
  [(ASDRequest *)*(a1 + 32) _notifyObserverOfCompletionWithError:v3];
}

void __37__ASDRequest__startWithErrorHandler___block_invoke_20(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = v3;
      v6 = v8;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to start with error: %{public}@", &v7, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = 0;
    v6 = v8;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_INFO, "[%{public}@]: Started successfully with error: %{public}@", &v7, 0x16u);
    goto LABEL_6;
  }

  [(ASDRequest *)*(a1 + 32) _callErrorHandler:v3 withError:?];
}

void __45__ASDRequest__submitRequestWithErrorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory(13);
  v8 = v7;
  if (!a2 || v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v5;
      v11 = v15;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[%{public}@]: Request could not be submitted: %{public}@", &v14, 0x16u);
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 32);
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = 0;
    v11 = v9;
    _os_log_debug_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEBUG, "[%{public}@]: Request submitted successfully: %{public}@ error: %{public}@", &v14, 0x20u);
LABEL_8:
  }

  [*(a1 + 32) setProxy:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v12, v13);
}

- (ASDRequestObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end