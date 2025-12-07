@interface CloudServiceAPITokenOperation
- (NSString)clientToken;
- (NSString)requestingBundleID;
- (NSString)requestingBundleVersion;
- (SSAuthenticationContext)authenticationContext;
- (id)responseBlock;
- (void)run;
- (void)setAuthenticationContext:(id)context;
- (void)setClientToken:(id)token;
- (void)setRequestingBundleID:(id)d;
- (void)setRequestingBundleVersion:(id)version;
- (void)setResponseBlock:(id)block;
@end

@implementation CloudServiceAPITokenOperation

- (NSString)clientToken
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_clientToken copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setClientToken:(id)token
{
  tokenCopy = token;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [tokenCopy copy];

  clientToken = self->_clientToken;
  self->_clientToken = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (NSString)requestingBundleID
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_requestingBundleID copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setRequestingBundleID:(id)d
{
  dCopy = d;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [dCopy copy];

  requestingBundleID = self->_requestingBundleID;
  self->_requestingBundleID = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (NSString)requestingBundleVersion
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(NSString *)self->_requestingBundleVersion copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setRequestingBundleVersion:(id)version
{
  versionCopy = version;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [versionCopy copy];

  requestingBundleVersion = self->_requestingBundleVersion;
  self->_requestingBundleVersion = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (SSAuthenticationContext)authenticationContext
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [(SSAuthenticationContext *)self->_authenticationContext copy];
  [(CloudServiceAPITokenOperation *)self unlock];

  return v3;
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(CloudServiceAPITokenOperation *)self lock];
  v5 = [contextCopy copy];

  authenticationContext = self->_authenticationContext;
  self->_authenticationContext = v5;

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (void)setResponseBlock:(id)block
{
  blockCopy = block;
  [(CloudServiceAPITokenOperation *)self lock];
  if (self->_responseBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    responseBlock = self->_responseBlock;
    self->_responseBlock = v4;
  }

  [(CloudServiceAPITokenOperation *)self unlock];
}

- (id)responseBlock
{
  [(CloudServiceAPITokenOperation *)self lock];
  v3 = [self->_responseBlock copy];
  [(CloudServiceAPITokenOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)run
{
  v74 = 0;
  v3 = [(CloudServiceAPITokenOperation *)self copyAccountID:&v74 credentialSource:0 byAuthenticatingWithContext:self->_authenticationContext returningError:0];
  v4 = v74;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = objc_alloc_init(ISStoreURLOperation);
    v9 = +[DaemonProtocolDataProvider provider];
    [v8 setDataProvider:v9];

    authenticationContext = [(CloudServiceAPITokenOperation *)self authenticationContext];
    [v8 setAuthenticationContext:?];
    v10 = objc_alloc_init(SSMutableURLRequestProperties);
    v85[0] = SSHTTPHeaderXAppleRequestingBundleID;
    v11 = [(NSString *)self->_requestingBundleID copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_10033CC30;
    }

    v86[0] = v13;
    v85[1] = SSHTTPHeaderXAppleRequestingBundleVersion;
    v14 = [(NSString *)self->_requestingBundleVersion copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_10033CC30;
    }

    v86[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
    [v10 setHTTPHeaders:v17];

    v18 = objc_alloc_init(NSMutableDictionary);
    v19 = [(NSString *)self->_clientToken copy];
    if ([v19 length])
    {
      [v18 setObject:v19 forKey:@"assertion"];
    }

    v69 = v19;
    v20 = +[SSDevice currentDevice];
    uniqueDeviceIdentifier = [v20 uniqueDeviceIdentifier];

    v22 = [uniqueDeviceIdentifier length];
    if (v22)
    {
      v22 = [v18 setObject:uniqueDeviceIdentifier forKey:@"guid"];
    }

    if (!self->_requestingBundleID || ([off_1003834E0(v22) standardDefaults], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKey:", self->_requestingBundleID), v25 = objc_claimAutoreleasedReturnValue(), v24, v23, (v26 = v25) == 0))
    {
      v26 = +[NSDate date];
    }

    v67 = v26;
    [v26 timeIntervalSince1970];
    v28 = [NSString stringWithFormat:@"%lld", llround(v27 * 1000.0)];
    [v18 setObject:v28 forKey:@"tcc-acceptance-date"];

    v29 = [NSJSONSerialization dataWithJSONObject:v18 options:1 error:0];
    [v10 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v66 = v29;
    [v10 setHTTPBody:v29];
    [v10 setHTTPMethod:@"POST"];
    [v10 setURLBagKey:@"createMusicToken"];
    [v8 setRequestProperties:v10];
    v73 = 0;
    LODWORD(v29) = [(CloudServiceAPITokenOperation *)self runSubOperation:v8 returningError:&v73];
    v30 = v73;
    v70 = v18;
    v68 = uniqueDeviceIdentifier;
    v72 = v30;
    if (!v29)
    {
      if (v30)
      {
        userInfo = [v30 userInfo];
        v43 = [userInfo objectForKeyedSubscript:SSErrorHTTPStatusCodeKey];

        if (objc_opt_respondsToSelector())
        {
          integerValue = [v43 integerValue];
          v45 = integerValue == 403;
          if (integerValue == 403)
          {
            v46 = 107;
          }

          else
          {
            v46 = 109;
          }
        }

        else
        {
          v45 = 0;
          v46 = 109;
        }

        v81 = NSUnderlyingErrorKey;
        v82 = v72;
        v49 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v46 = 109;
      }

      v50 = [NSError errorWithDomain:SSErrorDomain code:v46 userInfo:v49];
      v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:0 error:v50];

      if (!v45)
      {
        goto LABEL_59;
      }

      goto LABEL_45;
    }

    response = [v8 response];
    dataProvider = [v8 dataProvider];
    output = [dataProvider output];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      output = 0;
    }

    statusCode = [response statusCode];
    v65 = v5;
    if (statusCode == 403)
    {
      v35 = [output objectForKey:@"error_description"];
      v36 = v35;
      v37 = &stru_10033CC30;
      if (v35)
      {
        v37 = v35;
      }

      v38 = v37;

      v39 = SSErrorDomain;
      v83 = NSLocalizedDescriptionKey;
      v84 = v38;
      v40 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v41 = [NSError errorWithDomain:v39 code:107 userInfo:v40];
    }

    else
    {
      if ([response statusCode] == 200)
      {
        v47 = [output objectForKey:@"music_token"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
          v41 = 0;
        }

        else
        {
          v41 = [NSError errorWithDomain:SSErrorDomain code:100 userInfo:0];
          v48 = 0;
        }

LABEL_44:
        v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:v48 error:v41];

        v5 = v65;
        if (statusCode != 403)
        {
LABEL_59:

          goto LABEL_60;
        }

LABEL_45:
        v51 = TCCAccessSetForBundleId();
        v52 = +[SSLogConfig sharedDaemonConfig];
        if (!v52)
        {
          v52 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v53) = [v52 shouldLog];
        if ([v52 shouldLogToDisk])
        {
          LODWORD(v53) = v53 | 2;
        }

        oSLogObject = [v52 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v53 = v53;
        }

        else
        {
          v53 &= 2u;
        }

        if (v53)
        {
          v55 = objc_opt_class();
          requestingBundleID = self->_requestingBundleID;
          v57 = @"succeeded";
          v75 = 138543874;
          v76 = v55;
          v77 = 2114;
          if (!v51)
          {
            v57 = @"failed";
          }

          v78 = requestingBundleID;
          v79 = 2114;
          v80 = v57;
          v58 = v55;
          v59 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%{public}@: Got 403 status code while requesting user token for bundle ID: %{public}@. Just reset TCC access with status: %{public}@.", &v75, 32);

          if (!v59)
          {
            goto LABEL_58;
          }

          oSLogObject = [NSString stringWithCString:v59 encoding:4];
          free(v59);
          v64 = oSLogObject;
          SSFileLog();
        }

LABEL_58:
        goto LABEL_59;
      }

      v41 = [NSError errorWithDomain:SSErrorDomain code:109 userInfo:0];
    }

    v48 = 0;
    goto LABEL_44;
  }

  v8 = [NSError errorWithDomain:SSErrorDomain code:114 userInfo:0];
  v7 = [[SSVCloudServiceAPITokenResponse alloc] initWithToken:0 error:v8];
LABEL_60:

  [(CloudServiceAPITokenOperation *)self lock];
  v60 = objc_retainBlock(self->_responseBlock);
  responseBlock = self->_responseBlock;
  self->_responseBlock = 0;

  [(CloudServiceAPITokenOperation *)self unlock];
  v60[2](v60, v7);
  error = [v7 error];
  [(CloudServiceAPITokenOperation *)self setError:error];

  error2 = [v7 error];
  [(CloudServiceAPITokenOperation *)self setSuccess:error2 != 0, v64];
}

@end