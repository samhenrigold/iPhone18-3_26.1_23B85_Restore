@interface GetPlayInfoOperation
- (GetPlayInfoOperation)initWithPlayInfoRequestContext:(id)context;
- (NSString)clientIdentifierHeader;
- (NSString)userAgent;
- (SSPlayInfoRequestContext)playInfoContext;
- (SSPlayInfoResponse)playInfoResponse;
- (id)_copyRequestBody:(id *)body;
- (void)_failWithError:(id)error;
- (void)_setPlayInfoResponse:(id)response;
- (void)_setResponseForOutput:(id)output;
- (void)dealloc;
- (void)run;
- (void)setClientIdentifierHeader:(id)header;
- (void)setUserAgent:(id)agent;
@end

@implementation GetPlayInfoOperation

- (GetPlayInfoOperation)initWithPlayInfoRequestContext:(id)context
{
  v6.receiver = self;
  v6.super_class = GetPlayInfoOperation;
  v4 = [(GetPlayInfoOperation *)&v6 init];
  if (v4)
  {
    v4->_context = [context copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GetPlayInfoOperation;
  [(GetPlayInfoOperation *)&v3 dealloc];
}

- (NSString)clientIdentifierHeader
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(GetPlayInfoOperation *)self unlock];
  return v3;
}

- (SSPlayInfoRequestContext)playInfoContext
{
  v2 = [(SSPlayInfoRequestContext *)self->_context copy];

  return v2;
}

- (SSPlayInfoResponse)playInfoResponse
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_response;
  [(GetPlayInfoOperation *)self unlock];
  return v3;
}

- (void)setClientIdentifierHeader:(id)header
{
  [(GetPlayInfoOperation *)self lock];
  clientIdentifierHeader = self->_clientIdentifierHeader;
  if (clientIdentifierHeader != header)
  {

    self->_clientIdentifierHeader = [header copy];
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (void)setUserAgent:(id)agent
{
  [(GetPlayInfoOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (NSString)userAgent
{
  [(GetPlayInfoOperation *)self lock];
  v3 = self->_userAgent;
  [(GetPlayInfoOperation *)self unlock];

  return v3;
}

- (void)run
{
  v31 = 0;
  v3 = [(GetPlayInfoOperation *)self _copyRequestBody:&v31];
  if (!v3)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_24:
    v17 = objc_opt_class();
    v32 = 138412546;
    v33 = v17;
    v34 = 2112;
    v35 = v31;
    v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not generate request body: %@", &v32, 22);
    if (v18)
    {
      v19 = v18;
      [NSString stringWithCString:v18 encoding:4];
      free(v19);
      SSFileLog();
    }

LABEL_26:
    [(GetPlayInfoOperation *)self _failWithError:SSErrorWithUnderlyingError()];
    goto LABEL_43;
  }

  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:&v31];
  if (!v4)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog2;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v5 = v4;
  v6 = objc_alloc_init(ISStoreURLOperation);
  userAgent = [(GetPlayInfoOperation *)self userAgent];
  v8 = [v3 objectForKey:@"dsid"];
  if (v8)
  {
    v9 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:v8];
    v10 = SSHTTPHeaderUserAgent;
    [v9 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
    [v6 setAuthenticationContext:v9];
  }

  else
  {
    v10 = SSHTTPHeaderUserAgent;
  }

  v20 = objc_alloc_init(DaemonProtocolDataProvider);
  [v6 setDataProvider:v20];
  v21 = objc_alloc_init(SSMutableURLRequestProperties);
  [v21 setCachePolicy:1];
  [v21 setClientIdentifier:{-[GetPlayInfoOperation clientIdentifierHeader](self, "clientIdentifierHeader")}];
  [v21 setHTTPBody:v5];
  [v21 setHTTPMethod:@"POST"];
  [v21 setURLBagKey:@"get-play-info"];
  [v21 setValue:userAgent forHTTPHeaderField:v10];
  [v6 setRequestProperties:v21];

  v22 = +[SSLogConfig sharedDaemonConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    LODWORD(v24) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v24) = shouldLog3;
  }

  oSLogObject2 = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v24 = v24;
  }

  else
  {
    v24 &= 2u;
  }

  if (v24)
  {
    v26 = objc_opt_class();
    v32 = 138412290;
    v33 = v26;
    v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Fetching play info", &v32, 12);
    if (v27)
    {
      v28 = v27;
      v29 = [NSString stringWithCString:v27 encoding:4];
      free(v28);
      v30 = v29;
      SSFileLog();
    }
  }

  if ([(GetPlayInfoOperation *)self runSubOperation:v6 returningError:&v31, v30])
  {
    [(GetPlayInfoOperation *)self _setResponseForOutput:[(DaemonProtocolDataProvider *)v20 output]];
  }

  else
  {
    [(GetPlayInfoOperation *)self _failWithError:v31];
  }

LABEL_43:
}

- (id)_copyRequestBody:(id *)body
{
  v38 = 0;
  sinfs = [(SSPlayInfoRequestContext *)self->_context sinfs];
  if ([sinfs count])
  {
    v6 = [[SinfsArray alloc] initWithSINFs:sinfs];
  }

  else
  {
    v6 = 0;
  }

  accountIdentifier = [(SSPlayInfoRequestContext *)self->_context accountIdentifier];
  if (accountIdentifier)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    accountIdentifier = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:&v38];
  }

  if (accountIdentifier)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:accountIdentifier forKey:@"dsid"];
    contentIdentifier = [(SSPlayInfoRequestContext *)self->_context contentIdentifier];
    if (contentIdentifier)
    {
      [v9 setObject:contentIdentifier forKey:@"content-id"];
    }

    else
    {
      v18 = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyFairPlayKeyIdentifier" error:&v38];
      if (v18)
      {
        v19 = v18;
        v20 = [[NSArray alloc] initWithObjects:{v18, 0}];
        v21 = [(SinfsArray *)v6 copyValueForProperty:@"SinfPropertyRentalInformation" error:0];
        if (v21)
        {
          v22 = @"rental-ids";
        }

        else
        {
          v22 = @"key-ids";
        }

        [v9 setObject:v20 forKey:v22];
      }

      else
      {
        v29 = +[SSLogConfig sharedDaemonConfig];
        if (!v29)
        {
          v29 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v29 shouldLog];
        if ([v29 shouldLogToDisk])
        {
          LODWORD(v31) = shouldLog | 2;
        }

        else
        {
          LODWORD(v31) = shouldLog;
        }

        oSLogObject = [v29 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v31;
        }

        else
        {
          v31 &= 2u;
        }

        if (v31)
        {
          v33 = objc_opt_class();
          v39 = 138412546;
          v40 = v33;
          v41 = 2112;
          v42 = v38;
          v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not get key identifier: %@", &v39, 22);
          if (v34)
          {
            v35 = v34;
            v36 = [NSString stringWithCString:v34 encoding:4];
            free(v35);
            v37 = v36;
            SSFileLog();
          }
        }
      }
    }

    playbackType = [(SSPlayInfoRequestContext *)self->_context playbackType];
    if (playbackType)
    {
      [v9 setObject:playbackType forKey:@"subPlayType"];
    }

    guid = [+[ISDevice sharedInstance](ISDevice guid];
    if (guid)
    {
      [v9 setObject:guid forKey:@"guid"];
    }

    v25 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
    if (v25)
    {
      [v9 setObject:v25 forKey:@"hw.model"];
    }

    playerGUID = [(SSPlayInfoRequestContext *)self->_context playerGUID];
    if (playerGUID)
    {
      [v9 setObject:playerGUID forKey:@"player-guid"];
    }

    sICData = [(SSPlayInfoRequestContext *)self->_context SICData];
    if (sICData)
    {
      [v9 setObject:sICData forKey:@"sic"];
    }
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog2;
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v39 = 138412546;
      v40 = v15;
      v41 = 2112;
      v42 = v38;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not get DSID: %@", &v39, 22);
      if (v16)
      {
        v17 = v16;
        [NSString stringWithCString:v16 encoding:4];
        free(v17);
        SSFileLog();
      }
    }

    v9 = 0;
  }

  if (v38)
  {

    v9 = 0;
  }

  if (body)
  {
    *body = v38;
  }

  return v9;
}

- (void)_failWithError:(id)error
{
  errorCopy = error;
  if (!error)
  {
    errorCopy = SSError();
  }

  v5 = [[SSPlayInfoResponse alloc] initWithPlayInfoData:0 error:errorCopy];
  [(GetPlayInfoOperation *)self _setPlayInfoResponse:v5];
  [(GetPlayInfoOperation *)self setError:errorCopy];
}

- (void)_setPlayInfoResponse:(id)response
{
  [(GetPlayInfoOperation *)self lock];
  response = self->_response;
  if (response != response)
  {

    self->_response = response;
  }

  [(GetPlayInfoOperation *)self unlock];
}

- (void)_setResponseForOutput:(id)output
{
  v5 = [output objectForKey:@"status"];
  if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0) && [v6 intValue])
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v17 = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v6;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Received failure status code: %@", &v17, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v15 = v13;
        SSFileLog();
      }
    }

    [v6 intValue];
    [(GetPlayInfoOperation *)self _failWithError:SSError()];
  }

  else
  {
    v14 = [output objectForKey:@"play-info"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
    }

    v16 = [[SSPlayInfoResponse alloc] initWithPlayInfoData:v14 error:0];
    [(GetPlayInfoOperation *)self _setPlayInfoResponse:?];
    [(GetPlayInfoOperation *)self setSuccess:1];
  }
}

@end