@interface W5PeerFileTransferResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerFileTransferResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerFileTransferResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerFileTransferResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100098A04();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315906;
    v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
    v31 = 2080;
    v32 = "W5PeerFileTransferResponsePayload.m";
    v33 = 1024;
    v34 = 30;
    v35 = 2114;
    v36 = requestCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v5, 0, "[wifivelocity] %s (%s:%u) Response Dictionary: %{public}@", &v29, 38);
  }

  v28.receiver = self;
  v28.super_class = W5PeerFileTransferResponsePayload;
  v6 = [(W5PeerFileTransferResponsePayload *)&v28 init];
  if (v6 && (v7 = [(NSError *)requestCopy objectForKey:@"version"], (v6->_version = v7) != 0) && ([(NSError *)requestCopy objectForKey:@"status"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v6->_status = [v8 integerValue];
    v10 = [(NSError *)requestCopy objectForKey:@"publicKey"];
    publicKey = v6->_publicKey;
    v6->_publicKey = v10;

    v12 = [(NSError *)requestCopy objectForKey:@"files"];
    if (v12)
    {
      v13 = objc_opt_class();
      v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
      v27 = 0;
      v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v12 error:&v27];
      v16 = v27;
      files = v6->_files;
      v6->_files = v15;
    }

    else
    {
      v16 = 0;
    }

    v18 = [(NSError *)requestCopy objectForKey:@"error"];
    error = v6->_error;
    v6->_error = v18;

    v20 = v6->_error;
    if (!v20)
    {
      v21 = 0;
      goto LABEL_14;
    }

    v21 = v20;
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
      v31 = 2080;
      v32 = "W5PeerFileTransferResponsePayload.m";
      v33 = 1024;
      v34 = 56;
      v35 = 2114;
      v36 = v21;
      LODWORD(v25) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) initialization failed due to error=(%{public}@)", &v29, v25);
    }
  }

  else
  {

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315650;
      v30 = "[W5PeerFileTransferResponsePayload initWithRequest:]";
      v31 = 2080;
      v32 = "W5PeerFileTransferResponsePayload.m";
      v33 = 1024;
      v34 = 64;
      LODWORD(v25) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) init error with request dictionary", &v29, v25, v26);
    }

    v12 = 0;
    v16 = 0;
    v9 = 0;
    v21 = 0;
    v6 = 0;
  }

LABEL_14:
  v23 = v6;

  return v23;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    version = [(W5PeerFileTransferResponsePayload *)self version];
    status = [(W5PeerFileTransferResponsePayload *)self status];
    publicKey = [(W5PeerFileTransferResponsePayload *)self publicKey];
    error = [(W5PeerFileTransferResponsePayload *)self error];
    v25 = 136316674;
    v26 = "[W5PeerFileTransferResponsePayload encode]";
    v27 = 2080;
    v28 = "W5PeerFileTransferResponsePayload.m";
    v29 = 1024;
    v30 = 76;
    v31 = 2114;
    v32 = version;
    v33 = 2048;
    v34 = status;
    v35 = 2114;
    v36 = publicKey;
    v37 = 2114;
    v38 = error;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v4, 0, "[wifivelocity] %s (%s:%u) version='%{public}@', status=%ld, publicKey='%{public}@', error='%{public}@'", &v25, 68);
  }

  version2 = [(W5PeerFileTransferResponsePayload *)self version];

  if (version2)
  {
    version3 = [(W5PeerFileTransferResponsePayload *)self version];
    [v3 setObject:version3 forKey:@"version"];

    if ([(W5PeerFileTransferResponsePayload *)self status])
    {
      v11 = [NSNumber numberWithInteger:[(W5PeerFileTransferResponsePayload *)self status]];
      [v3 setObject:v11 forKey:@"status"];

      publicKey2 = [(W5PeerFileTransferResponsePayload *)self publicKey];

      if (publicKey2)
      {
        publicKey3 = [(W5PeerFileTransferResponsePayload *)self publicKey];
        [v3 setObject:publicKey3 forKey:@"publicKey"];
      }

      version2 = [(W5PeerFileTransferResponsePayload *)self files];

      if (version2)
      {
        files = [(W5PeerFileTransferResponsePayload *)self files];
        v24 = 0;
        version2 = [NSKeyedArchiver archivedDataWithRootObject:files requiringSecureCoding:1 error:&v24];
        v15 = v24;

        if (!version2 || v15)
        {
          v16 = sub_100098A04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136315906;
            v26 = "[W5PeerFileTransferResponsePayload encode]";
            v27 = 2080;
            v28 = "W5PeerFileTransferResponsePayload.m";
            v29 = 1024;
            v30 = 96;
            v31 = 2114;
            v32 = v15;
            LODWORD(v23) = 38;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) Failed to encode files with error='%{public}@'", &v25, v23);
          }
        }

        else
        {
          [v3 setObject:version2 forKey:@"files"];
        }
      }

      else
      {
        v15 = 0;
      }

      error2 = [(W5PeerFileTransferResponsePayload *)self error];

      if (error2)
      {
        error3 = [(W5PeerFileTransferResponsePayload *)self error];
        [v3 setObject:error3 forKey:@"error"];
      }
    }

    else
    {
      v15 = 0;
      version2 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (![v3 count])
  {
    v20 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerFileTransferResponsePayload encode]"];
    v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

  return v3;
}

@end