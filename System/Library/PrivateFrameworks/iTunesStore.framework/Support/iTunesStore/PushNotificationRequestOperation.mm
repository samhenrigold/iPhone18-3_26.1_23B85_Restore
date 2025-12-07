@interface PushNotificationRequestOperation
- (BOOL)_loadResponseWithAccountIdentifier:(id)identifier URL:(id)l error:(id *)error;
- (NSString)userAgent;
- (PushNotificationRequestOperation)initWithPushNotificationParameters:(id)parameters;
- (SSURLConnectionResponse)URLResponse;
- (void)dealloc;
- (void)run;
- (void)setUserAgent:(id)agent;
@end

@implementation PushNotificationRequestOperation

- (PushNotificationRequestOperation)initWithPushNotificationParameters:(id)parameters
{
  v6.receiver = self;
  v6.super_class = PushNotificationRequestOperation;
  v4 = [(PushNotificationRequestOperation *)&v6 init];
  if (v4)
  {
    v4->_parameters = [parameters copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PushNotificationRequestOperation;
  [(PushNotificationRequestOperation *)&v3 dealloc];
}

- (void)setUserAgent:(id)agent
{
  [(PushNotificationRequestOperation *)self lock];
  userAgent = self->_userAgent;
  if (userAgent != agent)
  {

    self->_userAgent = [agent copy];
  }

  [(PushNotificationRequestOperation *)self unlock];
}

- (SSURLConnectionResponse)URLResponse
{
  [(PushNotificationRequestOperation *)self lock];
  v3 = self->_response;
  [(PushNotificationRequestOperation *)self unlock];

  return v3;
}

- (NSString)userAgent
{
  [(PushNotificationRequestOperation *)self lock];
  v3 = self->_userAgent;
  [(PushNotificationRequestOperation *)self unlock];

  return v3;
}

- (void)run
{
  v51 = 0;
  accountIdentifier = [(SSVPushNotificationParameters *)self->_parameters accountIdentifier];
  if (!accountIdentifier)
  {
    accountIdentifier = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    if (!accountIdentifier)
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
        v52 = 138412290;
        v53 = objc_opt_class();
        v33 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Can't perform request with no accountID", &v52, 12);
        if (v33)
        {
          v34 = v33;
          v35 = [NSString stringWithCString:v33 encoding:4];
          free(v34);
          v48 = v35;
          SSFileLog();
        }
      }

      goto LABEL_49;
    }
  }

  v4 = accountIdentifier;
  v5 = [SSURLBagContext contextWithBagType:0];
  [(SSURLBagContext *)v5 setUserIdentifier:v4];
  userAgent = [(PushNotificationRequestOperation *)self userAgent];
  [(SSURLBagContext *)v5 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  v7 = [(PushNotificationRequestOperation *)self loadedURLBagWithContext:v5 returningError:0];
  v8 = [v7 valueForKey:@"push-notification-types"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  requestType = [(SSVPushNotificationParameters *)self->_parameters requestType];
  if (!requestType)
  {
    v10 = [v8 objectForKey:@"add-push-notification-type-url"];
    LODWORD(v11) = 1;
    goto LABEL_21;
  }

  if (requestType == 1)
  {
    v10 = [v8 objectForKey:@"remove-push-notification-type-url"];
LABEL_20:
    LODWORD(v11) = 0;
    goto LABEL_21;
  }

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v12 shouldLog];
  LODWORD(v14) = [v12 shouldLogToDisk] ? shouldLog2 | 2 : shouldLog2;
  oSLogObject2 = [v12 OSLogObject];
  v14 = os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT) ? v14 : v14 & 2u;
  if (!v14)
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v16 = objc_opt_class();
  requestType2 = [(SSVPushNotificationParameters *)self->_parameters requestType];
  v52 = 138412546;
  v53 = v16;
  v54 = 2048;
  v55 = requestType2;
  v11 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Unknown request type: %ld", &v52, 22);
  if (v11)
  {
    v18 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    v48 = v18;
    SSFileLog();
    goto LABEL_19;
  }

  v10 = 0;
LABEL_21:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog3;
    }

    oSLogObject3 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      v52 = 138412290;
      v53 = v25;
      LODWORD(v49) = 12;
      v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Can't perform request with no URL", &v52, v49);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v48 = v28;
        SSFileLog();
      }
    }

LABEL_49:
    v36 = SSError();
    v37 = 0;
    v51 = v36;
    goto LABEL_65;
  }

  if (v11)
  {
    environmentName = [(SSVPushNotificationParameters *)self->_parameters environmentName];
    if (!environmentName)
    {
      v20 = [v7 valueForKey:@"push-notifications"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        environmentName = [v20 objectForKey:@"environment"];
      }

      else
      {
        environmentName = 0;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = +[SSLogConfig sharedDaemonConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        LODWORD(v40) = shouldLog4 | 2;
      }

      else
      {
        LODWORD(v40) = shouldLog4;
      }

      oSLogObject4 = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
      {
        v40 = v40;
      }

      else
      {
        v40 &= 2u;
      }

      if (v40)
      {
        v42 = objc_opt_class();
        v52 = 138412802;
        v53 = v42;
        v54 = 2112;
        v55 = environmentName;
        v56 = 2112;
        v57 = v10;
        LODWORD(v49) = 32;
        v43 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &_mh_execute_header, oSLogObject4, 1, "%@: Waiting for token register for environment: %@, URL: %@", &v52, v49);
        if (v43)
        {
          v44 = v43;
          v45 = [NSString stringWithCString:v43 encoding:4];
          free(v44);
          v48 = v45;
          SSFileLog();
        }
      }

      v46 = dispatch_semaphore_create(0);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001023D8;
      v50[3] = &unk_100327378;
      v50[4] = v46;
      [+[PushNotificationController sharedInstance](PushNotificationController registerTokenForEnvironmentName:"registerTokenForEnvironmentName:accountIdentifier:completionBlock:" accountIdentifier:environmentName completionBlock:v4, v50];
      v47 = dispatch_time(0, 60000000000);
      dispatch_semaphore_wait(v46, v47);
      dispatch_release(v46);
    }
  }

  v37 = [(PushNotificationRequestOperation *)self _loadResponseWithAccountIdentifier:v4 URL:[NSURL error:"URLWithString:" URLWithString:v10, v48], &v51];
  v36 = v51;
LABEL_65:
  [(PushNotificationRequestOperation *)self setError:v36, v48];
  [(PushNotificationRequestOperation *)self setSuccess:v37];
}

- (BOOL)_loadResponseWithAccountIdentifier:(id)identifier URL:(id)l error:(id *)error
{
  v28 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  [v9 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  v10 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:identifier];
  [v10 setPromptStyle:1000];
  userAgent = [(PushNotificationRequestOperation *)self userAgent];
  v12 = SSHTTPHeaderUserAgent;
  [v10 setValue:userAgent forHTTPHeaderField:SSHTTPHeaderUserAgent];
  [v9 setAuthenticationContext:v10];

  v13 = objc_alloc_init(SSMutableURLRequestProperties);
  [v13 setHTTPMethod:@"POST"];
  [v13 setURL:l];
  [v13 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v13 setValue:-[PushNotificationRequestOperation userAgent](self forHTTPHeaderField:{"userAgent"), v12}];
  _copyParametersDictionary = [(SSVPushNotificationParameters *)self->_parameters _copyParametersDictionary];
  guid = [+[ISDevice sharedInstance](ISDevice guid];
  if (guid)
  {
    [_copyParametersDictionary setObject:guid forKey:@"guid"];
  }

  [v13 setRequestParameters:_copyParametersDictionary];

  [v9 setRequestProperties:v13];
  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    LODWORD(v18) = shouldLog | 2;
  }

  else
  {
    LODWORD(v18) = shouldLog;
  }

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v18 = v18;
  }

  else
  {
    v18 &= 2u;
  }

  if (v18)
  {
    v29 = 138412546;
    v30 = objc_opt_class();
    v31 = 2112;
    lCopy = l;
    v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Performing push notification request: %@", &v29, 22);
    if (v20)
    {
      v21 = v20;
      v22 = [NSString stringWithCString:v20 encoding:4];
      free(v21);
      v27 = v22;
      SSFileLog();
    }
  }

  v23 = [(PushNotificationRequestOperation *)self runSubOperation:v9 returningError:&v28, v27];
  if (v23)
  {
    v24 = [objc_msgSend(v9 "dataProvider")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [NSPropertyListSerialization dataWithPropertyList:v24 format:100 options:0 error:0];
    }

    else
    {
      v25 = 0;
    }

    [(PushNotificationRequestOperation *)self lock];

    self->_response = [[SSURLConnectionResponse alloc] initWithURLResponse:objc_msgSend(v9 bodyData:{"response"), v25}];
    [(PushNotificationRequestOperation *)self unlock];
  }

  else
  {

    if (error)
    {
      *error = v28;
    }
  }

  return v23;
}

@end