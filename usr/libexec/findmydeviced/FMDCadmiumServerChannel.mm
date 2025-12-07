@interface FMDCadmiumServerChannel
- (FMDCadmiumServerChannel)init;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_logRequestError:(id)error;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)id;
- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion;
@end

@implementation FMDCadmiumServerChannel

- (FMDCadmiumServerChannel)init
{
  v15.receiver = self;
  v15.super_class = FMDCadmiumServerChannel;
  v2 = [(FMDCadmiumServerChannel *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig = v2->_sessionConfig;
    v2->_sessionConfig = v5;

    [(NSURLSessionConfiguration *)v2->_sessionConfig setURLCache:0];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setRequestCachePolicy:1];
    cookieStorage = [(FMDCadmiumServerChannel *)v2 cookieStorage];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setHTTPCookieStorage:cookieStorage];

    v8 = [FMDURLSessionFactory sessionWithConfiguration:v2->_sessionConfig delegate:v2 delegateQueue:v2->_queue];
    session = v2->_session;
    v2->_session = v8;

    v10 = +[NSMutableDictionary dictionary];
    requests = v2->_requests;
    v2->_requests = v10;

    v12 = objc_opt_new();
    requestModifierLock = v2->_requestModifierLock;
    v2->_requestModifierLock = v12;
  }

  return v2;
}

- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion
{
  idCopy = id;
  bodyCopy = body;
  completionCopy = completion;
  headersCopy = headers;
  v16 = [NSMutableURLRequest requestWithURL:l cachePolicy:1 timeoutInterval:120.0];
  [v16 setHTTPMethod:@"POST"];
  [v16 setAllHTTPHeaderFields:headersCopy];

  if (bodyCopy)
  {
    [v16 setHTTPBody:bodyCopy];
  }

  session = [(FMDCadmiumServerChannel *)self session];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10016CCA0;
  v24[3] = &unk_1002CF480;
  v25 = idCopy;
  v26 = completionCopy;
  v24[4] = self;
  v18 = idCopy;
  v19 = completionCopy;
  v20 = [session dataTaskWithRequest:v16 completionHandler:v24];

  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  [requests setObject:v20 forKeyedSubscript:v18];

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];

  [v20 resume];
}

- (void)cancelRequestWithId:(id)id
{
  idCopy = id;
  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  v6 = [requests objectForKeyedSubscript:idCopy];

  if (v6)
  {
    requests2 = [(FMDCadmiumServerChannel *)self requests];
    [requests2 removeObjectForKey:idCopy];

    [v6 cancel];
  }

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)cancelAllRequests
{
  requestModifierLock = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDCadmiumServerChannel *)self requests];
  v5 = +[NSMutableDictionary dictionary];
  [(FMDCadmiumServerChannel *)self setRequests:v5];

  requestModifierLock2 = [(FMDCadmiumServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = requests;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v7 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v11), v14}];
        v13 = v12;
        if (v12)
        {
          [v12 cancel];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v9 = +[FMSystemInfo sharedInstance];
  if ([v9 isInternalBuild])
  {
    v10 = [FMPreferencesUtil BOOLForKey:@"DisableCertPinning" inDomain:kFMDNotBackedUpPrefDomain];
  }

  else
  {
    v10 = 0;
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];

  v13 = [host isEqualToString:@"gateway.icloud.com"];
  if ((v13 & 1) != 0 || v10)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v14 = sub_100002880(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Detecting authentication method", buf, 2u);
    }

    protectionSpace2 = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace2 authenticationMethod];
    v17 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

    if (v17)
    {
      v19 = sub_100002880(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Setting server trust policy", buf, 2u);
      }

      host2 = [protectionSpace2 host];
      AppleFMiPService = SecPolicyCreateAppleFMiPService();

      if (AppleFMiPService)
      {
        serverTrust = [protectionSpace2 serverTrust];
        v23 = SecTrustSetPolicies(serverTrust, AppleFMiPService);
        CFRelease(AppleFMiPService);
        if (v23)
        {
          v25 = sub_100002880(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v23;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error setting the trust policies : %ld", buf, 0xCu);
          }

          v40 = @"FMDUnerlyingErrorKey";
          v26 = [NSError errorWithDomain:@"SecTrustSetPolicies" code:v23 userInfo:0];
          v41 = v26;
          v27 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v28 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:0 userInfo:v27];

          v29 = 0;
          v30 = 2;
        }

        else
        {
          *buf = 0;
          v33 = SecTrustEvaluateWithError(serverTrust, buf);
          if (v33)
          {
            v29 = [NSURLCredential credentialForTrust:serverTrust];
            v34 = sub_100002880(v29);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v37 = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "FMDCadmiumServerChannel Pinning success - presenting fmip trust as credential.", v37, 2u);
            }

            v28 = 0;
            v30 = 0;
          }

          else
          {
            v35 = sub_100002880(v33);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10022A134(v35);
            }

            v43 = @"FMDUnerlyingErrorKey";
            v34 = [NSError errorWithDomain:@"SecTrustEvaluate" code:1 userInfo:0];
            v44 = v34;
            v36 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v28 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:1 userInfo:v36];

            v29 = 0;
            v30 = 2;
          }
        }
      }

      else
      {
        v38 = @"FMDUnerlyingErrorKey";
        v31 = [NSError errorWithDomain:@"SecPolicyCreateAppleFMiPService" code:0 userInfo:0];
        v39 = v31;
        v32 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v30 = 2;
        v28 = [NSError errorWithDomain:@"FMDCadmiumServerChannelPinningErrorDomain" code:2 userInfo:v32];

        v29 = 0;
      }

      [(FMDCadmiumServerChannel *)self _logRequestError:v28];
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }

    (handlerCopy)[2](handlerCopy, v30, v29);
  }
}

- (void)_logRequestError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    v5 = sub_100002880(errorCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Network error occured %@", &v11, 0xCu);
    }

    v6 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:@"FMDCadmiumServerChannelRequestFailedEventName"];
    userInfo = [v4 userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"FMDUnerlyingErrorKey"];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    [(FMDEventLoggerEventDataPeekError *)v6 setError:v9];
    v10 = +[FMDEventLogger sharedLogger];
    [v10 logEvent:v6];
  }
}

@end