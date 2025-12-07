@interface FMDRequest
- (BOOL)canRequestBeRetriedNow;
- (FMDRequest)initWithAccount:(id)account;
- (NSMutableDictionary)requestBody;
- (NSMutableDictionary)requestHeaders;
- (NSString)authHeaderValue;
- (int64_t)responseErrorType;
- (void)dealloc;
- (void)deinitializeRequest;
@end

@implementation FMDRequest

- (void)dealloc
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100227F84(self, v3);
  }

  [(FMDRequest *)self deinitializeRequest];
  v4.receiver = self;
  v4.super_class = FMDRequest;
  [(FMDRequest *)&v4 dealloc];
}

- (void)deinitializeRequest
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    v4 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ (0x%lX) deinitializing...", &v6, 0x16u);
  }

  [(FMDRequest *)self setCompletionHandler:0];
  retryHelper = [(FMDRequest *)self retryHelper];
  [retryHelper deinitializeHelper];

  [(FMDRequest *)self setRetryHelper:0];
}

- (NSMutableDictionary)requestBody
{
  v3 = +[NSMutableDictionary dictionary];
  decorator = [(FMDRequest *)self decorator];

  if (decorator)
  {
    decorator2 = [(FMDRequest *)self decorator];
    serverContextGenerator = [decorator2 serverContextGenerator];
    v7 = serverContextGenerator[2]();

    [v3 fm_safelyMapKey:@"serverContext" toObject:v7];
    decorator3 = [(FMDRequest *)self decorator];
    deviceContextGenerator = [decorator3 deviceContextGenerator];
    v10 = deviceContextGenerator[2]();

    [v3 fm_safelyMapKey:@"deviceContext" toObject:v10];
    decorator4 = [(FMDRequest *)self decorator];
    deviceInfoGenerator = [decorator4 deviceInfoGenerator];
    v13 = deviceInfoGenerator[2]();

    [v3 fm_safelyMapKey:@"deviceInfo" toObject:v13];
  }

  return v3;
}

- (NSMutableDictionary)requestHeaders
{
  v3 = objc_opt_new();
  authId = [(FMDRequest *)self authId];

  if (authId)
  {
    authId2 = [(FMDRequest *)self authId];
    [v3 setObject:authId2 forKeyedSubscript:@"X-Apple-PrsId"];
  }

  apsEnv = [(FMDRequest *)self apsEnv];

  if (apsEnv)
  {
    apsEnv2 = [(FMDRequest *)self apsEnv];
    [v3 setObject:apsEnv2 forKeyedSubscript:@"X-Apple-PushEnv"];
  }

  v8 = +[FMDProtectedContextManager sharedManager];
  v19 = 0;
  v20 = 0;
  v9 = [v8 contextForKey:@"serverContextHeaderContext" contextUUID:&v20 error:&v19];
  v10 = v20;
  v11 = v19;

  if (v11)
  {
    v13 = sub_100002880(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10022802C(v11, v13);
    }
  }

  [v3 fm_safelyMapKey:@"X-Apple-Ctx" toObject:v9];
  [v3 setObject:@"6.0" forKeyedSubscript:@"X-Apple-Find-API-Ver"];
  v14 = +[FMDServerConfig sharedInstance];
  userAgent = [v14 userAgent];

  if (userAgent)
  {
    [v3 setObject:userAgent forKeyedSubscript:@"User-Agent"];
  }

  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  authHeaderValue = [(FMDRequest *)self authHeaderValue];
  if (authHeaderValue)
  {
    [v3 setObject:authHeaderValue forKeyedSubscript:@"Authorization"];
  }

  if (+[FMDPreferencesMgr userTestApplication])
  {
    [v3 setObject:@"true" forKeyedSubscript:@"X-Apple-Test-Application"];
  }

  [v3 setObject:@"1.0" forKeyedSubscript:@"X-Apple-Realm-Support"];
  v17 = +[FMDPreferencesMgr httpRequestHeaders];
  if (v17)
  {
    [v3 addEntriesFromDictionary:v17];
  }

  return v3;
}

- (NSString)authHeaderValue
{
  authId = [(FMDRequest *)self authId];
  authToken = [(FMDRequest *)self authToken];
  v5 = [NSString stringWithFormat:@"%@:%@", authId, authToken];

  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1002280A4(v5, v7);
  }

  v8 = [v5 dataUsingEncoding:4];
  v9 = v8;
  if (v8 && [v8 length])
  {
    base64EncodedString = [v9 base64EncodedString];
    if (base64EncodedString)
    {
      v11 = [NSString stringWithFormat:@"Basic %@", base64EncodedString];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)responseErrorType
{
  httpResponseError = [(FMDRequest *)self httpResponseError];

  if (httpResponseError)
  {
    httpResponseError2 = [(FMDRequest *)self httpResponseError];
    domain = [httpResponseError2 domain];
    v6 = [NSURLErrorDomain isEqualToString:domain];

    if (v6)
    {
      httpResponseError3 = [(FMDRequest *)self httpResponseError];
      code = [httpResponseError3 code];

      if (code + 1019 >= 0x13)
      {
        v9 = &qword_100258670;
      }

      else
      {
        v9 = off_1002CE678[code + 1019];
      }

      return *v9;
    }

    httpResponseError4 = [(FMDRequest *)self httpResponseError];
    domain2 = [httpResponseError4 domain];
    v12 = [NSPOSIXErrorDomain isEqualToString:domain2];

    if (v12)
    {
      httpResponseError5 = [(FMDRequest *)self httpResponseError];
      code2 = [httpResponseError5 code];

      if (code2 == 22)
      {
        v9 = &qword_100258680;
        return *v9;
      }
    }
  }

  httpResponseStatus = [(FMDRequest *)self httpResponseStatus];
  if (httpResponseStatus == 401)
  {
    v9 = &qword_100258678;
  }

  else if (httpResponseStatus == 330)
  {
    v9 = &qword_100258690;
  }

  else
  {
    v9 = &qword_100258670;
    if ([(FMDRequest *)self httpResponseStatus]>= 200 && [(FMDRequest *)self httpResponseStatus]<= 299)
    {
      v9 = &qword_100258660;
    }
  }

  return *v9;
}

- (FMDRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v15.receiver = self;
  v15.super_class = FMDRequest;
  v5 = [(FMDRequest *)&v15 init];
  if (v5)
  {
    authId = [accountCopy authId];
    authId = v5->_authId;
    v5->_authId = authId;

    authToken = [accountCopy authToken];
    authToken = v5->_authToken;
    v5->_authToken = authToken;

    apsEnvironment = [accountCopy apsEnvironment];
    apsEnv = v5->_apsEnv;
    v5->_apsEnv = apsEnvironment;

    v12 = +[NSUUID UUID];
    requestId = v5->_requestId;
    v5->_requestId = v12;

    [(FMDRequest *)v5 setWillRetry:1];
  }

  return v5;
}

- (BOOL)canRequestBeRetriedNow
{
  if ([(FMDRequest *)self completed])
  {
    return 0;
  }

  else
  {
    return ![(FMDRequest *)self cancelled];
  }
}

@end