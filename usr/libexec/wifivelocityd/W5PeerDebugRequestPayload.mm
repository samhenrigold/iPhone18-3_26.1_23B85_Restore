@interface W5PeerDebugRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerDebugRequestPayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerDebugRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerDebugRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v21.receiver = self;
  v21.super_class = W5PeerDebugRequestPayload;
  v5 = [(W5PeerDebugRequestPayload *)&v21 init];
  if (!v5 || (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) == 0) || (objc_msgSend(requestCopy, "objectForKey:", @"type"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v13 = sub_100098A04();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v19 = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v13, 0, "[wifivelocity] init error!", &v22, v19);
    }

    v8 = 0;
    v9 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  v5->_requestType = [v7 integerValue];
  v9 = [requestCopy objectForKey:@"config"];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    v20 = 0;
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v20];
    v13 = v20;
    configuration = v5->_configuration;
    v5->_configuration = v12;

    if (v13)
    {
      v15 = sub_100098A04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = requestCopy;
        LODWORD(v18) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] failed to decode configuration from raw payload='%{public}@'", &v22, v18);
      }
    }

LABEL_9:
  }

  v16 = v5;

  return v16;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [(W5PeerDebugRequestPayload *)self version];

  if (version)
  {
    version2 = [(W5PeerDebugRequestPayload *)self version];
    [v3 setObject:version2 forKey:@"version"];

    if ([(W5PeerDebugRequestPayload *)self requestType])
    {
      v6 = [NSNumber numberWithUnsignedInteger:[(W5PeerDebugRequestPayload *)self requestType]];
      [v3 setObject:v6 forKey:@"type"];

      if ([(W5PeerDebugRequestPayload *)self requestType]== 2)
      {
        configuration = [(W5PeerDebugRequestPayload *)self configuration];

        if (configuration)
        {
          configuration2 = [(W5PeerDebugRequestPayload *)self configuration];
          v16 = 0;
          v9 = [NSKeyedArchiver archivedDataWithRootObject:configuration2 requiringSecureCoding:1 error:&v16];
          v10 = v16;

          if (v10 || !v9)
          {
            v11 = sub_100098A04();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v17 = 138543362;
              v18 = v10;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v11, 0, "[wifivelocity] failed to encode configuration with error='%{public}@'", &v17, 12);
            }
          }

          else
          {
            [v3 setObject:v9 forKey:@"config"];
          }
        }
      }
    }
  }

  if (![v3 count])
  {
    v13 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDebugRequestPayload encode]"];
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  return v3;
}

@end