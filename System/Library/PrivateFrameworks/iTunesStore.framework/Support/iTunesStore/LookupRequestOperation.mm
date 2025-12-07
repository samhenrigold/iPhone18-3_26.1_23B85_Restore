@interface LookupRequestOperation
- (BOOL)_performJSSignLookupWithURLBag:(id)bag error:(id *)error;
- (BOOL)_performLocationLookup:(id *)lookup;
- (BOOL)_performPlatformLookup:(id *)lookup;
- (BOOL)shouldSuppressCookies;
- (LookupRequestOperation)initWithLookupProperties:(id)properties;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSAuthenticationContext)authenticationContext;
- (SSLookupProperties)lookupProperties;
- (SSLookupResponse)lookupResponse;
- (id)_URLBagContext;
- (id)_authenticationContext;
- (id)_newLookupResponseWithResultsFromOperation:(id)operation;
- (id)_newStoreURLOperationWithBagKey:(id)key;
- (int64_t)personalizationStyle;
- (void)_setAccountID:(id)d;
- (void)_setLookupResponse:(id)response;
- (void)dealloc;
- (void)operation:(id)operation willSendRequest:(id)request;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setClientIdentifierHeader:(id)header;
- (void)setPersonalizationStyle:(int64_t)style;
- (void)setShouldSuppressCookies:(BOOL)cookies;
- (void)setUserAgent:(id)agent;
@end

@implementation LookupRequestOperation

- (LookupRequestOperation)initWithLookupProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = LookupRequestOperation;
  v4 = [(LookupRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_properties = [properties copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LookupRequestOperation;
  [(LookupRequestOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_authenticationContext;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (SSLookupProperties)lookupProperties
{
  v2 = [(SSLookupProperties *)self->_properties copy];

  return v2;
}

- (SSLookupResponse)lookupResponse
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_response;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (int64_t)personalizationStyle
{
  [(LookupRequestOperation *)self lock];
  personalizationStyle = self->_personalizationStyle;
  [(LookupRequestOperation *)self unlock];
  return personalizationStyle;
}

- (void)setAuthenticationContext:(id)context
{
  [(LookupRequestOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  [(LookupRequestOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (void)setPersonalizationStyle:(int64_t)style
{
  [(LookupRequestOperation *)self lock];
  self->_personalizationStyle = style;

  [(LookupRequestOperation *)self unlock];
}

- (void)setShouldSuppressCookies:(BOOL)cookies
{
  [(LookupRequestOperation *)self lock];
  self->_shouldSuppressCookies = cookies;

  [(LookupRequestOperation *)self unlock];
}

- (BOOL)shouldSuppressCookies
{
  [(LookupRequestOperation *)self lock];
  shouldSuppressCookies = self->_shouldSuppressCookies;
  [(LookupRequestOperation *)self unlock];
  return shouldSuppressCookies;
}

- (void)setUserAgent:(id)agent
{
  [(LookupRequestOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(LookupRequestOperation *)self unlock];
}

- (NSString)userAgent
{
  [(LookupRequestOperation *)self lock];
  v3 = self->_userAgent;
  [(LookupRequestOperation *)self unlock];
  return v3;
}

- (void)run
{
  v16 = 0;
  v3 = [(LookupRequestOperation *)self loadedURLBagWithContext:[(LookupRequestOperation *)self _URLBagContext] returningError:&v16];
  if (v3)
  {
    v4 = v3;
    if ([(SSLookupProperties *)self->_properties location])
    {
      v5 = [(LookupRequestOperation *)self _performLocationLookup:&v16];
    }

    else if ([(LookupRequestOperation *)self personalizationStyle]== 2)
    {
      v5 = [(LookupRequestOperation *)self _performJSSignLookupWithURLBag:v4 error:&v16];
    }

    else
    {
      v5 = [(LookupRequestOperation *)self _performPlatformLookup:&v16];
    }

    v14 = v5;
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v16;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not load URL bag: %@", &v17, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v15 = v13;
        SSFileLog();
      }
    }

    v14 = 0;
  }

  [(LookupRequestOperation *)self setError:v16, v15];
  [(LookupRequestOperation *)self setSuccess:v14];
}

- (void)operation:(id)operation willSendRequest:(id)request
{
  v7 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v7 setLocale:v5];
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
  v6 = [v7 stringFromDate:{+[NSDate date](NSDate, "date")}];
  if (v6)
  {
    [request setValue:v6 forHTTPHeaderField:@"X-Request-TimeStamp"];
  }
}

- (id)_authenticationContext
{
  authenticationContext = [(LookupRequestOperation *)self authenticationContext];
  hTTPHeaders = [(SSAuthenticationContext *)authenticationContext HTTPHeaders];
  v5 = SSHTTPHeaderUserAgent;
  if ([hTTPHeaders objectForKey:SSHTTPHeaderUserAgent])
  {
    return authenticationContext;
  }

  userAgent = [(LookupRequestOperation *)self userAgent];
  if (!userAgent)
  {
    return authenticationContext;
  }

  v8 = userAgent;
  v9 = [(SSAuthenticationContext *)authenticationContext mutableCopy];
  [v9 setValue:v8 forHTTPHeaderField:v5];

  return v9;
}

- (id)_newLookupResponseWithResultsFromOperation:(id)operation
{
  v4 = [[SSLookupResponse alloc] initWithResponseDictionary:{objc_msgSend(objc_msgSend(operation, "dataProvider"), "output")}];
  response = [operation response];
  if (response)
  {
    [response itunes_expirationInterval];
    if (v6 >= 0.0)
    {
      [v4 setExpirationDate:{+[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:")}];
    }
  }

  return v4;
}

- (id)_newStoreURLOperationWithBagKey:(id)key
{
  v5 = objc_alloc_init(ISStoreURLOperation);
  [v5 setAuthenticationContext:{-[LookupRequestOperation authenticationContext](self, "authenticationContext")}];
  [v5 setCanSendGUIDParameter:0];
  [v5 setDataProvider:{+[ISJSONDataProvider provider](ISJSONDataProvider, "provider")}];
  v6 = objc_alloc_init(SSMutableURLRequestProperties);
  [v6 setClientIdentifier:{-[LookupRequestOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v6 setURLBagKey:key];
  timeoutInterval = [(SSLookupProperties *)self->_properties timeoutInterval];
  if (timeoutInterval)
  {
    v8 = timeoutInterval;
    [v6 setAllowedRetryCount:0];
    [v8 doubleValue];
    [v6 setTimeoutInterval:?];
  }

  else
  {
    [v6 setAllowedRetryCount:2];
  }

  userAgent = [(LookupRequestOperation *)self userAgent];
  if (!userAgent)
  {
    if (key != @"nearby-apps")
    {
      goto LABEL_7;
    }

    userAgent = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  }

  [v6 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
LABEL_7:
  copyRequestParameters = [(SSLookupProperties *)self->_properties copyRequestParameters];
  [v6 setRequestParameters:copyRequestParameters];

  [v5 setRequestProperties:v6];
  return v5;
}

- (BOOL)_performJSSignLookupWithURLBag:(id)bag error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_1001AABAC;
  v20 = sub_1001AABBC;
  v21 = 0;
  v7 = [[SSVPlatformContext alloc] initWithBagDictionary:{objc_msgSend(bag, "URLBagDictionary")}];
  if ([v7 unpersonalizedLookupURLString])
  {
    v8 = [[SSVPlatformRequestOperation alloc] initWithPlatformContext:v7];
    [v8 setKeyProfile:{-[SSLookupProperties keyProfile](self->_properties, "keyProfile")}];
    [v8 setStoreFrontSuffix:{objc_msgSend(bag, "valueForKey:", @"storefront-header-suffix"}];
    [v8 _setUserAgent:{-[LookupRequestOperation userAgent](self, "userAgent")}];
    if ([(LookupRequestOperation *)self personalizationStyle]== 2)
    {
      [v8 setShouldSuppressUserInfo:1];
    }

    [v8 setShouldSuppressCookies:{-[LookupRequestOperation shouldSuppressCookies](self, "shouldSuppressCookies")}];
    copyRequestParameters = [(SSLookupProperties *)self->_properties copyRequestParameters];
    [copyRequestParameters removeObjectForKey:SSLookupParameterKeyProfile];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001AABC8;
    v15[3] = &unk_10032B0A0;
    v15[4] = v8;
    [copyRequestParameters enumerateKeysAndObjectsUsingBlock:v15];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001AACA4;
    v14[3] = &unk_10032B0C8;
    v14[4] = self;
    v14[5] = &v16;
    v14[6] = &v22;
    [v8 setResponseBlock:v14];
    [v8 main];
    v10 = v17[5];
  }

  else
  {
    v17[5] = SSError();
  }

  v11 = v23;
  v12 = *(v23 + 24);
  if (error && (v23[3] & 1) == 0)
  {
    *error = v17[5];
    v12 = *(v11 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12 & 1;
}

- (BOOL)_performLocationLookup:(id *)lookup
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_1001AABAC;
  v27 = sub_1001AABBC;
  v28 = 0;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v6) = [v5 shouldLog];
  shouldLogToDisk = [v5 shouldLogToDisk];
  oSLogObject = [v5 OSLogObject];
  v9 = oSLogObject;
  if (shouldLogToDisk)
  {
    LODWORD(v6) = v6 | 2;
  }

  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v10 = objc_opt_class();
    v33 = 138412290;
    v34 = v10;
    v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Performing location lookup", &v33, 12);
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4];
      free(v12);
      v21 = v13;
      SSFileLog();
    }
  }

  _URLBagContext = [(LookupRequestOperation *)self _URLBagContext];
  v15 = [-[LookupRequestOperation loadedURLBagWithContext:returningError:](self loadedURLBagWithContext:_URLBagContext returningError:{v24 + 5), "valueForKey:", @"nearby-apps"}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [[SSVLoadNearbyAppsOperation alloc] initWithBaseURL:v15 location:{-[SSLookupProperties location](self->_properties, "location")}];
    [v16 setPointOfInterestIdentifier:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestIdentifier)}];
    [v16 setPointOfInterestProviderIdentifier:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestProviderIdentifier)}];
    [v16 setPointOfInterestProviderURL:{-[SSLookupProperties valueForRequestParameter:](self->_properties, "valueForRequestParameter:", SSLookupParameterPointOfInterestProviderURLString)}];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001AB090;
    v22[3] = &unk_10032B0C8;
    v22[4] = self;
    v22[5] = &v23;
    v22[6] = &v29;
    [v16 setResponseBlock:v22];
    [v16 main];
    v17 = v24[5];
  }

  v18 = v30;
  v19 = *(v30 + 24);
  if (lookup && (v30[3] & 1) == 0)
  {
    *lookup = v24[5];
    v19 = *(v18 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v19 & 1;
}

- (BOOL)_performPlatformLookup:(id *)lookup
{
  v59 = 0;
  v5 = [(LookupRequestOperation *)self _newStoreURLOperationWithBagKey:@"storeplatform-lookup-url"];
  [v5 setDelegate:self];
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v60 = 138412290;
    v61 = objc_opt_class();
    v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Performing platform lookup", &v60, 12);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v53 = v12;
      SSFileLog();
    }
  }

  v13 = [(LookupRequestOperation *)self runSubOperation:v5 returningError:&v59, v53];
  if (v13)
  {
    v14 = [(LookupRequestOperation *)self _newLookupResponseWithResultsFromOperation:v5];
    [(LookupRequestOperation *)self _setLookupResponse:v14];
    v15 = [v14 valueForProperty:SSLookupPropertyIsAuthenticated];
    if (-[LookupRequestOperation personalizationStyle](self, "personalizationStyle") == 1 && (objc_opt_respondsToSelector() & 1) != 0 && ([v15 BOOLValue] & 1) == 0)
    {
      v16 = +[SSLogConfig sharedDaemonConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog2;
      }

      oSLogObject2 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        v60 = 138412290;
        v61 = v20;
        LODWORD(v56) = 12;
        v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Authenticating to personalize response", &v60, v56);
        if (v21)
        {
          v22 = v21;
          v23 = [NSString stringWithCString:v21 encoding:4];
          free(v22);
          v54 = v23;
          SSFileLog();
        }
      }

      v58 = 0;
      v57 = 0;
      v24 = [(LookupRequestOperation *)self copyAccountID:&v58 credentialSource:0 byAuthenticatingWithContext:[(LookupRequestOperation *)self _authenticationContext] returningError:&v57];
      v25 = +[SSLogConfig sharedDaemonConfig];
      v26 = v25;
      if (v24)
      {
        if (!v25)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          LODWORD(v28) = shouldLog3 | 2;
        }

        else
        {
          LODWORD(v28) = shouldLog3;
        }

        oSLogObject3 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
        {
          v28 = v28;
        }

        else
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v30 = objc_opt_class();
          v60 = 138412546;
          v61 = v30;
          v62 = 2112;
          v63 = v58;
          LODWORD(v56) = 22;
          v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Authenticated for account: %@", &v60, v56);
          if (v31)
          {
            v32 = v31;
            v33 = [NSString stringWithCString:v31 encoding:4];
            free(v32);
            v54 = v33;
            SSFileLog();
          }
        }

        [(LookupRequestOperation *)self _setAccountID:v58, v54];
        v34 = [(LookupRequestOperation *)self _newStoreURLOperationWithBagKey:@"storeplatform-lookup-url"];
        [v34 setDelegate:self];
        v35 = +[SSLogConfig sharedDaemonConfig];
        if (!v35)
        {
          v35 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v35 shouldLog];
        if ([v35 shouldLogToDisk])
        {
          LODWORD(v37) = shouldLog4 | 2;
        }

        else
        {
          LODWORD(v37) = shouldLog4;
        }

        oSLogObject4 = [v35 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
        {
          v37 = v37;
        }

        else
        {
          v37 &= 2u;
        }

        if (v37)
        {
          v39 = objc_opt_class();
          v60 = 138412290;
          v61 = v39;
          LODWORD(v56) = 12;
          v40 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, oSLogObject4, 1, "%@: Performing personalization lookup", &v60, v56);
          if (v40)
          {
            v41 = v40;
            v42 = [NSString stringWithCString:v40 encoding:4];
            free(v41);
            v55 = v42;
            SSFileLog();
          }
        }

        if ([(LookupRequestOperation *)self runSubOperation:v34 returningError:0, v55])
        {
          v43 = [(LookupRequestOperation *)self _newLookupResponseWithResultsFromOperation:v34];
          [(LookupRequestOperation *)self _setLookupResponse:v43];
        }

        [v34 setDelegate:0];
      }

      else
      {
        if (!v25)
        {
          v26 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v26 shouldLog];
        if ([v26 shouldLogToDisk])
        {
          LODWORD(v45) = shouldLog5 | 2;
        }

        else
        {
          LODWORD(v45) = shouldLog5;
        }

        oSLogObject5 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v45;
        }

        else
        {
          v45 &= 2u;
        }

        if (v45)
        {
          v47 = objc_opt_class();
          v60 = 138412546;
          v61 = v47;
          v62 = 2112;
          v63 = v57;
          LODWORD(v56) = 22;
          v48 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Authentication failed: %@", &v60, v56);
          if (v48)
          {
            v49 = v48;
            v50 = [NSString stringWithCString:v48 encoding:4];
            free(v49);
            v54 = v50;
            SSFileLog();
          }
        }
      }
    }
  }

  [v5 setDelegate:{0, v54}];

  if (lookup)
  {
    v51 = v13;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    *lookup = v59;
  }

  return v13;
}

- (void)_setAccountID:(id)d
{
  authenticationContext = [(LookupRequestOperation *)self authenticationContext];
  if (([d isEqual:{-[SSAuthenticationContext requiredUniqueIdentifier](authenticationContext, "requiredUniqueIdentifier")}] & 1) == 0)
  {
    v6 = [(SSAuthenticationContext *)authenticationContext mutableCopy];
    if (!v6)
    {
      v6 = objc_alloc_init(SSMutableAuthenticationContext);
    }

    v7 = v6;
    [v6 setRequiredUniqueIdentifier:d];
    [(LookupRequestOperation *)self setAuthenticationContext:v7];
  }
}

- (void)_setLookupResponse:(id)response
{
  [(LookupRequestOperation *)self lock];
  response = self->_response;
  if (response != response)
  {

    self->_response = response;
  }

  [(LookupRequestOperation *)self unlock];
}

- (id)_URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:0];
  userAgent = [(LookupRequestOperation *)self userAgent];
  [(SSURLBagContext *)v3 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  return v3;
}

@end