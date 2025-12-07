@interface W5PeerDiagnosticsListener
- (BOOL)handleClientRequest:(id)request;
- (W5PeerDiagnosticsListener)initWithDiagnosticsManager:(id)manager;
- (id)_runDiagnostics:(id)diagnostics uuid:(id)uuid configuration:(id)configuration;
@end

@implementation W5PeerDiagnosticsListener

- (W5PeerDiagnosticsListener)initWithDiagnosticsManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = W5PeerDiagnosticsListener;
  v6 = [(W5PeerDiagnosticsListener *)&v11 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_diagnosticsManager, manager), !v7->_diagnosticsManager))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[W5PeerDiagnosticsListener initWithDiagnosticsManager:]";
      v14 = 2080;
      v15 = "W5PeerDiagnosticsListener.m";
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
  v6 = payload;
  if (payload)
  {
    version = [payload version];
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316418;
      v20 = "[W5PeerDiagnosticsListener handleClientRequest:]";
      v21 = 2080;
      v22 = "W5PeerDiagnosticsListener.m";
      v23 = 1024;
      v24 = 45;
      v25 = 2114;
      v26 = requestCopy;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = version;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v8, 0, "[wifivelocity] %s (%s:%u) incoming request='%{public}@', payload='%{public}@' version='%{public}@'", &v19, 58);
    }

    v9 = objc_alloc_init(W5PeerDiagnosticsResponsePayload);
    v10 = [NSNumber numberWithInteger:[(W5PeerDiagnosticsListener *)self currentVersion]];
    [(W5PeerDiagnosticsResponsePayload *)v9 setVersion:v10];

    [(W5PeerDiagnosticsResponsePayload *)v9 setStatus:1];
    tests = [v6 tests];
    configuration = [v6 configuration];
    uuid = [v6 uuid];
    v14 = [(W5PeerDiagnosticsListener *)self _runDiagnostics:tests uuid:uuid configuration:configuration];
    v15 = [v14 objectForKey:@"testResults"];
    if (v15)
    {
      [(W5PeerDiagnosticsResponsePayload *)v9 setResults:v15];
    }

    else
    {
      v16 = [v14 objectForKey:@"testError"];
      [(W5PeerDiagnosticsResponsePayload *)v9 setError:v16];
    }

    handler = [requestCopy handler];
    (handler)[2](handler, v9, 0);
  }

  return 1;
}

- (id)_runDiagnostics:(id)diagnostics uuid:(id)uuid configuration:(id)configuration
{
  diagnosticsCopy = diagnostics;
  uuidCopy = uuid;
  configurationCopy = configuration;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_10001E998;
  v51 = sub_10001E9A8;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10001E998;
  v45 = sub_10001E9A8;
  v46 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v11 = objc_alloc_init(NSLock);
  v12 = dispatch_semaphore_create(0);
  v13 = objc_alloc_init(W5DiagnosticsTestRequestInternal);
  [(W5DiagnosticsTestRequestInternal *)v13 setUuid:uuidCopy];
  [(W5DiagnosticsTestRequestInternal *)v13 setTestRequests:diagnosticsCopy];
  [(W5DiagnosticsTestRequestInternal *)v13 setConfiguration:configurationCopy];
  v14 = [configurationCopy objectForKeyedSubscript:@"IncludeEvents"];
  -[W5DiagnosticsTestRequestInternal setIncludeEvents:](v13, "setIncludeEvents:", [v14 BOOLValue]);

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10001E9B0;
  v30 = &unk_1000E1C20;
  v15 = v11;
  v31 = v15;
  v33 = v39;
  v34 = v37;
  v35 = &v41;
  v36 = &v47;
  v16 = v12;
  v32 = v16;
  [(W5DiagnosticsTestRequestInternal *)v13 setReply:&v27];
  [(W5DiagnosticsManager *)self->_diagnosticsManager addRequest:v13];
  v17 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v16, v17) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v58 = 0x404E000000000000;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
  }

  if (v42[5])
  {
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v42[5];
      *buf = 136315906;
      v58 = "[W5PeerDiagnosticsListener _runDiagnostics:uuid:configuration:]";
      v59 = 2080;
      v60 = "W5PeerDiagnosticsListener.m";
      v61 = 1024;
      v62 = 116;
      v63 = 2114;
      v64 = v19;
      v26 = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v18, 0, "[wifivelocity] %s (%s:%u) Replying with error %{public}@", buf, v26, v27, v28, v29, v30, v31);
    }

    v20 = v42[5];
    v55 = @"testError";
    v56 = v20;
    v21 = &v55;
    v22 = &v56;
  }

  else
  {
    v23 = v48[5];
    v53 = @"testResults";
    v54 = v23;
    v21 = &v53;
    v22 = &v54;
  }

  v24 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:1];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);

  return v24;
}

@end