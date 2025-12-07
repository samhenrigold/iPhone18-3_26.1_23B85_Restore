@interface DMCHTTPTransaction
- (BOOL)_shouldAllowTrust:(__SecTrust *)trust forHost:(id)host;
- (BOOL)_shouldAllowTrustWithPinning:(__SecTrust *)pinning forHost:(id)host;
- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method;
- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method downloadURL:(id)rL;
- (__SecIdentity)copyIdentity;
- (id)_constructRequestOutError:(id *)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_beginDataTaskWithSessionConfiguration:(id)configuration request:(id)request;
- (void)_beginDownloadTaskWithSessionConfiguration:(id)configuration request:(id)request;
- (void)_beginTransaction;
- (void)_completeTransaction;
- (void)_simulateTransaction;
- (void)addHeaderKey:(id)key value:(id)value;
- (void)dealloc;
- (void)performCompletionBlock:(id)block;
- (void)performSynchronously;
- (void)setIdentity:(__SecIdentity *)identity;
@end

@implementation DMCHTTPTransaction

- (__SecIdentity)copyIdentity
{
  result = self->_identity;
  if (result)
  {
    CFRetain(result);
    return self->_identity;
  }

  return result;
}

- (void)setIdentity:(__SecIdentity *)identity
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  self->_identity = identity;
  if (identity)
  {

    CFRetain(identity);
  }
}

- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method
{
  lCopy = l;
  methodCopy = method;
  v14.receiver = self;
  v14.super_class = DMCHTTPTransaction;
  v9 = [(DMCHTTPTransaction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestURL, l);
    v11 = [methodCopy copy];
    method = v10->_method;
    v10->_method = v11;

    objc_storeStrong(&v10->_userAgent, @"DeviceManagementClient/1.0");
    v10->_timeout = 45.0;
  }

  return v10;
}

- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method downloadURL:(id)rL
{
  rLCopy = rL;
  v10 = [(DMCHTTPTransaction *)self initWithURL:l method:method];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_downloadURL, rL);
  }

  return v11;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = DMCHTTPTransaction;
  [(DMCHTTPTransaction *)&v4 dealloc];
}

- (void)addHeaderKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  headers = self->_headers;
  if (!headers)
  {
    v8 = objc_opt_new();
    v9 = self->_headers;
    self->_headers = v8;

    headers = self->_headers;
  }

  [(NSMutableDictionary *)headers setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (id)_constructRequestOutError:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD68] requestWithURL:self->_requestURL cachePolicy:4 timeoutInterval:self->_timeout];
  [v5 setHTTPMethod:self->_method];
  contentType = self->_contentType;
  if (contentType)
  {
    [v5 addValue:contentType forHTTPHeaderField:@"Content-Type"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v5 addValue:userAgent forHTTPHeaderField:@"User-Agent"];
  }

  if (self->_data)
  {
    [v5 setHTTPBody:?];
  }

  if (self->_CMSSignatureHeaderName && self->_identity)
  {
    v41 = *MEMORY[0x1E697AFB0];
    v42[0] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    data = [MEMORY[0x1E695DF88] data];
    v10 = SecCMSCreateSignedData();
    if (v10)
    {
      v12 = v10;
      v13 = *DMCLogObjects(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v39) = v12;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Cannot compute message signature. Error: %d", buf, 8u);
      }
    }

    else
    {
      v14 = [data base64EncodedStringWithOptions:0];
      [v5 addValue:v14 forHTTPHeaderField:self->_CMSSignatureHeaderName];
    }
  }

  headers = self->_headers;
  if (headers)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = headers;
    v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v22 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:v21];
          [v5 addValue:v22 forHTTPHeaderField:v21];
        }

        v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v18);
    }
  }

  authenticator = [(DMCHTTPTransaction *)self authenticator];

  if (!authenticator)
  {
    goto LABEL_29;
  }

  authenticator2 = [(DMCHTTPTransaction *)self authenticator];
  v33 = 0;
  v25 = [authenticator2 authenticateRequest:v5 error:&v33];
  v26 = v33;

  if (v25)
  {
    goto LABEL_28;
  }

  v29 = *DMCLogObjects(v27, v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v39 = v26;
    _os_log_impl(&dword_1B1630000, v29, OS_LOG_TYPE_ERROR, "Failed to authenticate request with error: %{public}@", buf, 0xCu);
  }

  if ([(DMCHTTPTransaction *)self ignoreAuthenticatorError])
  {
LABEL_28:

LABEL_29:
    v30 = v5;
    goto LABEL_30;
  }

  if (error)
  {
    v32 = v26;
    *error = v26;
  }

  v30 = 0;
LABEL_30:

  return v30;
}

- (void)_beginTransaction
{
  v8 = 0;
  v3 = [(DMCHTTPTransaction *)self _constructRequestOutError:&v8];
  v4 = v8;
  v5 = v8;
  if (v3)
  {
    self->_rememberData = 0;
    ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
    downloadURL = [(DMCHTTPTransaction *)self downloadURL];

    if (downloadURL)
    {
      [(DMCHTTPTransaction *)self _beginDownloadTaskWithSessionConfiguration:ephemeralSessionConfiguration request:v3];
    }

    else
    {
      [(DMCHTTPTransaction *)self _beginDataTaskWithSessionConfiguration:ephemeralSessionConfiguration request:v3];
    }
  }

  else
  {
    objc_storeStrong(&self->_error, v4);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }
}

- (void)_beginDataTaskWithSessionConfiguration:(id)configuration request:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF78];
  requestCopy = request;
  v8 = [v6 sessionWithConfiguration:configuration delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v8;

  v10 = [(NSURLSession *)self->_session dataTaskWithRequest:requestCopy];

  authenticator = [(DMCHTTPTransaction *)self authenticator];
  LOBYTE(requestCopy) = objc_opt_respondsToSelector();

  v12 = 0;
  if ((requestCopy & 1) != 0 && (-[DMCHTTPTransaction authenticator](self, "authenticator"), v13 = objc_claimAutoreleasedReturnValue(), v19 = 0, v14 = [v13 prepareTask:v10 error:&v19], v15 = v19, v12 = v19, v13, (v14 & 1) == 0))
  {
    v18 = *DMCLogObjects(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "Failed to prepare data task with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_error, v15);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }

  else
  {
    [v10 resume];
    [(NSURLSession *)self->_session finishTasksAndInvalidate];
  }
}

- (void)_beginDownloadTaskWithSessionConfiguration:(id)configuration request:(id)request
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF78];
  requestCopy = request;
  v8 = [v6 sessionWithConfiguration:configuration delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v8;

  v10 = [(NSURLSession *)self->_session downloadTaskWithRequest:requestCopy];

  authenticator = [(DMCHTTPTransaction *)self authenticator];
  LOBYTE(requestCopy) = objc_opt_respondsToSelector();

  v12 = 0;
  if ((requestCopy & 1) != 0 && (-[DMCHTTPTransaction authenticator](self, "authenticator"), v13 = objc_claimAutoreleasedReturnValue(), v19 = 0, v14 = [v13 prepareTask:v10 error:&v19], v15 = v19, v12 = v19, v13, (v14 & 1) == 0))
  {
    v18 = *DMCLogObjects(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "Failed to prepare download task with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_error, v15);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }

  else
  {
    [v10 resume];
    [(NSURLSession *)self->_session finishTasksAndInvalidate];
  }
}

- (void)_simulateTransaction
{
  v14 = 200;
  v3 = *DMCLogObjects(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Simulating transaction with transaction block", buf, 2u);
  }

  simulatedTransactionBlock = [(DMCHTTPTransaction *)self simulatedTransactionBlock];
  v11 = 0;
  v12 = 0;
  (simulatedTransactionBlock)[2](simulatedTransactionBlock, &v14, &v12, &v11);
  v5 = v12;
  v6 = v11;

  self->_statusCode = v14;
  v7 = [v5 copy];
  responseData = self->_responseData;
  self->_responseData = v7;

  v9 = [v6 copy];
  error = self->_error;
  self->_error = v9;

  [(DMCHTTPTransaction *)self _completeTransaction];
}

- (void)performSynchronously
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *DMCLogObjects(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    requestURL = self->_requestURL;
    *buf = 138543362;
    v14 = requestURL;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Beginning synchronous HTTP request to URL: %{public}@", buf, 0xCu);
  }

  v5 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__DMCHTTPTransaction_performSynchronously__block_invoke;
  v11[3] = &unk_1E7ADC760;
  v6 = v5;
  v12 = v6;
  [(DMCHTTPTransaction *)self performCompletionBlock:v11];
  v7 = dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *DMCLogObjects(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self->_requestURL;
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_INFO, "Synchronous HTTP request complete to URL: %{public}@", buf, 0xCu);
  }
}

- (void)performCompletionBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v6 = *DMCLogObjects(blockCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    requestURL = self->_requestURL;
    *buf = 138543362;
    v19 = requestURL;
    _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_INFO, "Beginning HTTP request to URL: %{public}@", buf, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  responseData = self->_responseData;
  self->_responseData = v8;

  error = self->_error;
  self->_error = 0;

  objc_storeStrong(&self->_currentURL, self->_requestURL);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__DMCHTTPTransaction_performCompletionBlock___block_invoke;
  v16[3] = &unk_1E7ADC950;
  v16[4] = self;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = MEMORY[0x1B2731A20](v16);
  transactionCompletionBlock = self->_transactionCompletionBlock;
  self->_transactionCompletionBlock = v12;

  v14 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DMCHTTPTransaction_performCompletionBlock___block_invoke_14;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_async(v14, block);
}

uint64_t __45__DMCHTTPTransaction_performCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 112))
  {
    v4 = *(v3 + 120);
    *(v3 + 120) = 0;
  }

  v5 = *DMCLogObjects(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 8);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_INFO, "HTTP request complete to URL: %{public}@", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __45__DMCHTTPTransaction_performCompletionBlock___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) simulatedTransactionBlock];

  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _simulateTransaction];
  }

  else
  {

    return [v3 _beginTransaction];
  }
}

- (void)_completeTransaction
{
  transactionCompletionBlock = [(DMCHTTPTransaction *)self transactionCompletionBlock];

  if (transactionCompletionBlock)
  {
    transactionCompletionBlock2 = [(DMCHTTPTransaction *)self transactionCompletionBlock];
    transactionCompletionBlock2[2]();

    [(DMCHTTPTransaction *)self setTransactionCompletionBlock:0];
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  redirectionCopy = redirection;
  self->_statusCode = [redirectionCopy statusCode];
  allHeaderFields = [redirectionCopy allHeaderFields];

  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v15 = [requestCopy URL];
  v16 = [v15 copy];
  currentURL = self->_currentURL;
  self->_currentURL = v16;

  statusCode = self->_statusCode;
  v21 = *DMCLogObjects(v19, v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (statusCode == 301)
  {
    if (v22)
    {
      v23 = self->_currentURL;
      v27 = 138543362;
      v28 = v23;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEFAULT, "Redirected permanently to URL: %{public}@", &v27, 0xCu);
    }

    v24 = [(NSURL *)self->_currentURL copy];
    permanentlyRedirectedURL = self->_permanentlyRedirectedURL;
    self->_permanentlyRedirectedURL = v24;
  }

  else if (v22)
  {
    v26 = self->_currentURL;
    v27 = 138543362;
    v28 = v26;
    _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEFAULT, "Redirected to URL: %{public}@", &v27, 0xCu);
  }

  handlerCopy[2](handlerCopy, requestCopy);
}

- (BOOL)_shouldAllowTrust:(__SecTrust *)trust forHost:(id)host
{
  v18 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  if (trust)
  {
    if (SecTrustGetCertificateCount(trust) < 1)
    {
      LOBYTE(trust) = 0;
    }

    else if ([(NSArray *)self->_pinnedSecCertificateRefs count])
    {
      LOBYTE(trust) = [(DMCHTTPTransaction *)self _shouldAllowTrustWithPinning:trust forHost:hostCopy];
    }

    else
    {
      error = 0;
      v7 = SecTrustEvaluateWithError(trust, &error);
      LODWORD(trust) = v7;
      if (!v7)
      {
        CFRelease(error);
      }

      v9 = *DMCLogObjects(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = v9;
        v11 = DMCStringForBool(trust);
        *buf = 138543618;
        v15 = hostCopy;
        v16 = 2114;
        v17 = v11;
        _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_DEBUG, "Evaluating trust for host: %{public}@ result: %{public}@", buf, 0x16u);
      }
    }
  }

  return trust;
}

- (BOOL)_shouldAllowTrustWithPinning:(__SecTrust *)pinning forHost:(id)host
{
  v39 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  v8 = hostCopy;
  cf = 0;
  *v36 = 0;
  if (!pinning)
  {
    goto LABEL_18;
  }

  v9 = SecTrustSerialize();
  if (!v9)
  {
    v23 = *DMCLogObjects(0, v10);
    hostCopy = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (hostCopy)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Failed to serialize trust when copying", buf, 2u);
    }

    goto LABEL_18;
  }

  v11 = v9;
  if (CFDataGetLength(v9))
  {
    v13 = SecTrustDeserialize();
    if (v13)
    {
      v15 = v13;
      CFRelease(v11);
      SSL = SecPolicyCreateSSL(1u, v8);
      v17 = [MEMORY[0x1E695DF70] arrayWithObject:SSL];

      if (self->_pinningRevocationCheckRequired)
      {
        Revocation = SecPolicyCreateRevocation(0xBuLL);
        [v17 addObject:Revocation];
      }

      v19 = SecTrustSetPolicies(v15, v17);
      if (v19)
      {
        v21 = *DMCLogObjects(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v36 = 138543362;
          *&v36[4] = v8;
          v22 = "Failed to set policies when evaluating pinning trust for host %{public}@";
LABEL_25:
          _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, v22, v36, 0xCu);
        }
      }

      else
      {
        v29 = SecTrustSetAnchorCertificates(v15, self->_pinnedSecCertificateRefs);
        if (!v29)
        {
          cf = 0;
          v31 = SecTrustEvaluateWithError(v15, &cf);
          v27 = v31;
          if (cf)
          {
            v33 = *DMCLogObjects(v31, v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *v36 = 138543618;
              *&v36[4] = v8;
              v37 = 2114;
              v38 = cf;
              _os_log_impl(&dword_1B1630000, v33, OS_LOG_TYPE_ERROR, "Evaluating pinned trust for host %{public}@ failed with error %{public}@", v36, 0x16u);
            }
          }

          goto LABEL_27;
        }

        v21 = *DMCLogObjects(v29, v30);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v36 = 138543362;
          *&v36[4] = v8;
          v22 = "Failed to set anchors when evaluating pinning trust for host %{public}@";
          goto LABEL_25;
        }
      }

      v27 = 0;
LABEL_27:

      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v15);
      goto LABEL_21;
    }

    v24 = *DMCLogObjects(0, v14);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v25 = "Failed to deserialize trust when copying";
    goto LABEL_16;
  }

  v24 = *DMCLogObjects(0, v12);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v25 = "Failed to serialize trust when copying, zero length result";
LABEL_16:
    _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
  }

LABEL_17:
  CFRelease(v11);
LABEL_18:
  v26 = *DMCLogObjects(hostCopy, v7);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *v36 = 138543362;
    *&v36[4] = v8;
    _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_ERROR, "Failed to copy trust when evaluating pinning trust for host %{public}@", v36, 0xCu);
  }

  v27 = 0;
LABEL_21:

  return v27;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v12 = *DMCLogObjects(authenticationMethod, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *&buf[4] = authenticationMethod;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEBUG, "Handling challenge: %{public}@", buf, 0xCu);
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E696A968]])
  {
    serverTrust = [protectionSpace serverTrust];
    host = [protectionSpace host];
    LOBYTE(serverTrust) = [(DMCHTTPTransaction *)self _shouldAllowTrust:serverTrust forHost:host];

    if ((serverTrust & 1) == 0)
    {
      if (!self->_error)
      {
        v23 = MEMORY[0x1E696ABC0];
        v24 = DMCErrorArray(@"HTTP_ERROR_INVALID_SERVER_CERT_P_URL_%@", v16, v17, v18, v19, v20, v21, v22, self->_requestURL);
        v25 = [v23 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v24 errorType:@"DMCFatalError"];
        error = self->_error;
        self->_error = v25;
      }

      v27 = *DMCLogObjects(v15, v16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEBUG, "NOT sending client identity certificate", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 2, 0);
      goto LABEL_22;
    }
  }

  else
  {
    v15 = [authenticationMethod isEqualToString:*MEMORY[0x1E696A940]];
    if ((v15 & 1) == 0)
    {
      handlerCopy[2](handlerCopy, 3, 0);
      goto LABEL_22;
    }
  }

  if (self->_identity)
  {
    v28 = *DMCLogObjects(v15, v16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_DEBUG, "Preparing to send identity...", buf, 2u);
    }

    *buf = 0;
    if (!SecIdentityCopyCertificate(self->_identity, buf) && self->_identity && *buf)
    {
      v40 = +[DMCFeatureOverrides bypassMDMTLSClientAuthentication];
      v41 = v40;
      v43 = *DMCLogObjects(v40, v42);
      if (v41)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *v45 = 0;
          _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, "Ignoring request for client identity and performing default handling", v45, 2u);
        }

        handlerCopy[2](handlerCopy, 1, 0);
      }

      else
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *v45 = 0;
          _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_DEBUG, "Sending client identity certificate", v45, 2u);
        }

        v44 = [MEMORY[0x1E696AF30] credentialWithIdentity:self->_identity certificates:0 persistence:1];
        (handlerCopy)[2](handlerCopy, 0, v44);
      }
    }

    else
    {
      if (!self->_error)
      {
        v36 = MEMORY[0x1E696ABC0];
        v37 = DMCErrorArray(@"HTTP_ERROR_INVALID_IDENTITY_P_URL_%@", v29, v30, v31, v32, v33, v34, v35, self->_requestURL);
        v38 = [v36 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23000 descriptionArray:v37 errorType:@"DMCFatalError"];
        v39 = self->_error;
        self->_error = v38;
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

LABEL_22:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v51[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  taskCopy = task;
  originalRequest = [taskCopy originalRequest];
  response = [taskCopy response];

  v11 = [DMCHTTPLog logHTTPDetailsForIdentifier:@"Logs" request:originalRequest response:response responseData:self->_responseData responseError:errorCopy];
  if (errorCopy)
  {
    if (!self->_error)
    {
      v13 = MEMORY[0x1E696ABC0];
      domain = [errorCopy domain];
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      v51[0] = localizedDescription;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v18 = [v13 DMCErrorWithDomain:domain code:code descriptionArray:v17 errorType:@"DMCRetryableError"];
      error = self->_error;
      self->_error = v18;
    }

    v20 = *DMCLogObjects(v11, v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      currentURL = self->_currentURL;
      v22 = self->_error;
      v23 = v20;
      dMCVerboseDescription = [(NSError *)v22 DMCVerboseDescription];
      *buf = 138543618;
      v48 = currentURL;
      v49 = 2114;
      v50 = dMCVerboseDescription;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Connection to %{public}@ failed with error: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  statusCode = self->_statusCode;
  v26 = *DMCLogObjects(v11, v12);
  if (statusCode == 403)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = self->_currentURL;
      *buf = 138543362;
      v48 = v27;
      _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_ERROR, "Connection to %{public}@ finished with 403 response", buf, 0xCu);
    }

    v28 = [MEMORY[0x1E695DF20] dmc_jsonDictionaryFromData:self->_responseData];
    if (v28)
    {
      v46 = 0;
      v29 = [DMCHTTPRequestor parse403ErrorWithResponseDictionary:v28 outError:&v46];
      v30 = v46;
      v31 = v30;
      if (v29)
      {
        v31 = v30;
        v32 = self->_error;
        self->_error = v31;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v31 = 0;
    }

    v34 = MEMORY[0x1E696ABC0];
    requestURL = self->_requestURL;
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
    v43 = DMCErrorArray(@"HTTP_ERROR_REQUEST_FAILED_%@_%@", v36, v37, v38, v39, v40, v41, v42, requestURL);
    v44 = [v34 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23010 descriptionArray:v43 errorType:@"DMCFatalError"];
    v45 = self->_error;
    self->_error = v44;

    goto LABEL_16;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v33 = self->_currentURL;
    *buf = 138543362;
    v48 = v33;
    _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_DEBUG, "Connection finished loading to URL %{public}@", buf, 0xCu);
  }

LABEL_17:
  [(DMCHTTPTransaction *)self _completeTransaction];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  responseCopy = response;
  self->_statusCode = [responseCopy statusCode];
  allHeaderFields = [responseCopy allHeaderFields];

  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v14 = *DMCLogObjects(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    statusCode = self->_statusCode;
    *buf = 67109120;
    v31 = statusCode;
    _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_DEBUG, "Received response status code: %d", buf, 8u);
  }

  v16 = self->_statusCode;
  if (v16 == 403 || v16 == 200)
  {
    self->_rememberData = 1;
  }

  else if (!self->_error)
  {
    v17 = MEMORY[0x1E696ABC0];
    requestURL = self->_requestURL;
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v26 = DMCErrorArray(@"HTTP_ERROR_REQUEST_FAILED_%@_%@", v19, v20, v21, v22, v23, v24, v25, requestURL);
    v27 = [v17 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v26 errorType:@"DMCFatalError"];
    error = self->_error;
    self->_error = v27;
  }

  handlerCopy[2](handlerCopy);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  if (self->_rememberData)
  {
    [(NSMutableData *)self->_responseData appendData:data, task];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v58 = *MEMORY[0x1E69E9840];
  lCopy = l;
  response = [task response];
  self->_statusCode = [response statusCode];
  allHeaderFields = [response allHeaderFields];
  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v13 = *DMCLogObjects(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    statusCode = self->_statusCode;
    *buf = 67109120;
    LODWORD(v53) = statusCode;
    _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEBUG, "Received response status code: %d", buf, 8u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  downloadURL = [(DMCHTTPTransaction *)self downloadURL];
  v51 = 0;
  v17 = [defaultManager removeItemAtURL:downloadURL error:&v51];
  v18 = v51;
  v19 = v51;

  if (v17)
  {
    v22 = *DMCLogObjects(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = v22;
      downloadURL2 = [(DMCHTTPTransaction *)self downloadURL];
      path = [downloadURL2 path];
      *buf = 138543362;
      v53 = path;
      _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_DEBUG, "Removed existing downloaded data file at %{public}@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  domain = [v19 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v19 code];

    if (code == 4)
    {
LABEL_8:
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      downloadURL3 = [(DMCHTTPTransaction *)self downloadURL];
      v50 = v19;
      v32 = [defaultManager2 moveItemAtURL:lCopy toURL:downloadURL3 error:&v50];
      v33 = v50;
      v34 = v50;

      v37 = *DMCLogObjects(v35, v36);
      if (v32)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = v37;
          path2 = [lCopy path];
          downloadURL4 = [(DMCHTTPTransaction *)self downloadURL];
          path3 = [downloadURL4 path];
          *buf = 138543618;
          v53 = path2;
          v54 = 2114;
          v55 = path3;
          _os_log_impl(&dword_1B1630000, v38, OS_LOG_TYPE_DEBUG, "Moved downloaded data file at %{public}@, to %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v42 = v37;
          path4 = [lCopy path];
          downloadURL5 = [(DMCHTTPTransaction *)self downloadURL];
          path5 = [downloadURL5 path];
          *buf = 138543874;
          v53 = path4;
          v54 = 2114;
          v55 = path5;
          v56 = 2114;
          v57 = v34;
          _os_log_impl(&dword_1B1630000, v42, OS_LOG_TYPE_ERROR, "Could not move downloaded data file at %{public}@, to %{public}@: %{public}@", buf, 0x20u);
        }

        objc_storeStrong(&self->_error, v33);
      }

      v19 = v34;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v46 = *DMCLogObjects(v28, v29);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = v46;
    downloadURL6 = [(DMCHTTPTransaction *)self downloadURL];
    path6 = [downloadURL6 path];
    *buf = 138543618;
    v53 = path6;
    v54 = 2114;
    v55 = v19;
    _os_log_impl(&dword_1B1630000, v47, OS_LOG_TYPE_ERROR, "Failed to remove existing downloaded data file at %{public}@: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_error, v18);
LABEL_19:
}

void __47__DMCHTTPTransaction_emptySuccessResponseBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  *a2 = 200;
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }
}

@end