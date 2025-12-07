@interface W5PeerDebugListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerDebugListener)initWithDebugManager:(id)manager;
@end

@implementation W5PeerDebugListener

- (W5PeerDebugListener)initWithDebugManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = W5PeerDebugListener;
  v6 = [(W5PeerDebugListener *)&v11 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_debugManager, manager), !v7->_debugManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[W5PeerDebugListener initWithDebugManager:]";
      v14 = 2080;
      v15 = "W5PeerDebugListener.m";
      v16 = 1024;
      v17 = 36;
      LODWORD(v10) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) init error!", &v12, v10, LODWORD(v11.receiver));
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)handleClientRequest:(id)request
{
  requestCopy = request;
  payload = [requestCopy payload];
  requestType = [payload requestType];
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [payload configuration];
    v35 = 136316674;
    v36 = "[W5PeerDebugListener handleClientRequest:]";
    v37 = 2080;
    v38 = "W5PeerDebugListener.m";
    v39 = 1024;
    v40 = 46;
    v41 = 2114;
    v42 = requestCopy;
    v43 = 2114;
    v44 = payload;
    v45 = 2114;
    v46 = configuration;
    v47 = 2050;
    requestType2 = [payload requestType];
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) incoming request='%{public}@', payload='%{public}@', debug_config='%{public}@', type='%{public}ld'", &v35, 68);
  }

  v9 = objc_alloc_init(W5PeerDebugResponsePayload);
  v10 = [NSNumber numberWithInteger:[(W5PeerDebugListener *)self currentVersion]];
  [(W5PeerDebugResponsePayload *)v9 setVersion:v10];

  version = [payload version];
  integerValue = [version integerValue];
  currentVersion = [(W5PeerDebugListener *)self currentVersion];

  if (integerValue != currentVersion)
  {
    [(W5PeerDebugResponsePayload *)v9 setStatus:3];
    v29 = NSLocalizedFailureReasonErrorKey;
    v30 = @"W5NotSupportedErr";
    configuration2 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:4 userInfo:configuration2];
LABEL_21:

    goto LABEL_22;
  }

  if (requestType == 2)
  {
    configuration2 = [payload configuration];
    if (configuration2)
    {
      debugManager = [(W5PeerDebugListener *)self debugManager];
      [debugManager setDebugConfiguration:configuration2 reply:0];
      v17 = 0;
      v20 = 1;
    }

    else
    {
      v23 = sub_100098A04();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315650;
        v36 = "[W5PeerDebugListener handleClientRequest:]";
        v37 = 2080;
        v38 = "W5PeerDebugListener.m";
        v39 = 1024;
        v40 = 69;
        LODWORD(v26) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v23, 0, "[wifivelocity] %s (%s:%u) failed to unarchive responseObject object", &v35, v26, v27);
      }

      v31 = NSLocalizedFailureReasonErrorKey;
      v32 = @"W5ParamErr";
      debugManager = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:debugManager];
      v20 = 2;
    }

    [(W5PeerDebugResponsePayload *)v9 setStatus:v20];
    goto LABEL_21;
  }

  if (requestType == 1)
  {
    debugManager2 = [(W5PeerDebugListener *)self debugManager];
    v28 = 0;
    v15 = [debugManager2 queryDebugConfigurationAndReturnError:&v28];
    configuration2 = v28;

    if (configuration2 || !v15)
    {
      v21 = sub_100098A04();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 136315906;
        v36 = "[W5PeerDebugListener handleClientRequest:]";
        v37 = 2080;
        v38 = "W5PeerDebugListener.m";
        v39 = 1024;
        v40 = 60;
        v41 = 2114;
        v42 = configuration2;
        LODWORD(v26) = 38;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v21, 0, "[wifivelocity] %s (%s:%u) failed to retrieve debug configuration error='%{public}@'", &v35, v26);
      }

      v33 = NSLocalizedFailureReasonErrorKey;
      v34 = @"W5ParamErr";
      v22 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v22];

      v18 = 2;
    }

    else
    {
      [(W5PeerDebugResponsePayload *)v9 setConfiguration:v15];
      v17 = 0;
      v18 = 1;
    }

    [(W5PeerDebugResponsePayload *)v9 setStatus:v18];

    goto LABEL_21;
  }

  v17 = 0;
LABEL_22:
  handler = [requestCopy handler];
  (handler)[2](handler, v9, v17);

  return 1;
}

@end