@interface MSDHubSessionTaskInfo
- (BOOL)addAuthHeader;
- (BOOL)isValid;
- (id)getRequestForTimeout:(double)timeout;
@end

@implementation MSDHubSessionTaskInfo

- (BOOL)isValid
{
  v7.receiver = self;
  v7.super_class = MSDHubSessionTaskInfo;
  if (![(MSDSessionTaskInfo *)&v7 isValid])
  {
    return 0;
  }

  hmacKey = [(MSDHubSessionTaskInfo *)self hmacKey];
  if (hmacKey)
  {
    deviceUDID = [(MSDHubSessionTaskInfo *)self deviceUDID];
    v5 = deviceUDID != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)addAuthHeader
{
  hmacKey = [(MSDHubSessionTaskInfo *)self hmacKey];

  if (!hmacKey)
  {
    v17 = sub_100063A54(v4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1160();
    }

    goto LABEL_10;
  }

  v5 = [AluminiumAuthenticator alloc];
  hmacKey2 = [(MSDHubSessionTaskInfo *)self hmacKey];
  v7 = [(AluminiumAuthenticator *)v5 initWithASCIIEncodedKey:hmacKey2];

  if (!v7)
  {
    v17 = sub_100063A54(v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1124();
    }

LABEL_10:
    v7 = 0;
    v13 = 0;
    v9 = 0;
LABEL_13:

    v15 = 0;
    goto LABEL_5;
  }

  v9 = [NSSet setWithObjects:@"X-Apple-OTA-UDID", @"X-Apple-HMAC-Sent-Timestamp", @"Host", 0];
  request = [(MSDSessionTaskInfo *)self request];
  postData = [(MSDSessionTaskInfo *)self postData];
  v18 = 0;
  v12 = [(AluminiumAuthenticator *)v7 addAuthenticationHeadersToRequest:request includedHeaders:v9 body:postData algorithm:0 error:&v18];
  v13 = v18;

  if ((v12 & 1) == 0)
  {
    v17 = sub_100063A54(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1094(v13);
    }

    goto LABEL_13;
  }

  v15 = 1;
LABEL_5:

  return v15;
}

- (id)getRequestForTimeout:(double)timeout
{
  deviceUDID = [(MSDHubSessionTaskInfo *)self deviceUDID];

  if (deviceUDID)
  {
    server = [(MSDHubSessionTaskInfo *)self server];
    port = [(MSDHubSessionTaskInfo *)self port];
    endpoint = [(MSDHubSessionTaskInfo *)self endpoint];
    v10 = [NSString stringWithFormat:@"https://%@:%@%@", server, port, endpoint];
    v11 = [NSURL URLWithString:v10];

    v12 = [[NSMutableURLRequest alloc] initWithURL:v11 cachePolicy:1 timeoutInterval:timeout];
    [(MSDSessionTaskInfo *)self setRequest:v12];

    postData = [(MSDSessionTaskInfo *)self postData];

    request = [(MSDSessionTaskInfo *)self request];
    request2 = request;
    if (postData)
    {
      [request setHTTPMethod:@"POST"];

      request2 = [(MSDSessionTaskInfo *)self request];
      [request2 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }

    else
    {
      [request setHTTPMethod:@"GET"];
    }

    request3 = [(MSDSessionTaskInfo *)self request];
    [request3 setValue:@"15" forHTTPHeaderField:@"X-Protocol-Version"];

    deviceUDID2 = [(MSDHubSessionTaskInfo *)self deviceUDID];

    if (deviceUDID2)
    {
      request4 = [(MSDSessionTaskInfo *)self request];
      deviceUDID3 = [(MSDHubSessionTaskInfo *)self deviceUDID];
      [request4 setValue:deviceUDID3 forHTTPHeaderField:@"X-Apple-OTA-UDID"];

      if ([(MSDHubSessionTaskInfo *)self addAuthHeader])
      {
        request5 = [(MSDSessionTaskInfo *)self request];
        goto LABEL_8;
      }
    }

    else
    {
      v24 = sub_100063A54(v18);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Must specify device udid in request info", v25, 2u);
      }
    }
  }

  else
  {
    v23 = sub_100063A54(v6);
    if (sub_1000083A0(v23))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, 0, OS_LOG_TYPE_ERROR, "Must specify device udid in request info", buf, 2u);
    }

    v11 = 0;
  }

  request5 = 0;
LABEL_8:

  return request5;
}

@end