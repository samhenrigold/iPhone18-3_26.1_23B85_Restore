@interface FMDDirectServerChannel
- (FMDDirectServerChannel)init;
- (NSHTTPCookieStorage)cookieStorage;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_logRequestError:(id)error;
- (void)cancelAllRequests;
- (void)cancelRequestWithId:(id)id;
- (void)sendRequestWithId:(id)id toURL:(id)l withHeaders:(id)headers body:(id)body completion:(id)completion;
@end

@implementation FMDDirectServerChannel

- (FMDDirectServerChannel)init
{
  v18.receiver = self;
  v18.super_class = FMDDirectServerChannel;
  v2 = [(FMDDirectServerChannel *)&v18 init];
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
    cookieStorage = [(FMDDirectServerChannel *)v2 cookieStorage];
    [(NSURLSessionConfiguration *)v2->_sessionConfig setHTTPCookieStorage:cookieStorage];

    v8 = +[NSBundle mainBundle];
    bundleIdentifier = [v8 bundleIdentifier];

    v10 = [[AKAppleIDSession alloc] initWithIdentifier:bundleIdentifier];
    [(NSURLSessionConfiguration *)v2->_sessionConfig set_appleIDContext:v10];
    v11 = [FMDURLSessionFactory sessionWithConfiguration:v2->_sessionConfig delegate:v2 delegateQueue:v2->_queue];
    session = v2->_session;
    v2->_session = v11;

    v13 = +[NSMutableDictionary dictionary];
    requests = v2->_requests;
    v2->_requests = v13;

    v15 = objc_opt_new();
    requestModifierLock = v2->_requestModifierLock;
    v2->_requestModifierLock = v15;
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

  session = [(FMDDirectServerChannel *)self session];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10018372C;
  v24[3] = &unk_1002CF480;
  v25 = idCopy;
  v26 = completionCopy;
  v24[4] = self;
  v18 = idCopy;
  v19 = completionCopy;
  v20 = [session dataTaskWithRequest:v16 completionHandler:v24];

  requestModifierLock = [(FMDDirectServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDDirectServerChannel *)self requests];
  [requests setObject:v20 forKeyedSubscript:v18];

  requestModifierLock2 = [(FMDDirectServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];

  [v20 resume];
}

- (void)cancelRequestWithId:(id)id
{
  idCopy = id;
  requestModifierLock = [(FMDDirectServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDDirectServerChannel *)self requests];
  v6 = [requests objectForKeyedSubscript:idCopy];

  if (v6)
  {
    requests2 = [(FMDDirectServerChannel *)self requests];
    [requests2 removeObjectForKey:idCopy];

    [v6 cancel];
  }

  requestModifierLock2 = [(FMDDirectServerChannel *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)cancelAllRequests
{
  requestModifierLock = [(FMDDirectServerChannel *)self requestModifierLock];
  [requestModifierLock lock];

  requests = [(FMDDirectServerChannel *)self requests];
  v5 = +[NSMutableDictionary dictionary];
  [(FMDDirectServerChannel *)self setRequests:v5];

  requestModifierLock2 = [(FMDDirectServerChannel *)self requestModifierLock];
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

- (NSHTTPCookieStorage)cookieStorage
{
  cookieStorage = self->_cookieStorage;
  if (!cookieStorage)
  {
    v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.icloud.findmydeviced"];
    v7 = [v6 stringByAppendingPathComponent:@"cookies"];

    uTF8String = [v7 UTF8String];
    v9 = strlen(uTF8String);
    v10 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, uTF8String, v9, 1u);
    v11 = CFHTTPCookieStorageCreateFromFile();
    CFRunLoopGetMain();
    CFHTTPCookieStorageScheduleWithRunLoop();
    v12 = [[NSHTTPCookieStorage alloc] _initWithCFHTTPCookieStorage:v11];
    [(FMDDirectServerChannel *)self setCookieStorage:v12];

    if (v10)
    {
      CFRelease(v10);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    cookieStorage = self->_cookieStorage;
  }

  return cookieStorage;
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
  if (v13)
  {
    v14 = [FMPreferencesUtil BOOLForKey:@"EnableCertPinningForFindkit" inDomain:kFMDNotBackedUpPrefDomain];
    v15 = v14;
    v16 = sub_10000BE38(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "cert pinning for Findkit enabled = %d", buf, 8u);
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v10)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_32;
  }

  v17 = sub_100002880(v13);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Detecting authentication method", buf, 2u);
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v20 = [authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust];

  if (v20)
  {
    v22 = sub_100002880(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Setting server trust policy", buf, 2u);
    }

    host2 = [protectionSpace2 host];
    AppleFMiPService = SecPolicyCreateAppleFMiPService();

    if (AppleFMiPService)
    {
      serverTrust = [protectionSpace2 serverTrust];
      v26 = SecTrustSetPolicies(serverTrust, AppleFMiPService);
      CFRelease(AppleFMiPService);
      if (v26)
      {
        v28 = sub_100002880(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v26;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Error setting the trust policies : %ld", buf, 0xCu);
        }

        v43 = @"FMDUnerlyingErrorKey";
        v29 = [NSError errorWithDomain:@"SecTrustSetPolicies" code:v26 userInfo:0];
        v44 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v31 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:0 userInfo:v30];

        v32 = 0;
        v33 = 2;
      }

      else
      {
        *buf = 0;
        v36 = SecTrustEvaluateWithError(serverTrust, buf);
        if (v36)
        {
          v32 = [NSURLCredential credentialForTrust:serverTrust];
          v37 = sub_100002880(v32);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "FMDDirectServerChannel Pinning success - presenting fmip trust as credential.", v40, 2u);
          }

          v31 = 0;
          v33 = 0;
        }

        else
        {
          v38 = sub_100002880(v36);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10022B508(v38);
          }

          v46 = @"FMDUnerlyingErrorKey";
          v37 = [NSError errorWithDomain:@"SecTrustEvaluate" code:1 userInfo:0];
          v47 = v37;
          v39 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v31 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:1 userInfo:v39];

          v32 = 0;
          v33 = 2;
        }
      }
    }

    else
    {
      v41 = @"FMDUnerlyingErrorKey";
      v34 = [NSError errorWithDomain:@"SecPolicyCreateAppleFMiPService" code:0 userInfo:0];
      v42 = v34;
      v35 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v33 = 2;
      v31 = [NSError errorWithDomain:@"FMDDirectServerChannelPinningErrorDomain" code:2 userInfo:v35];

      v32 = 0;
    }

    [(FMDDirectServerChannel *)self _logRequestError:v31];
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  (handlerCopy)[2](handlerCopy, v33, v32);

LABEL_32:
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

    v6 = [(FMDEventLoggerEventError *)[FMDEventLoggerEventDataPeekError alloc] initWithEventName:@"FMDDirectServerChannelRequestError"];
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