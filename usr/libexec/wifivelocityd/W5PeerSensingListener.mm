@interface W5PeerSensingListener
- (BOOL)handleClientRequest:(id)request;
- (BOOL)performSensing:(id)sensing error:(id *)error;
- (W5PeerSensingListener)initWithInterface:(id)interface;
- (id)_responseDictionaryWithSuccess:(BOOL)success errorString:(id)string;
@end

@implementation W5PeerSensingListener

- (W5PeerSensingListener)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v11.receiver = self;
  v11.super_class = W5PeerSensingListener;
  v6 = [(W5PeerSensingListener *)&v11 init];
  v7 = v6;
  if (!v6 || (objc_storeStrong(&v6->_interface, interface), !v7->_interface))
  {

    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[W5PeerSensingListener initWithInterface:]";
      v14 = 2080;
      v15 = "W5PeerSensingListener.m";
      v16 = 1024;
      v17 = 35;
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
  v5 = objc_alloc_init(W5PeerSensingResponsePayload);
  options = [requestCopy options];

  if (options)
  {
    handler2 = objc_alloc_init(CWFSensingParameters);
    options2 = [requestCopy options];
    v9 = [options2 objectForKeyedSubscript:@"numberOfReports"];
    [handler2 setNumberOfReports:{objc_msgSend(v9, "intValue")}];

    options3 = [requestCopy options];
    v11 = [options3 objectForKeyedSubscript:@"placeLabels"];
    [handler2 setPlaceLabels:v11];

    options4 = [requestCopy options];
    v13 = [options4 objectForKeyedSubscript:@"activityLabels"];
    [handler2 setActivityLabels:v13];

    options5 = [requestCopy options];
    v15 = [options5 objectForKeyedSubscript:@"submitMetric"];
    [handler2 setSubmitMetric:{objc_msgSend(v15, "intValue") != 0}];

    v16 = sub_100098A04();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [handler2 description];
      v27 = 136315906;
      v28 = "[W5PeerSensingListener handleClientRequest:]";
      v29 = 2080;
      v30 = "W5PeerSensingListener.m";
      v31 = 1024;
      v32 = 58;
      v33 = 2114;
      v34 = v17;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] %s (%s:%u) Performing sensing with parameters='%{public}@'", &v27, 38);
    }

    v26 = 0;
    v18 = [(W5PeerSensingListener *)self performSensing:handler2 error:&v26];
    v19 = v26;
    [(W5PeerSensingResponsePayload *)v5 setResult:v18];
    localizedDescription = [v19 localizedDescription];

    [(W5PeerSensingResponsePayload *)v5 setErrorStr:localizedDescription];
    handler = [requestCopy handler];
    (handler)[2](handler, v5, 0);
  }

  else
  {
    v22 = sub_100098A04();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "[W5PeerSensingListener handleClientRequest:]";
      v29 = 2080;
      v30 = "W5PeerSensingListener.m";
      v31 = 1024;
      v32 = 45;
      LODWORD(v24) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v22, 0, "[wifivelocity] %s (%s:%u) Incoming request for W5DeviceConnection to perform sensing, but options dictionary was empty", &v27, v24, v25);
    }

    [(W5PeerSensingResponsePayload *)v5 setResult:0];
    [(W5PeerSensingResponsePayload *)v5 setErrorStr:@"empty request dictionary"];
    handler2 = [requestCopy handler];
    (*(handler2 + 2))(handler2, v5, 0);
  }

  return options != 0;
}

- (BOOL)performSensing:(id)sensing error:(id *)error
{
  sensingCopy = sensing;
  v7 = sub_100098A04();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    interface = [(W5PeerSensingListener *)self interface];
    networkName = [interface networkName];
    v14 = 136315906;
    v15 = "[W5PeerSensingListener performSensing:error:]";
    v16 = 2080;
    v17 = "W5PeerSensingListener.m";
    v18 = 1024;
    v19 = 85;
    v20 = 2114;
    v21 = networkName;
    v13 = 38;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v7, 0, "[wifivelocity] %s (%s:%u) corewifi perform sensing for network='%{public}@'", &v14, v13);
  }

  interface2 = [(W5PeerSensingListener *)self interface];
  v11 = [interface2 performSensingWithParameters:sensingCopy error:error];

  return v11 != 0;
}

- (id)_responseDictionaryWithSuccess:(BOOL)success errorString:(id)string
{
  successCopy = success;
  stringCopy = string;
  if (stringCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = successCopy;
  }

  if (v6)
  {
    v7 = stringCopy;
  }

  else
  {
    v7 = @"unknown error";
  }

  v12[0] = @"result";
  v8 = stringCopy;
  v9 = [NSNumber numberWithBool:successCopy];
  v12[1] = @"error";
  v13[0] = v9;
  v13[1] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v10;
}

@end