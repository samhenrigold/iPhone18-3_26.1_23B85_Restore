@interface W5PeerGenericRequestPayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerGenericRequestPayload)initWithRequest:(id)request;
- (id)__allowedClasses;
- (id)encode;
@end

@implementation W5PeerGenericRequestPayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (id)__allowedClasses
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (W5PeerGenericRequestPayload)initWithRequest:(id)request
{
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = W5PeerGenericRequestPayload;
  v5 = [(W5PeerGenericRequestPayload *)&v18 init];
  if (!v5)
  {
    v10 = 0;
    v6 = 0;
LABEL_10:

    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[W5PeerGenericRequestPayload initWithRequest:]";
      v21 = 2080;
      v22 = "W5PeerGenericRequestPayload.m";
      v23 = 1024;
      v24 = 42;
      LODWORD(v15) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v14, 0, "[wifivelocity] %s (%s:%u) init error!", &v19, v15, v16);
    }

    v5 = 0;
    goto LABEL_8;
  }

  v6 = [requestCopy objectForKey:@"payload"];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_8;
  }

  __allowedClasses = [(W5PeerGenericRequestPayload *)v5 __allowedClasses];
  v8 = [NSSet setWithArray:__allowedClasses];
  v17 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:&v17];
  v10 = v17;
  info = v5->_info;
  v5->_info = v9;

  if (!v5->_info)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "[W5PeerGenericRequestPayload initWithRequest:]";
      v21 = 2080;
      v22 = "W5PeerGenericRequestPayload.m";
      v23 = 1024;
      v24 = 34;
      v25 = 2114;
      v26 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) FAILED to unarchive generic request payload, return error (%{public}@)", &v19, 38);
    }

    goto LABEL_10;
  }

LABEL_8:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  info = [(W5PeerGenericRequestPayload *)self info];

  if (info)
  {
    info2 = [(W5PeerGenericRequestPayload *)self info];
    v12 = 0;
    info = [NSKeyedArchiver archivedDataWithRootObject:info2 requiringSecureCoding:1 error:&v12];
    v6 = v12;

    if (info)
    {
      [v3 setObject:info forKeyedSubscript:@"payload"];
    }

    else
    {
      v8 = sub_100098A04();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = "[W5PeerGenericRequestPayload encode]";
        v15 = 2080;
        v16 = "W5PeerGenericRequestPayload.m";
        v17 = 1024;
        v18 = 54;
        v19 = 2114;
        v20 = v6;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) FAILED to archive generic request payload, return error (%{public}@)", &v13, 38);
      }

      info = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (![v3 count])
  {
    v9 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerGenericRequestPayload encode]"];
    v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  return v3;
}

@end