@interface FMRequest
+ (void)initialize;
- (BOOL)canRequestBeRetriedNow;
- (FMRequest)initWithProvider:(id)provider;
- (FMRequestDelegate)delegate;
- (NSMutableDictionary)requestHeaders;
- (NSString)authToken;
- (double)_decayedWaitIntervalForRetryCount:(int64_t)count;
- (id)_basicAuthValue;
- (id)authTokenType;
- (id)urlSession;
- (int)_consecutiveRetryCountForType:(id)type;
- (int)_retryCountForType:(id)type;
- (int64_t)responseErrorType;
- (void)_beginXPCTransaction;
- (void)_disablePowerAssertion;
- (void)_enablePowerAssertion;
- (void)_endXPCTransaction;
- (void)_incrementRetryCountForType:(id)type;
- (void)_networkCameUp;
- (void)_networkStateChanged:(id)changed;
- (void)_retryNow;
- (void)_retryTimerFired;
- (void)_scheduleRetryAfterTimeInterval:(double)interval;
- (void)cancel;
- (void)checkAndScheduleRetries;
- (void)dealloc;
- (void)deinitializeRequest;
- (void)send;
- (void)setCompletionHandler:(id)handler;
@end

@implementation FMRequest

- (FMRequest)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = FMRequest;
  v5 = [(FMRequest *)&v9 init];
  if (v5)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = objc_opt_new();
    [(FMRequest *)v5 setRequestModifierLock:v7];

    [(FMRequest *)v5 setWillRetry:1];
    [(FMRequest *)v5 setProvider:providerCopy];
    [v6 addObserver:v5 selector:"_networkStateChanged:" name:@"com.apple.icloud.fmflocatord.networkChanged" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003859C(self);
  }

  [(FMRequest *)self deinitializeRequest];
  v4.receiver = self;
  v4.super_class = FMRequest;
  [(FMRequest *)&v4 dealloc];
}

- (void)deinitializeRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = sub_100002830(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FMRequest *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ deinitializing...", &v6, 0xCu);
  }

  [v3 removeObserver:self name:@"com.apple.icloud.fmflocatord.networkChanged" object:0];
}

+ (void)initialize
{
  if (!qword_1000702F8)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = qword_1000702F8;
    qword_1000702F8 = v2;

    qword_100070300 = objc_alloc_init(NSRecursiveLock);

    _objc_release_x1();
  }
}

- (id)urlSession
{
  if (qword_100070320 != -1)
  {
    sub_100038628();
  }

  v3 = qword_100070308;

  return v3;
}

- (NSMutableDictionary)requestHeaders
{
  v3 = objc_opt_new();
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authId = [account authId];

  if (authId)
  {
    account2 = [delegate account];
    authId2 = [account2 authId];
    [v3 setObject:authId2 forKeyedSubscript:@"X-Apple-PrsId"];
  }

  account3 = [delegate account];
  apsEnvironment = [account3 apsEnvironment];

  if (apsEnvironment)
  {
    account4 = [delegate account];
    apsEnvironment2 = [account4 apsEnvironment];
    [v3 setObject:apsEnvironment2 forKeyedSubscript:@"X-Apple-PushEnv"];
  }

  v13 = +[PreferencesMgr sharedInstance];
  if ([v13 userTestApplication])
  {
    [v3 setObject:@"true" forKeyedSubscript:@"X-Apple-Test-Application"];
  }

  [v3 setObject:@"7.0" forKeyedSubscript:@"X-Apple-Find-API-Ver"];
  v14 = +[RealmSupport serverContextHeaderString];
  [v3 fm_safelyMapKey:@"X-Apple-Ctx" toObject:v14];

  v15 = +[SystemConfig sharedInstance];
  productType = [v15 productType];

  v17 = +[SystemConfig sharedInstance];
  buildVersion = [v17 buildVersion];

  v19 = [NSString stringWithFormat:@"fmflocatord/%@ %@/%@", @"7.0", productType, buildVersion];
  if (v19)
  {
    [v3 setObject:v19 forKeyedSubscript:@"User-Agent"];
  }

  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  _basicAuthValue = [(FMRequest *)self _basicAuthValue];
  if (_basicAuthValue)
  {
    [v3 setObject:_basicAuthValue forKeyedSubscript:@"Authorization"];
  }

  [v3 setObject:@"1.0" forKeyedSubscript:@"X-Apple-Realm-Support"];
  httpRequestHeaders = [v13 httpRequestHeaders];
  if (httpRequestHeaders)
  {
    [v3 addEntriesFromDictionary:httpRequestHeaders];
  }

  return v3;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMRequest *)self isComplete])
  {
    return 0;
  }

  else
  {
    return ![(FMRequest *)self cancelled];
  }
}

- (NSString)authToken
{
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authToken = [account authToken];

  return authToken;
}

- (id)authTokenType
{
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authTokenType = [account authTokenType];

  return authTokenType;
}

- (int64_t)responseErrorType
{
  httpResponseError = [(FMRequest *)self httpResponseError];

  if (httpResponseError)
  {
    httpResponseError2 = [(FMRequest *)self httpResponseError];
    domain = [httpResponseError2 domain];
    v6 = [NSURLErrorDomain isEqualToString:domain];

    if (v6)
    {
      httpResponseError3 = [(FMRequest *)self httpResponseError];
      code = [httpResponseError3 code];

      if (code + 1019 < 0x13)
      {
        return qword_100044CA0[code + 1019];
      }

      return 2;
    }

    httpResponseError4 = [(FMRequest *)self httpResponseError];
    domain2 = [httpResponseError4 domain];
    v12 = [NSPOSIXErrorDomain isEqualToString:domain2];

    if (v12)
    {
      httpResponseError5 = [(FMRequest *)self httpResponseError];
      code2 = [httpResponseError5 code];

      if (code2 == 22)
      {
        return 513;
      }
    }
  }

  httpResponseStatus = [(FMRequest *)self httpResponseStatus];
  if (httpResponseStatus == 401)
  {
    return 257;
  }

  if (httpResponseStatus == 330)
  {
    return 769;
  }

  if ([(FMRequest *)self httpResponseStatus]< 200)
  {
    return 2;
  }

  return 2 * ([(FMRequest *)self httpResponseStatus]> 299);
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  v6 = objc_retainBlock(handlerCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)send
{
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  inProgress = [(FMRequest *)self inProgress];
  if ((inProgress & 1) == 0)
  {
    inProgress = [(FMRequest *)self cancelled];
    if ((inProgress & 1) == 0)
    {
      inProgress = [(FMRequest *)self isComplete];
      if ((inProgress & 1) == 0)
      {
        inProgress = [(FMRequest *)self willRetry];
        if (inProgress)
        {
          delegate = [(FMRequest *)self delegate];
          *v60 = 0;
          v61 = v60;
          v62 = 0x3032000000;
          v63 = sub_1000211A4;
          v64 = sub_1000211B4;
          v65 = 0;
          [(FMRequest *)self setInProgress:1];
          [(FMRequest *)self setAlertFromServerResponse:0];
          willSendHandler = [(FMRequest *)self willSendHandler];

          if (willSendHandler)
          {
            willSendHandler2 = [(FMRequest *)self willSendHandler];
            (willSendHandler2)[2](willSendHandler2, self);
          }

          completionHandler = [(FMRequest *)self completionHandler];
          account = [delegate account];
          authId = [account authId];
          v11 = authId;
          if (!authId || ([(FMRequest *)self authToken], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v11, v13))
          {
            requestUrl = sub_100002830(authId);
            if (os_log_type_enabled(requestUrl, OS_LOG_TYPE_DEFAULT))
            {
              fm_logID = [(FMRequest *)self fm_logID];
              *buf = 138412290;
              v67 = fm_logID;
              _os_log_impl(&_mh_execute_header, requestUrl, OS_LOG_TYPE_DEFAULT, "%@ No credentials found. Not sending the request", buf, 0xCu);
            }

            goto LABEL_49;
          }

          requestUrl = [(FMRequest *)self requestUrl];
          v15 = sub_100002830(requestUrl);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            authId2 = [account authId];
            authToken = [(FMRequest *)self authToken];
            sub_10003863C(authId2, authToken, v75, v15);
          }

          v19 = sub_100002830(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            authTokenType = [(FMRequest *)self authTokenType];
            *buf = 138412290;
            v67 = authTokenType;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Using auth token of type - %@", buf, 0xCu);
          }

          if (!requestUrl)
          {
            requestUrl = sub_100002830(v21);
            if (os_log_type_enabled(requestUrl, OS_LOG_TYPE_DEFAULT))
            {
              fm_logID2 = [(FMRequest *)self fm_logID];
              *buf = 138412290;
              v67 = fm_logID2;
              _os_log_impl(&_mh_execute_header, requestUrl, OS_LOG_TYPE_DEFAULT, "%@ No url found. Not sending the request", buf, 0xCu);
            }

            goto LABEL_49;
          }

          host = [requestUrl host];
          authId3 = [account authId];
          v23 = [RealmSupport redirectedHostForHost:host withContext:authId3];
          v24 = *(v61 + 5);
          *(v61 + 5) = v23;

          if (*(v61 + 5) && ([host isEqualToString:?] & 1) == 0)
          {
            v25 = [requestUrl URLByReplacingHost:*(v61 + 5)];

            requestUrl = v25;
          }

          requestHeaders = [(FMRequest *)self requestHeaders];
          requestBody = [(FMRequest *)self requestBody];
          if (requestBody)
          {
            v59 = 0;
            v27 = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&v59];
            v28 = v59;
            v29 = v28;
            v51 = v27;
            if (!v27)
            {
              v30 = sub_100002830(v28);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                fm_logID3 = [(FMRequest *)self fm_logID];
                sub_1000386C4(fm_logID3, v74, v30);
              }
            }

            if (v29)
            {
              v32 = sub_100002830(v28);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                fm_logID4 = [(FMRequest *)self fm_logID];
                sub_10003871C(fm_logID4, v29, buf, v32);
              }

              v35 = sub_10001BAE0(v34);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *v72 = 138412290;
                v73 = requestBody;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Encountered a serializing error for the request body : %@", v72, 0xCu);
              }

LABEL_48:
LABEL_49:

              _Block_object_dispose(v60, 8);
              goto LABEL_31;
            }
          }

          else
          {
            v51 = 0;
          }

          v40 = [requestHeaders mutableCopy];
          v41 = [v40 objectForKeyedSubscript:@"Authorization"];

          if (v41)
          {
            v42 = [v40 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
          }

          v43 = sub_10001BAE0(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            fm_logID5 = [(FMRequest *)self fm_logID];
            *buf = 138412802;
            v67 = fm_logID5;
            v68 = 2112;
            v69 = requestUrl;
            v70 = 2112;
            v71 = v40;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Sending %@ to url %@ with headers: \n%@", buf, 0x20u);
          }

          v46 = sub_10001BAE0(v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            fm_logID6 = [(FMRequest *)self fm_logID];
            *buf = 138412546;
            v67 = fm_logID6;
            v68 = 2112;
            v69 = requestBody;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Sending %@ body dictionary : \n%@ ", buf, 0x16u);
          }

          v29 = [NSMutableURLRequest requestWithURL:requestUrl cachePolicy:1 timeoutInterval:120.0];
          [v29 setHTTPMethod:@"POST"];
          [v29 setAllHTTPHeaderFields:requestHeaders];
          if (v51)
          {
            [v29 setHTTPBody:v51];
          }

          [(FMRequest *)self _enablePowerAssertion];
          if (![(FMRequest *)self totalRetryCount])
          {
            [(FMRequest *)self _beginXPCTransaction];
          }

          urlSession = [(FMRequest *)self urlSession];
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_1000211BC;
          v54[3] = &unk_10005E2D8;
          v54[4] = self;
          v55 = 0;
          v58 = v60;
          v56 = delegate;
          v57 = completionHandler;
          v49 = [urlSession dataTaskWithRequest:v29 completionHandler:v54];
          [(FMRequest *)self setCurrentDataTask:v49];

          currentDataTask = [(FMRequest *)self currentDataTask];
          [currentDataTask resume];

          goto LABEL_48;
        }
      }
    }
  }

  v36 = sub_100002830(inProgress);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not sending", v60, 2u);
  }

LABEL_31:
  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (void)cancel
{
  delegate = [(FMRequest *)self delegate];
  requestModifierLock = [(FMRequest *)self requestModifierLock];
  [requestModifierLock lock];

  [(FMRequest *)self setCancelled:1];
  [(FMRequest *)self setCurrentDataTask:0];
  [(FMRequest *)self setInProgress:0];
  retryTimer = [(FMRequest *)self retryTimer];
  [retryTimer invalidate];

  [(FMRequest *)self setRetryTimer:0];
  v6 = sub_100002830([(FMRequest *)self setNextRetryTime:0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "endXPCTransaction because cancel", v8, 2u);
  }

  [(FMRequest *)self _endXPCTransaction];
  [(FMRequest *)self _disablePowerAssertion];
  [delegate didCancelRequest:self];
  requestModifierLock2 = [(FMRequest *)self requestModifierLock];
  [requestModifierLock2 unlock];
}

- (id)_basicAuthValue
{
  delegate = [(FMRequest *)self delegate];
  account = [delegate account];
  authId = [account authId];
  authToken = [(FMRequest *)self authToken];
  v7 = [NSString stringWithFormat:@"%@:%@", authId, authToken];

  account2 = [delegate account];
  authId2 = [account2 authId];
  authToken2 = [(FMRequest *)self authToken];
  v11 = @"(not-nil)";
  if (!authToken2)
  {
    v11 = @"(nil)";
  }

  v12 = [NSString stringWithFormat:@"%@:%@", authId2, v11];

  v14 = sub_100002830(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1000388E4();
  }

  [qword_100070300 lock];
  v15 = [qword_1000702F8 objectForKeyedSubscript:v7];
  if (!v15)
  {
    v16 = [v7 dataUsingEncoding:4];
    v17 = v16;
    if (v16 && [v16 length])
    {
      base64EncodedString = [v17 base64EncodedString];
      if (base64EncodedString)
      {
        v15 = [NSString stringWithFormat:@"Basic %@", base64EncodedString];
        if (v15)
        {
          [qword_1000702F8 setObject:v15 forKeyedSubscript:v7];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  [qword_100070300 unlock];

  return v15;
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

- (void)_enablePowerAssertion
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[PowerMgr sharedInstance];
  [v5 powerAssertionEnableWithReason:v6];
}

- (void)_disablePowerAssertion
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[PowerMgr sharedInstance];
  [v5 powerAssertionDisableWithReason:v6];
}

- (void)checkAndScheduleRetries
{
  delegate = [(FMRequest *)self delegate];
  [(FMRequest *)self setNextRetryType:0];
  nextRetryType = [(FMRequest *)self nextRetryType];
  if (nextRetryType)
  {
  }

  else
  {
    isComplete = [(FMRequest *)self isComplete];
    if (isComplete)
    {
      v6 = sub_100002830(isComplete);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        fm_logID = [(FMRequest *)self fm_logID];
        v49 = 138412290;
        v50 = fm_logID;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ Request is complete", &v49, 0xCu);
      }

      [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
    }
  }

  nextRetryType2 = [(FMRequest *)self nextRetryType];
  if (nextRetryType2)
  {
  }

  else
  {
    canRequestBeRetriedNow = [(FMRequest *)self canRequestBeRetriedNow];
    if ((canRequestBeRetriedNow & 1) == 0)
    {
      v10 = sub_100002830(canRequestBeRetriedNow);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        fm_logID2 = [(FMRequest *)self fm_logID];
        v49 = 138412290;
        v50 = fm_logID2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ Request cannot be retried anymore. Not scheduling any more retries", &v49, 0xCu);
      }

      [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
    }
  }

  nextRetryType3 = [(FMRequest *)self nextRetryType];

  v13 = -1.0;
  if (!nextRetryType3)
  {
    httpResponseHeaders = [(FMRequest *)self httpResponseHeaders];
    v15 = [httpResponseHeaders objectForKeyedSubscript:@"X-Apple-Retry-After"];

    if (v15)
    {
      doubleValue = [v15 doubleValue];
      if (v17 < 0.0)
      {
        v18 = sub_100002830(doubleValue);
        v19 = -1.0;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID3 = [(FMRequest *)self fm_logID];
          v49 = 138412290;
          v50 = fm_logID3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ Server requested that no more retries be done.", &v49, 0xCu);
        }

        v21 = @"NoMoreRetries";
LABEL_23:

        [(FMRequest *)self setNextRetryType:v21];
        v13 = v19;
        goto LABEL_24;
      }

      if (v17 > 0.0)
      {
        v19 = v17;
        v18 = sub_100002830(doubleValue);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID4 = [(FMRequest *)self fm_logID];
          v49 = 138412546;
          v50 = fm_logID4;
          v51 = 2048;
          v52 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ Server requested a retry after %f seconds", &v49, 0x16u);
        }

        v21 = @"ServerDelayedRetry";
        goto LABEL_23;
      }
    }

LABEL_24:
  }

  nextRetryType4 = [(FMRequest *)self nextRetryType];
  if (nextRetryType4)
  {
  }

  else if ([(FMRequest *)self responseErrorType]== 257)
  {
    [(FMRequest *)self setNextRetryType:@"NoMoreRetries"];
  }

  nextRetryType5 = [(FMRequest *)self nextRetryType];
  if (nextRetryType5)
  {
    account = nextRetryType5;
LABEL_31:

    goto LABEL_34;
  }

  if ([(FMRequest *)self responseErrorType]== 514 && ![(FMRequest *)self _retryCountForType:@"TryOriginalHost"])
  {
    [(FMRequest *)self setNextRetryType:@"TryOriginalHost"];
    account = [delegate account];
    authId = [account authId];
    [RealmSupport clearCachedHostsWithContext:authId];

    v13 = 0.0;
    goto LABEL_31;
  }

LABEL_34:
  nextRetryType6 = [(FMRequest *)self nextRetryType];
  if (nextRetryType6)
  {
  }

  else if (([(FMRequest *)self responseErrorType]& 0x200) != 0)
  {
    v27 = [(FMRequest *)self _retryCountForType:@"TimerBasedNetworkRetry"];
    if ([(FMRequest *)self maxTimerBasedNetworkRetries]== -1 || [(FMRequest *)self maxTimerBasedNetworkRetries]> v27)
    {
      [(FMRequest *)self setNextRetryType:@"TimerBasedNetworkRetry"];
      [(FMRequest *)self _decayedWaitIntervalForRetryCount:v27];
      v13 = v28;
    }

    else
    {
      v30 = [(FMRequest *)self _consecutiveRetryCountForType:@"NotificationBasedNetworkRetry"];
      if ([(FMRequest *)self maxConsecutiveNetworkNotificationRetries]== -1 || [(FMRequest *)self maxConsecutiveNetworkNotificationRetries]> v30)
      {
        v31 = sub_100002830([(FMRequest *)self setNextRetryType:@"NotificationBasedNetworkRetry"]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          fm_logID5 = [(FMRequest *)self fm_logID];
          v49 = 138412290;
          v50 = fm_logID5;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@ Waiting for a network-up notification to retry again", &v49, 0xCu);
        }

        v13 = -1.0;
      }

      else
      {
        v33 = sub_100002830([(FMRequest *)self setNextRetryType:@"NoMoreRetries"]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          fm_logID6 = [(FMRequest *)self fm_logID];
          v49 = 138412290;
          v50 = fm_logID6;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of consecutive network-up notification based retries", &v49, 0xCu);
        }
      }
    }
  }

  nextRetryType7 = [(FMRequest *)self nextRetryType];
  if (nextRetryType7)
  {
  }

  else if ([(FMRequest *)self responseErrorType]== 769)
  {
    v36 = [(FMRequest *)self _retryCountForType:@"RedirectRetry"];
    if (v36)
    {
      v37 = v36;
      if ([(FMRequest *)self maxNonNetworkRelatedRetries]== -1 || [(FMRequest *)self maxNonNetworkRelatedRetries]> v37)
      {
        [(FMRequest *)self setNextRetryType:@"RedirectRetry"];
        [(FMRequest *)self _decayedWaitIntervalForRetryCount:v37];
        v13 = v38;
      }

      else
      {
        v39 = sub_100002830([(FMRequest *)self setNextRetryType:@"NoMoreRetries"]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          fm_logID7 = [(FMRequest *)self fm_logID];
          v49 = 138412290;
          v50 = fm_logID7;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of redirect retries", &v49, 0xCu);
        }
      }
    }

    else
    {
      [(FMRequest *)self setNextRetryType:@"RedirectRetry"];
      v13 = 0.0;
    }
  }

  nextRetryType8 = [(FMRequest *)self nextRetryType];

  if (!nextRetryType8)
  {
    v42 = [NSNumber numberWithInteger:[(FMRequest *)self httpResponseStatus]];
    stringValue = [v42 stringValue];

    v44 = [(FMRequest *)self _retryCountForType:stringValue];
    if ([(FMRequest *)self maxNonNetworkRelatedRetries]== -1 || [(FMRequest *)self maxNonNetworkRelatedRetries]> v44)
    {
      [(FMRequest *)self setNextRetryType:stringValue];
      [(FMRequest *)self _decayedWaitIntervalForRetryCount:v44];
      v13 = v45;
    }

    else
    {
      v46 = sub_100002830([(FMRequest *)self setNextRetryType:@"NoMoreRetries"]);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        fm_logID8 = [(FMRequest *)self fm_logID];
        v49 = 138412546;
        v50 = fm_logID8;
        v51 = 2112;
        v52 = *&stringValue;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@ Stopped retrying since we exceeded the maximum number of retries for status code %@", &v49, 0x16u);
      }
    }
  }

  nextRetryType9 = [(FMRequest *)self nextRetryType];
  -[FMRequest setWillRetry:](self, "setWillRetry:", [nextRetryType9 isEqualToString:@"NoMoreRetries"] ^ 1);

  [(FMRequest *)self _scheduleRetryAfterTimeInterval:v13];
}

- (double)_decayedWaitIntervalForRetryCount:(int64_t)count
{
  [(FMRequest *)self firstRetryInterval];
  v6 = v5;
  [(FMRequest *)self retryIntervalDecayFactor];
  v8 = v6 * pow(v7, count);
  [(FMRequest *)self maxRetryInterval];
  if (v9 <= -1.0)
  {
    return v8;
  }

  [(FMRequest *)self maxRetryInterval];
  if (v8 <= v10)
  {
    return v8;
  }

  [(FMRequest *)self maxRetryInterval];
  return result;
}

- (void)_retryTimerFired
{
  retryTimer = [(FMRequest *)self retryTimer];
  [retryTimer invalidate];

  [(FMRequest *)self setRetryTimer:0];
  [(FMRequest *)self setNextRetryTime:0];
  inProgress = [(FMRequest *)self inProgress];
  if (inProgress)
  {
    v5 = sub_100002830(inProgress);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      fm_logID = [(FMRequest *)self fm_logID];
      v7 = 138412290;
      v8 = fm_logID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Retry time arrived, but request cannot be retried anymore or retry is already in progress. Not retrying", &v7, 0xCu);
    }
  }

  else
  {

    [(FMRequest *)self _retryNow];
  }
}

- (void)_retryNow
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ Retrying request now...", &v6, 0xCu);
  }

  v4 = +[NSDate date];
  [(FMRequest *)self setLastRetryTime:v4];

  nextRetryType = [(FMRequest *)self nextRetryType];
  [(FMRequest *)self _incrementRetryCountForType:nextRetryType];

  [(FMRequest *)self send];
}

- (void)_networkCameUp
{
  v3 = sub_100002830(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100038958(self);
  }

  if ([(FMRequest *)self canRequestBeRetriedNow]&& ![(FMRequest *)self inProgress])
  {
    nextRetryType = [(FMRequest *)self nextRetryType];
    if ([nextRetryType isEqualToString:@"TimerBasedNetworkRetry"])
    {
    }

    else
    {
      nextRetryType2 = [(FMRequest *)self nextRetryType];
      v6 = [nextRetryType2 isEqualToString:@"NotificationBasedNetworkRetry"];

      if (!v6)
      {
        return;
      }
    }

    v7 = +[NSDate date];
    nextRetryType3 = [(FMRequest *)self nextRetryType];
    if ([nextRetryType3 isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      nextRetryTime = [(FMRequest *)self nextRetryTime];

      if (nextRetryTime)
      {
        v11 = sub_100002830(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          fm_logID = [(FMRequest *)self fm_logID];
          nextRetryTime2 = [(FMRequest *)self nextRetryTime];
          v26 = 138412546;
          v27 = fm_logID;
          v28 = 2112;
          v29 = nextRetryTime2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ Network up retry already pending for %@", &v26, 0x16u);
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    lastRetryType = [(FMRequest *)self lastRetryType];
    if ([lastRetryType isEqualToString:@"NotificationBasedNetworkRetry"])
    {
      lastRetryTime = [(FMRequest *)self lastRetryTime];

      if (lastRetryTime)
      {
        lastRetryTime2 = [(FMRequest *)self lastRetryTime];
        [v7 timeIntervalSinceDate:lastRetryTime2];
        v18 = v17;

        if (v18 >= 60.0 || v18 < 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = 60.0 - v18;
        }

        goto LABEL_23;
      }
    }

    else
    {
    }

    v20 = 0.0;
LABEL_23:
    nextRetryTime3 = [(FMRequest *)self nextRetryTime];

    if (!nextRetryTime3 || (-[FMRequest nextRetryTime](self, "nextRetryTime"), v22 = objc_claimAutoreleasedReturnValue(), [v22 timeIntervalSinceDate:v7], v24 = v23, v22, v24 < 0.0) || v24 >= v20)
    {
      [(FMRequest *)self _scheduleRetryAfterTimeInterval:v20];
      goto LABEL_30;
    }

    v11 = sub_100002830(v25);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000389E4(self);
    }

LABEL_28:

LABEL_30:
  }
}

- (void)_scheduleRetryAfterTimeInterval:(double)interval
{
  if (interval <= 0.0)
  {
    v16 = sub_100002830(self);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (interval >= 0.0)
    {
      if (v17)
      {
        fm_logID = [(FMRequest *)self fm_logID];
        nextRetryType = [(FMRequest *)self nextRetryType];
        *buf = 138412546;
        v24 = fm_logID;
        v25 = 2112;
        v26 = nextRetryType;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ Scheduling retry of type '%@' to occur now", buf, 0x16u);
      }

      v21 = +[NSDate date];
      [(FMRequest *)self setNextRetryTime:v21];

      v22 = +[NSThread currentThread];
      [(FMRequest *)self performSelector:"_retryNow" onThread:v22 withObject:0 waitUntilDone:0];
    }

    else
    {
      if (v17)
      {
        fm_logID2 = [(FMRequest *)self fm_logID];
        *buf = 138412290;
        v24 = fm_logID2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ Not scheduling any retry", buf, 0xCu);
      }

      [(FMRequest *)self setNextRetryTime:0];
    }
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:interval];
    [(FMRequest *)self setNextRetryTime:v5];

    v7 = sub_100002830(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      fm_logID3 = [(FMRequest *)self fm_logID];
      nextRetryType2 = [(FMRequest *)self nextRetryType];
      nextRetryTime = [(FMRequest *)self nextRetryTime];
      *buf = 138412802;
      v24 = fm_logID3;
      v25 = 2112;
      v26 = nextRetryType2;
      v27 = 2112;
      v28 = nextRetryTime;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ Scheduling retry of type '%@' to occur at %@", buf, 0x20u);
    }

    v11 = [NSString stringWithFormat:@"com.apple.icloud.fmflocatord.retry.%@-%X", objc_opt_class(), self];
    v12 = [[PCPersistentTimer alloc] initWithTimeInterval:v11 serviceIdentifier:self target:"_retryTimerFired" selector:0 userInfo:interval];
    [(FMRequest *)self setRetryTimer:v12];

    retryTimer = [(FMRequest *)self retryTimer];
    [retryTimer setMinimumEarlyFireProportion:0.75];

    retryTimer2 = [(FMRequest *)self retryTimer];
    v15 = +[NSRunLoop currentRunLoop];
    [retryTimer2 scheduleInRunLoop:v15];
  }
}

- (int)_retryCountForType:(id)type
{
  typeCopy = type;
  totalRetriesByType = [(FMRequest *)self totalRetriesByType];
  v6 = [totalRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)_consecutiveRetryCountForType:(id)type
{
  typeCopy = type;
  consecutiveRetriesByType = [(FMRequest *)self consecutiveRetriesByType];
  v6 = [consecutiveRetriesByType objectForKeyedSubscript:typeCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_incrementRetryCountForType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v18 = typeCopy;
    totalRetriesByType = [(FMRequest *)self totalRetriesByType];

    if (!totalRetriesByType)
    {
      v6 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setTotalRetriesByType:v6];

      v7 = +[NSMutableDictionary dictionary];
      [(FMRequest *)self setConsecutiveRetriesByType:v7];
    }

    totalRetriesByType2 = [(FMRequest *)self totalRetriesByType];
    v9 = [totalRetriesByType2 objectForKeyedSubscript:v18];

    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue] + 1);
    totalRetriesByType3 = [(FMRequest *)self totalRetriesByType];
    [totalRetriesByType3 setObject:v10 forKeyedSubscript:v18];

    consecutiveRetriesByType = [(FMRequest *)self consecutiveRetriesByType];
    v13 = [consecutiveRetriesByType objectForKeyedSubscript:v18];

    lastRetryType = [(FMRequest *)self lastRetryType];
    v15 = [v18 isEqualToString:lastRetryType];

    if (v15)
    {
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 intValue] + 1);
    }

    else
    {
      v16 = &off_100062F70;
    }

    consecutiveRetriesByType2 = [(FMRequest *)self consecutiveRetriesByType];
    [consecutiveRetriesByType2 setObject:v16 forKeyedSubscript:v18];

    typeCopy = v18;
  }

  ++self->_totalRetryCount;
}

- (void)_networkStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"IsNetworkAvailable"];

  if (v5 && [v5 BOOLValue])
  {
    [(FMRequest *)self _networkCameUp];
  }

  _objc_release_x1();
}

- (FMRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end