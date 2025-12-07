@interface PostPushNotificationTokenOperation
- (BOOL)_postTokenToURL:(id)l error:(id *)error;
- (NSData)tokenData;
- (NSString)environmentName;
- (PostPushNotificationTokenOperation)initWithEnvironmentName:(id)name tokenData:(id)data;
- (SSAuthenticationContext)authenticationContext;
- (void)dealloc;
- (void)run;
- (void)setAuthenticationContext:(id)context;
@end

@implementation PostPushNotificationTokenOperation

- (PostPushNotificationTokenOperation)initWithEnvironmentName:(id)name tokenData:(id)data
{
  v8.receiver = self;
  v8.super_class = PostPushNotificationTokenOperation;
  v6 = [(PostPushNotificationTokenOperation *)&v8 init];
  if (v6)
  {
    v6->_environmentName = [name copy];
    v6->_tokenData = [data copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PostPushNotificationTokenOperation;
  [(PostPushNotificationTokenOperation *)&v3 dealloc];
}

- (SSAuthenticationContext)authenticationContext
{
  [(PostPushNotificationTokenOperation *)self lock];
  v3 = self->_authenticationContext;
  [(PostPushNotificationTokenOperation *)self unlock];
  return v3;
}

- (NSString)environmentName
{
  v2 = self->_environmentName;

  return v2;
}

- (void)setAuthenticationContext:(id)context
{
  [(PostPushNotificationTokenOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext != context)
  {

    self->_authenticationContext = [context copy];
  }

  [(PostPushNotificationTokenOperation *)self unlock];
}

- (NSData)tokenData
{
  v2 = self->_tokenData;

  return v2;
}

- (void)run
{
  v29 = 0;
  if (self->_tokenData)
  {
    v3 = [(PostPushNotificationTokenOperation *)self loadedURLBagWithContext:[SSURLBagContext returningError:"contextWithBagType:" contextWithBagType:?], &v29];
    if (v3)
    {
      v4 = [v3 valueForKey:@"push-notifications"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v5 = [v4 objectForKey:@"environment"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ![(NSString *)self->_environmentName isEqualToString:v5])
      {
        v20 = +[SSLogConfig sharedDaemonConfig];
        if (!v20)
        {
          v20 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v20 shouldLog];
        if ([v20 shouldLogToDisk])
        {
          LODWORD(v22) = shouldLog | 2;
        }

        else
        {
          LODWORD(v22) = shouldLog;
        }

        oSLogObject = [v20 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v22 = v22;
        }

        else
        {
          v22 &= 2u;
        }

        if (v22)
        {
          v24 = objc_opt_class();
          v30 = 138412290;
          v31 = v24;
          v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Environment name mismatch, skipping token POST", &v30, 12);
          if (v25)
          {
            v26 = v25;
            v27 = [NSString stringWithCString:v25 encoding:4];
            free(v26);
            v28 = v27;
            SSFileLog();
          }
        }

        v7 = 0;
      }

      else
      {
        v6 = [v4 objectForKey:@"register-success"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [[NSURL alloc] initWithString:v6]) == 0)
        {
LABEL_9:
          v8 = +[SSLogConfig sharedDaemonConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            LODWORD(v10) = shouldLog2 | 2;
          }

          else
          {
            LODWORD(v10) = shouldLog2;
          }

          oSLogObject2 = [v8 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v10;
          }

          else
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v12 = objc_opt_class();
            v30 = 138412546;
            v31 = v12;
            v32 = 2112;
            v33 = @"register-success";
            v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: No URL for %@", &v30, 22);
            if (!v13)
            {
              v7 = 0;
              goto LABEL_47;
            }

            v14 = [NSString stringWithCString:v13 encoding:4];
            free(v13);
            v28 = v14;
            SSFileLog();
          }

          v7 = 0;
          v13 = 0;
LABEL_47:

          goto LABEL_48;
        }
      }

      v13 = [(PostPushNotificationTokenOperation *)self _postTokenToURL:v7 error:&v29, v28];
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    LODWORD(v17) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v17) = shouldLog3;
  }

  oSLogObject3 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v17 = v17;
  }

  else
  {
    v17 &= 2u;
  }

  if (!v17)
  {
LABEL_32:
    v13 = 0;
    goto LABEL_48;
  }

  v30 = 138412290;
  v31 = objc_opt_class();
  v13 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: No token to push", &v30, 12);
  if (v13)
  {
    v19 = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    v28 = v19;
    SSFileLog();
    goto LABEL_32;
  }

LABEL_48:
  [(PostPushNotificationTokenOperation *)self setError:v29, v28];
  [(PostPushNotificationTokenOperation *)self setSuccess:v13];
}

- (BOOL)_postTokenToURL:(id)l error:(id *)error
{
  v30 = 0;
  v7 = objc_alloc_init(ISStoreURLOperation);
  [v7 setAuthenticationContext:{-[PostPushNotificationTokenOperation authenticationContext](self, "authenticationContext")}];
  [v7 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v7 setDelegate:self];
  [v7 setUseUserSpecificURLBag:1];
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = shouldLog | 2;
  }

  else
  {
    LODWORD(v10) = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    environmentName = self->_environmentName;
    tokenData = self->_tokenData;
    v31 = 138543874;
    v32 = v12;
    v33 = 2114;
    v34 = environmentName;
    v35 = 2112;
    v36 = tokenData;
    v15 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Posting APS token for %{public}@. Token: %@", &v31, 32);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v29 = v17;
      SSFileLog();
    }
  }

  v18 = [[SSMutableURLRequestProperties alloc] initWithURL:l];
  [v18 setHTTPMethod:@"POST"];
  [v18 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = +[ISDevice sharedInstance];
  v21 = self->_environmentName;
  if (v21)
  {
    [v19 setObject:v21 forKey:@"environment"];
  }

  v22 = self->_tokenData;
  if (v22)
  {
    [v19 setObject:v22 forKey:@"token"];
  }

  deviceName = [(ISDevice *)v20 deviceName];
  if (deviceName)
  {
    v24 = [deviceName dataUsingEncoding:4 allowLossyConversion:1];
    if (v24)
    {
      [v19 setObject:v24 forKey:@"device-name-data"];
    }
  }

  serialNumber = [(ISDevice *)v20 serialNumber];
  if (serialNumber)
  {
    [v19 setObject:serialNumber forKey:@"serial-number"];
  }

  guid = [(ISDevice *)v20 guid];
  if (guid)
  {
    [v19 setObject:guid forKey:@"guid"];
  }

  [v18 setRequestParameters:v19];

  [v7 setRequestProperties:v18];
  v27 = [(PostPushNotificationTokenOperation *)self runSubOperation:v7 returningError:&v30];
  [v7 setDelegate:0];

  if (error)
  {
    *error = v30;
  }

  return v27;
}

@end