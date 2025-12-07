@interface W5PeerGenericResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerGenericResponsePayload)initWithRequest:(id)request;
- (id)__allowedClasses;
- (id)encode;
@end

@implementation W5PeerGenericResponsePayload

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
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

- (W5PeerGenericResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = W5PeerGenericResponsePayload;
  v5 = [(W5PeerGenericResponsePayload *)&v18 init];
  if (!v5)
  {
    v10 = 0;
    v6 = 0;
LABEL_10:

    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[W5PeerGenericResponsePayload initWithRequest:]";
      v21 = 2080;
      v22 = "W5PeerGenericResponsePayload.m";
      v23 = 1024;
      v24 = 43;
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

  __allowedClasses = [(W5PeerGenericResponsePayload *)v5 __allowedClasses];
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
      v20 = "[W5PeerGenericResponsePayload initWithRequest:]";
      v21 = 2080;
      v22 = "W5PeerGenericResponsePayload.m";
      v23 = 1024;
      v24 = 35;
      v25 = 2114;
      v26 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v12, 0, "[wifivelocity] %s (%s:%u) FAILED to unarchive generic response payload, return error (%{public}@)", &v19, 38);
    }

    goto LABEL_10;
  }

LABEL_8:

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  info = [(W5PeerGenericResponsePayload *)self info];

  if (info)
  {
    info2 = [(W5PeerGenericResponsePayload *)self info];
    v10 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:info2 requiringSecureCoding:1 error:&v10];
    v7 = v10;

    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"payload"];
    }

    else
    {
      v6 = sub_100098A04();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = "[W5PeerGenericResponsePayload encode]";
        v13 = 2080;
        v14 = "W5PeerGenericResponsePayload.m";
        v15 = 1024;
        v16 = 55;
        v17 = 2114;
        v18 = v7;
        v9 = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v6, 0, "[wifivelocity] %s (%s:%u) FAILED to archive generic response payload, return error (%{public}@)", &v11, v9);
      }
    }
  }

  return v3;
}

@end