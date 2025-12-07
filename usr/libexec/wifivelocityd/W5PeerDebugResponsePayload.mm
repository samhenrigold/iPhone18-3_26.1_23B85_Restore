@interface W5PeerDebugResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerDebugResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerDebugResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerDebugResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v28.receiver = self;
  v28.super_class = W5PeerDebugResponsePayload;
  v5 = [(W5PeerDebugResponsePayload *)&v28 init];
  if (!v5 || (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) == 0))
  {
    v8 = 0;
    goto LABEL_13;
  }

  v7 = [requestCopy objectForKey:@"status"];
  v8 = v7;
  if (!v7)
  {
LABEL_13:
    v13 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v5->_status = [v7 integerValue];
  v9 = [requestCopy objectForKey:@"config"];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v27 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v27];
  v13 = v27;
  configuration = v5->_configuration;
  v5->_configuration = v12;

  v15 = v5->_configuration;
  if (!v15)
  {
LABEL_15:

    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 136315906;
      v30 = "[W5PeerDebugResponsePayload initWithRequest:]";
      v31 = 2080;
      v32 = "W5PeerDebugResponsePayload.m";
      v33 = 1024;
      v34 = 63;
      v35 = 2114;
      v36 = v13;
      LODWORD(v26) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) init error, decoding errror='%{public}@'", &v29, v26);
    }

    v5 = 0;
    goto LABEL_10;
  }

  diagnosticsMode = [(W5DebugConfiguration *)v15 diagnosticsMode];
  if (diagnosticsMode)
  {
    v17 = diagnosticsMode;
    diagnosticsMode2 = [(W5DebugConfiguration *)v5->_configuration diagnosticsMode];
    uuid = [diagnosticsMode2 uuid];

    if (!uuid)
    {
      v20 = +[NSUUID UUID];
      diagnosticsMode3 = [(W5DebugConfiguration *)v5->_configuration diagnosticsMode];
      [diagnosticsMode3 setUuid:v20];

      v22 = sub_100098A04();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        configuration = [(W5PeerDebugResponsePayload *)v5 configuration];
        diagnosticsMode4 = [configuration diagnosticsMode];
        v29 = 136315906;
        v30 = "[W5PeerDebugResponsePayload initWithRequest:]";
        v31 = 2080;
        v32 = "W5PeerDebugResponsePayload.m";
        v33 = 1024;
        v34 = 56;
        v35 = 2114;
        v36 = diagnosticsMode4;
        LODWORD(v26) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) generating UUID for diagnosticsMode='%{public}@'", &v29, v26);
      }

LABEL_10:
    }
  }

  return v5;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  version = [(W5PeerDebugResponsePayload *)self version];

  if (!version)
  {
    goto LABEL_16;
  }

  version2 = [(W5PeerDebugResponsePayload *)self version];
  [v3 setObject:version2 forKey:@"version"];

  if (![(W5PeerDebugResponsePayload *)self status])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [NSNumber numberWithInteger:[(W5PeerDebugResponsePayload *)self status]];
  [v3 setObject:v6 forKey:@"status"];

  version = [(W5PeerDebugResponsePayload *)self configuration];

  if (version)
  {
    configuration = [(W5PeerDebugResponsePayload *)self configuration];
    v16 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:configuration requiringSecureCoding:1 error:&v16];
    version = v16;

    if (!version && v8)
    {
      [v3 setObject:v8 forKey:@"config"];
LABEL_7:
      version = 0;
      goto LABEL_11;
    }

    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315906;
      v18 = "[W5PeerDebugResponsePayload encode]";
      v19 = 2080;
      v20 = "W5PeerDebugResponsePayload.m";
      v21 = 1024;
      v22 = 87;
      v23 = 2114;
      v24 = version;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v9, 0, "[wifivelocity] %s (%s:%u) failed to encode configuration with error='%{public}@'", &v17, 38);
    }
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

LABEL_11:
  if (![v3 count])
  {
    v13 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDebugResponsePayload encode]"];
    v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end