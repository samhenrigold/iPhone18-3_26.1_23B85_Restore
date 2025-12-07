@interface W5PeerDiagnosticsResponsePayload
+ (id)payloadFromDictionary:(id)dictionary;
- (W5PeerDiagnosticsResponsePayload)initWithRequest:(id)request;
- (id)encode;
@end

@implementation W5PeerDiagnosticsResponsePayload

+ (id)payloadFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithRequest:dictionaryCopy];

  return v4;
}

- (W5PeerDiagnosticsResponsePayload)initWithRequest:(id)request
{
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = W5PeerDiagnosticsResponsePayload;
  v5 = [(W5PeerDiagnosticsResponsePayload *)&v20 init];
  if (!v5 || (v6 = [requestCopy objectForKey:@"version"], (v5->_version = v6) == 0))
  {

    v15 = sub_100098A04();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = "[W5PeerDiagnosticsResponsePayload initWithRequest:]";
      v23 = 2080;
      v24 = "W5PeerDiagnosticsResponsePayload.m";
      v25 = 1024;
      v26 = 56;
      v27 = 2114;
      v28 = 0;
      v18 = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v15, 0, "[wifivelocity] %s (%s:%u) init error (error='%{public}@'", &v21, v18);
    }

    v9 = 0;
    v8 = 0;
    v13 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [requestCopy objectForKey:@"status"];
  v8 = v7;
  if (v7)
  {
    v5->_status = [v7 integerValue];
  }

  v9 = [requestCopy objectForKey:@"testResults"];
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
  v19 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v9 error:&v19];
  v13 = v19;
  results = v5->_results;
  v5->_results = v12;

  if (!v5->_results)
  {
    v15 = [requestCopy objectForKey:@"testError"];
    if (v15)
    {
      objc_storeStrong(&v5->_error, v15);
    }

LABEL_8:
  }

  v16 = v5;

  return v16;
}

- (id)encode
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_100098A04();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    version = [(W5PeerDiagnosticsResponsePayload *)self version];
    status = [(W5PeerDiagnosticsResponsePayload *)self status];
    results = [(W5PeerDiagnosticsResponsePayload *)self results];
    error = [(W5PeerDiagnosticsResponsePayload *)self error];
    v22 = 136316674;
    v23 = "[W5PeerDiagnosticsResponsePayload encode]";
    v24 = 2080;
    v25 = "W5PeerDiagnosticsResponsePayload.m";
    v26 = 1024;
    v27 = 66;
    v28 = 2114;
    v29 = version;
    v30 = 2048;
    v31 = status;
    v32 = 2114;
    v33 = results;
    v34 = 2114;
    v35 = error;
    v20 = 68;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v4, 0, "[wifivelocity] %s (%s:%u) version='%{public}@', status=%ld, status='%{public}@' error='%{public}@'", &v22, v20);
  }

  version2 = [(W5PeerDiagnosticsResponsePayload *)self version];

  if (version2)
  {
    version3 = [(W5PeerDiagnosticsResponsePayload *)self version];
    [v3 setObject:version3 forKey:@"version"];

    if (![(W5PeerDiagnosticsResponsePayload *)self status])
    {
LABEL_9:
      v14 = 0;
      version2 = 0;
      goto LABEL_11;
    }

    v11 = [NSNumber numberWithInteger:[(W5PeerDiagnosticsResponsePayload *)self status]];
    [v3 setObject:v11 forKey:@"status"];

    results2 = [(W5PeerDiagnosticsResponsePayload *)self results];

    if (results2)
    {
      results3 = [(W5PeerDiagnosticsResponsePayload *)self results];
      v21 = 0;
      v14 = [NSKeyedArchiver archivedDataWithRootObject:results3 requiringSecureCoding:1 error:&v21];
      version2 = v21;

      [v3 setObject:v14 forKey:@"testResults"];
      goto LABEL_11;
    }

    version2 = [(W5PeerDiagnosticsResponsePayload *)self error];

    if (version2)
    {
      error2 = [(W5PeerDiagnosticsResponsePayload *)self error];
      [v3 setObject:error2 forKey:@"testError"];

      goto LABEL_9;
    }
  }

  v14 = 0;
LABEL_11:
  if (![v3 count])
  {
    v17 = [NSString stringWithFormat:@"%s: empty payload", "[W5PeerDiagnosticsResponsePayload encode]"];
    v18 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v17 userInfo:0];
    v19 = v18;

    objc_exception_throw(v18);
  }

  return v3;
}

@end