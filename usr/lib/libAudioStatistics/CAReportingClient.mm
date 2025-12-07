@interface CAReportingClient
+ (id)getClient;
+ (id)sharedInstance;
+ (void)destroyClient;
- (CAReportingClient)initWithXPC:(BOOL)c endpoint:(id)endpoint;
- (id)getConfigurationForReporterID:(int64_t)d;
- (id)listClientReporterIDs;
- (id)listServerReporterIDs;
- (id)reporterWithID:(int64_t)d;
- (int64_t)createReporterID:(unsigned int)d;
- (uint64_t)requestMessageWithID:category:type:callback:;
- (unsigned)getServiceTypeForReporterID:(int64_t)d;
- (void)addReporter:(id)reporter;
- (void)dealloc;
- (void)destroyReporterWithID:(int64_t)d;
- (void)destroyService;
- (void)disconnectReporters;
- (void)reconnectReporter:(id)reporter;
- (void)reconnectStartedReporters;
- (void)requestMessageWithID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback;
- (void)requestMessageWithID:category:type:callback:;
- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type reporter:(int64_t)reporter;
- (void)setConfiguration:(id)configuration reporterID:(int64_t)d;
- (void)setServiceType:(unsigned __int16)type reporterID:(int64_t)d;
- (void)startReporter:(int64_t)reporter;
- (void)stopReporter:(int64_t)reporter;
@end

@implementation CAReportingClient

- (void)reconnectReporter:(id)reporter
{
  v34 = *MEMORY[0x29EDCA608];
  reporterCopy = reporter;
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315650;
      v23 = "CAReportingClient.mm";
      v24 = 1024;
      v25 = 79;
      v26 = 2080;
      v27 = "[CAReportingClient reconnectReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v22, 0x1Cu);
    }
  }

  if (reporterCopy && ([reporterCopy connected] & 1) == 0)
  {
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      reporterID = [reporterCopy reporterID];
      v8 = CAReportingUtilityGenerateServiceNameFromServiceType([reporterCopy serviceType]);
      serviceType = [reporterCopy serviceType];
      v10 = aNy[[reporterCopy started]];
      v22 = 136316418;
      v23 = "CAReportingClient.mm";
      v24 = 1024;
      v25 = 514;
      v26 = 2048;
      v27 = reporterID;
      v28 = 2112;
      v29 = v8;
      v30 = 1024;
      v31 = serviceType;
      v32 = 1024;
      v33 = v10;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reconnecting reporter { careporter_id=%lli, servicename=%@, servicetype=%i, started=%c }", &v22, 0x32u);
    }

    if (_os_feature_enabled_impl())
    {
      connection = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy createSessionWith:{objc_msgSend(reporterCopy, "reporterID")}];

      connection2 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy2 = [connection2 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy2 setWithServiceType:objc_msgSend(reporterCopy for:{"serviceType"), objc_msgSend(reporterCopy, "reporterID")}];

      connection3 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy3 = [connection3 _unboostingRemoteObjectProxy];
      configuration = [reporterCopy configuration];
      [_unboostingRemoteObjectProxy3 setWithConfiguration:configuration for:{objc_msgSend(reporterCopy, "reporterID")}];
    }

    else
    {
      connection4 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy4 = [connection4 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy4 createReportingSession:{objc_msgSend(reporterCopy, "reporterID")}];

      connection5 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy5 = [connection5 _unboostingRemoteObjectProxy];
      [_unboostingRemoteObjectProxy5 setServiceType:objc_msgSend(reporterCopy reportingSession:{"serviceType"), objc_msgSend(reporterCopy, "reporterID")}];

      connection3 = [(CAReportingClient *)self connection];
      _unboostingRemoteObjectProxy3 = [connection3 _unboostingRemoteObjectProxy];
      configuration = [reporterCopy configuration];
      [_unboostingRemoteObjectProxy3 setConfiguration:configuration forReporterID:{objc_msgSend(reporterCopy, "reporterID")}];
    }

    [reporterCopy setConnected:1];
  }
}

- (void)reconnectStartedReporters
{
  v25 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "CAReportingClient.mm";
      v21 = 1024;
      v22 = 79;
      v23 = 2080;
      v24 = "[CAReportingClient reconnectStartedReporters]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v4 = gReportingClient;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x29EDBA0A8] predicateWithFormat:@"started == YES"];
  clientReporters = [(CAReportingClient *)self clientReporters];
  allValues = [clientReporters allValues];
  v8 = [allValues filteredArrayUsingPredicate:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        -[CAReportingClient startReporter:](self, "startReporter:", [v13 reporterID]);
        -[CAReportingClient sendMessage:category:type:reporter:](self, "sendMessage:category:type:reporter:", &unk_2A1DF30E0, 1, 0, [v13 reporterID]);
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v4);
}

- (void)disconnectReporters
{
  v24 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "CAReportingClient.mm";
      v20 = 1024;
      v21 = 79;
      v22 = 2080;
      v23 = "[CAReportingClient disconnectReporters]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v4 = *AA_ClientCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "CAReportingClient.mm";
    v20 = 1024;
    v21 = 555;
    _os_log_impl(&dword_296C89000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disconnecting reporters", buf, 0x12u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clientReporters = [(CAReportingClient *)selfCopy clientReporters];
  allValues = [clientReporters allValues];

  v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setConnected:0];
        perfObject = [v11 perfObject];
        [perfObject abandon];
      }

      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
}

- (CAReportingClient)initWithXPC:(BOOL)c endpoint:(id)endpoint
{
  cCopy = c;
  v40 = *MEMORY[0x29EDCA608];
  endpointCopy = endpoint;
  if (_os_feature_enabled_impl())
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v30 = 1024;
      v31 = 79;
      v32 = 2080;
      *v33 = "[CAReportingClient initWithXPC:endpoint:]";
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v8 = *AA_ClientCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = aNy[cCopy];
    *buf = 136315906;
    *&buf[4] = "CAReportingClient.mm";
    v30 = 1024;
    v31 = 571;
    v32 = 1024;
    *v33 = v9;
    *&v33[4] = 2112;
    *&v33[6] = endpointCopy;
    _os_log_impl(&dword_296C89000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating CAReportingClient { useXPC=%c, endpoint=%@ }", buf, 0x22u);
  }

  v28.receiver = self;
  v28.super_class = CAReportingClient;
  v10 = [(CAReportingClient *)&v28 init];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = objc_opt_new();
  [(CAReportingClient *)v10 setClientReporters:v11];

  if (!cCopy)
  {
    goto LABEL_26;
  }

  if (endpointCopy)
  {
    v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithListenerEndpoint:endpointCopy];
    [(CAReportingClient *)v10 setConnection:v12];
  }

  else
  {
    if (_os_feature_enabled_impl())
    {
      v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithMachServiceName:@"com.apple.audioanalyticsd" options:4096];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x29EDBA170]) initWithServiceName:@"com.apple.audio.toolbox.reporting.service"];
    }

    [(CAReportingClient *)v10 setConnection:v12];
  }

  connection = [(CAReportingClient *)v10 connection];
  v14 = connection == 0;

  if (!v14)
  {
    if (_os_feature_enabled_impl())
    {
      [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF56E0];
    }

    else
    {
      [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A1DF5740];
    }
    v15 = ;
    connection2 = [(CAReportingClient *)v10 connection];
    [connection2 setRemoteObjectInterface:v15];

    objc_initWeak(buf, v10);
    connection3 = [(CAReportingClient *)v10 connection];
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = __42__CAReportingClient_initWithXPC_endpoint___block_invoke;
    v24[3] = &unk_29EE531C8;
    objc_copyWeak(&v25, buf);
    [connection3 setInterruptionHandler:v24];

    connection4 = [(CAReportingClient *)v10 connection];
    [connection4 setInvalidationHandler:&__block_literal_global];

    connection5 = [(CAReportingClient *)v10 connection];
    [connection5 resume];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
LABEL_26:
    v21 = v10;
    goto LABEL_27;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = *AA_ClientCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v27 = @"com.apple.audioanalyticsd";
      caulk::slog::detail::string_converter::string_converter<NSString * {__strong}>(buf, &v27);
      *v34 = 136315650;
      v35 = "CAReportingClient.mm";
      v36 = 1024;
      v37 = 592;
      v38 = 2080;
      v39 = *&v33[12];
      _os_log_impl(&dword_296C89000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection { servicename=%s }", v34, 0x1Cu);
      if (v33[4] == 1 && (v33[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v23 = *AA_ClientCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = @"com.apple.audio.toolbox.reporting.service";
      caulk::slog::detail::string_converter::string_converter<NSString * {__strong}>(buf, &v26);
      *v34 = 136315650;
      v35 = "CAReportingClient.mm";
      v36 = 1024;
      v37 = 594;
      v38 = 2080;
      v39 = *&v33[12];
      _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating XPC connection { servicename=%s }", v34, 0x1Cu);
      if (v33[4] == 1 && (v33[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

  v21 = 0;
LABEL_27:

  return v21;
}

void __42__CAReportingClient_initWithXPC_endpoint___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *AA_ClientCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "CAReportingClient.mm";
    v7 = 1024;
    v8 = 608;
    _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Interruption Handler: server exited or crashed.", &v5, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnectReporters];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reconnectStartedReporters];
}

void __42__CAReportingClient_initWithXPC_endpoint___block_invoke_210()
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = *AA_ClientCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "CAReportingClient.mm";
    v3 = 1024;
    v4 = 615;
    _os_log_impl(&dword_296C89000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidation Handler: server exited", &v1, 0x12u);
  }
}

+ (id)sharedInstance
{
  v16 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "CAReportingClient.mm";
      v12 = 1024;
      v13 = 79;
      v14 = 2080;
      v15 = "+[CAReportingClient sharedInstance]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v10, 0x1Cu);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!gReportingClient)
  {
    v5 = [[selfCopy alloc] initWithXPC:1 endpoint:0];
    v6 = gReportingClient;
    gReportingClient = v5;

    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "CAReportingClient.mm";
      v12 = 1024;
      v13 = 636;
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registering appWillResignActive for UIApplicationWillResignActiveNotification", &v10, 0x12u);
    }
  }

  objc_sync_exit(selfCopy);

  v8 = gReportingClient;

  return v8;
}

- (int64_t)createReporterID:(unsigned int)d
{
  v20 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "CAReportingClient.mm";
      v16 = 1024;
      v17 = 79;
      v18 = 2080;
      v19 = "[CAReportingClient createReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v14, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  dCopy = d;
  kdebug_trace();
  processInfo = [MEMORY[0x29EDBA0B0] processInfo];
  processIdentifier = [processInfo processIdentifier];
  if (!d)
  {
    dCopy = ++gReporterIDCount | (processIdentifier << 32);
  }

  if (_os_feature_enabled_impl())
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy createSessionWith:dCopy];
  }

  else
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy createReportingSession:dCopy];
  }

  v12 = *AA_ClientCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "CAReportingClient.mm";
    v16 = 1024;
    v17 = 661;
    v18 = 2048;
    v19 = dCopy;
    _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created reporter { careporter_id=%lli }", &v14, 0x1Cu);
  }

  objc_sync_exit(v6);

  return dCopy;
}

- (id)reporterWithID:(int64_t)d
{
  v41 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v35 = 1024;
      v36 = 79;
      v37 = 2080;
      dCopy = "[CAReportingClient reporterWithID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v6 = *AA_ClientCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CAReportingClient.mm";
    v35 = 1024;
    v36 = 676;
    v37 = 2048;
    dCopy = d;
    _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Finding reporter { careporter_id=%lli }", buf, 0x1Cu);
  }

  if (d)
  {
    v7 = gReportingClient;
    objc_sync_enter(v7);
    v8 = GetLocalCAReporterObjectFromClient(self, d);
    v9 = v8;
    if (v8)
    {
      longLongValue = v8;
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        connection = [(CAReportingClient *)self connection];
        caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection);

        v12 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
        v13 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
        [v12 validateFor:d completion:v13];

        v14 = v40;
        if (v39)
        {
          v15 = *AA_ClientCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v39;
            localizedDescription = [v16 localizedDescription];
            v28 = 136315650;
            v29 = "CAReportingClient.mm";
            v30 = 1024;
            v31 = 699;
            v32 = 2112;
            v33 = localizedDescription;
            _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating reporter { message=%@ }", &v28, 0x1Cu);
          }
        }
      }

      else
      {
        connection2 = [(CAReportingClient *)self connection];
        caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection2);

        v19 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
        v20 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
        [v19 reporterID:d valid:v20];

        v14 = v40;
        if (v39)
        {
          v21 = *AA_ClientCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = v39;
            localizedDescription2 = [v22 localizedDescription];
            v28 = 136315650;
            v29 = "CAReportingClient.mm";
            v30 = 1024;
            v31 = 707;
            v32 = 2112;
            v33 = localizedDescription2;
            _os_log_impl(&dword_296C89000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error creating reporter { message=%@ }", &v28, 0x1Cu);
          }
        }
      }

      std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&buf[8]);
      if (v14)
      {
        v24 = [v14 objectForKey:@"reporterID"];
        longLongValue = [v24 longLongValue];

        v25 = [v14 objectForKey:@"serviceType"];
        intValue = [v25 intValue];

        if (longLongValue)
        {
          longLongValue = [[CAReporter alloc] initWithReporterID:longLongValue serviceType:intValue];
        }
      }

      else
      {
        longLongValue = 0;
      }
    }

    objc_sync_exit(v7);
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (void)addReporter:(id)reporter
{
  v21 = *MEMORY[0x29EDCA608];
  reporterCopy = reporter;
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 79;
      v19 = 2080;
      v20 = "[CAReportingClient addReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  if (reporterCopy)
  {
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      reporterID = [reporterCopy reporterID];
      *buf = 136315650;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 737;
      v19 = 2048;
      v20 = reporterID;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding reporter to client { careporter_id=%lli }", buf, 0x1Cu);
    }

    v8 = gReportingClient;
    objc_sync_enter(v8);
    clientReporters = [(CAReportingClient *)self clientReporters];
    v10 = [MEMORY[0x29EDBA070] numberWithLongLong:{objc_msgSend(reporterCopy, "reporterID")}];
    v13 = v10;
    v14 = reporterCopy;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [clientReporters addEntriesFromDictionary:v11];

    objc_sync_exit(v8);
  }

  else
  {
    v12 = *AA_ClientCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 733;
      _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received nil reporter!", buf, 0x12u);
    }
  }
}

- (void)destroyReporterWithID:(int64_t)d
{
  v22 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "CAReportingClient.mm";
      v18 = 1024;
      v19 = 79;
      v20 = 2080;
      dCopy2 = "[CAReportingClient destroyReporterWithID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v16, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  if (d)
  {
    clientReporters = [(CAReportingClient *)self clientReporters];
    v8 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
    v9 = [clientReporters objectForKeyedSubscript:v8];

    if (v9)
    {
      [(CAReportingClient *)self stopReporter:d];
      v10 = *AA_ClientCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = "CAReportingClient.mm";
        v18 = 1024;
        v19 = 760;
        v20 = 2048;
        dCopy2 = d;
        _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing reporter from client and server { careporter_id=%lli }", &v16, 0x1Cu);
      }

      [v9 setRemovedByClient:1];
      clientReporters2 = [(CAReportingClient *)self clientReporters];
      v12 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
      [clientReporters2 removeObjectForKey:v12];

      if ([v9 connected])
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy destroySessionFor:d];
        }

        else
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy destroyReportingSession:d];
        }
      }
    }

    else
    {
      v15 = *AA_ClientCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315650;
        v17 = "CAReportingClient.mm";
        v18 = 1024;
        v19 = 773;
        v20 = 2048;
        dCopy2 = d;
        _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempted to remove a reporter not created by this client { careporter_id=%lli }", &v16, 0x1Cu);
      }
    }
  }

  objc_sync_exit(v6);
}

- (void)requestMessageWithID:(int64_t)d category:(unsigned int)category type:(unsigned __int16)type callback:(id)callback
{
  typeCopy = type;
  v40 = *MEMORY[0x29EDCA608];
  callbackCopy = callback;
  if (_os_feature_enabled_impl())
  {
    v11 = *AA_ClientCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "CAReportingClient.mm";
      v28 = 1024;
      v29 = 79;
      v30 = 2080;
      dCopy = "[CAReportingClient requestMessageWithID:category:type:callback:]";
      _os_log_impl(&dword_296C89000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v12 = *AA_ClientCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = CAReportingUtilityCategoryString(category);
    v14 = CAReportingUtilityTypeString(typeCopy);
    buf[0] = 136316674;
    *&buf[1] = "CAReportingClient.mm";
    v28 = 1024;
    v29 = 786;
    v30 = 2048;
    dCopy = d;
    v32 = 2112;
    v33 = v13;
    v34 = 1024;
    categoryCopy2 = category;
    v36 = 2112;
    v37 = v14;
    v38 = 1024;
    v39 = typeCopy;
    _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID called. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", buf, 0x3Cu);
  }

  if (!d)
  {
    v15 = *AA_ClientCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CAReportingUtilityCategoryString(category);
      v17 = CAReportingUtilityTypeString(typeCopy);
      buf[0] = 136316674;
      *&buf[1] = "CAReportingClient.mm";
      v28 = 1024;
      v29 = 788;
      v30 = 2048;
      dCopy = 0;
      v32 = 2112;
      v33 = v16;
      v34 = 1024;
      categoryCopy2 = category;
      v36 = 2112;
      v37 = v17;
      v38 = 1024;
      v39 = typeCopy;
      _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID: Invalid reporterID. Invoking callback. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", buf, 0x3Cu);
    }

    callbackCopy[2](callbackCopy, 0);
  }

  objc_sync_enter(gReportingClient);
  v18 = MEMORY[0x29C261C60](callbackCopy);
  if (_os_feature_enabled_impl())
  {
    [(CAReportingClient *)self connection];
    objc_claimAutoreleasedReturnValue();
    v22[0] = MEMORY[0x29C261C60](v18);
    v22[1] = d;
    categoryCopy3 = category;
    v24 = typeCopy;
    std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::function<[CAReportingClient requestMessageWithID:category:type:callback:]::$_0,void>(v26, v22);
  }

  [(CAReportingClient *)self connection];
  objc_claimAutoreleasedReturnValue();
  v19[0] = MEMORY[0x29C261C60](v18);
  v19[1] = d;
  categoryCopy4 = category;
  v21 = typeCopy;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::function<[CAReportingClient requestMessageWithID:category:type:callback:]::$_0,void>(v25, v19);
}

- (id)listClientReporterIDs
{
  v3 = gReportingClient;
  objc_sync_enter(v3);
  clientReporters = [(CAReportingClient *)self clientReporters];
  allKeys = [clientReporters allKeys];

  objc_sync_exit(v3);

  return allKeys;
}

- (id)listServerReporterIDs
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = gReportingClient;
  objc_sync_enter(v3);
  if (_os_feature_enabled_impl())
  {
    connection = [(CAReportingClient *)self connection];
    caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(&v22, connection);

    v5 = v25;
    if (v24)
    {
      v6 = *AA_ClientCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v24;
        localizedDescription = [v7 localizedDescription];
        v16 = 136315650;
        v17 = "CAReportingClient.mm";
        v18 = 1024;
        v19 = 836;
        v20 = 2112;
        v21 = localizedDescription;
        _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d error listing reporters { message=%@ }", &v16, 0x1Cu);
      }
    }
  }

  else
  {
    connection2 = [(CAReportingClient *)self connection];
    caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_message(&v22, connection2);

    v10 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::sync_proxy(&v22);
    v11 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSArray<NSNumber *> * {__strong}>::reply(&v22);
    [v10 getAllReporters:v11];

    v5 = v25;
    if (v24)
    {
      v12 = *AA_ClientCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v24;
        localizedDescription2 = [v13 localizedDescription];
        v16 = 136315650;
        v17 = "CAReportingClient.mm";
        v18 = 1024;
        v19 = 844;
        v20 = 2112;
        v21 = localizedDescription2;
        _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d error listing reporters { message=%@ }", &v16, 0x1Cu);
      }
    }
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<NSArray<NSNumber *> * {__strong}> &&)>::~__value_func[abi:ne200100](&v23);
  objc_sync_exit(v3);

  return v5;
}

- (void)startReporter:(int64_t)reporter
{
  v29 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315650;
      *&v23[4] = "CAReportingClient.mm";
      v24 = 1024;
      v25 = 79;
      v26 = 2080;
      reporterCopy2 = "[CAReportingClient startReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", v23, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = *AA_ClientCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 136315650;
    *&v23[4] = "CAReportingClient.mm";
    v24 = 1024;
    v25 = 861;
    v26 = 2048;
    reporterCopy2 = reporter;
    _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting { careporter_id=%lli }", v23, 0x1Cu);
  }

  v8 = GetLocalCAReporterObjectFromClient(self, reporter);
  v9 = v8;
  if (v8)
  {
    [v8 reporterID];
    [v9 serviceType];
    kdebug_trace();
    [(CAReportingClient *)self reconnectReporter:v9];
    if (([v9 started] & 1) == 0)
    {
      date = [MEMORY[0x29EDB8DB0] date];
      [v9 setStartDate:date];

      [v9 setStarted:1];
      v11 = *AA_ClientCategory();
      signpostID = [v9 signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        configuration = [v9 configuration];
        v14 = CAReportingUtilityRetrieveAppName(configuration);
        *v23 = 138543362;
        *&v23[4] = v14;
        _os_signpost_emit_with_name_impl(&dword_296C89000, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "CoreAudioReportingSession", "Starting Application=%{public}@", v23, 0xCu);
      }

      if ([v9 serviceType] == 11 && CAReportingUtilityIsInternalBuild())
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_message(v23, connection);

          v16 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},BOOL>::sync_proxy(v23);
          [v16 startSessionFor:reporter];
        }

        else
        {
          connection2 = [(CAReportingClient *)self connection];
          caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_message(v23, connection2);

          v16 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::sync_proxy(v23);
          v21 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},BOOL>::reply(v23);
          [v16 startReportingSessionForID:reporter reply:v21];
        }

        std::__function::__value_func<void ()(NSError *,std::tuple<BOOL> &&)>::~__value_func[abi:ne200100](&v23[8]);
      }

      else
      {
        if (_os_feature_enabled_impl())
        {
          connection3 = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection3 _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy startSessionFor:reporter];
        }

        else
        {
          connection3 = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection3 _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy startReportingSessionForID:reporter];
        }
      }

      perfObject = [v9 perfObject];
      [perfObject begin];
    }
  }

  else
  {
    v17 = *AA_ClientCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315650;
      *&v23[4] = "CAReportingClient.mm";
      v24 = 1024;
      v25 = 865;
      v26 = 2048;
      reporterCopy2 = reporter;
      _os_log_impl(&dword_296C89000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reporter not found { careporter_id=%lli }", v23, 0x1Cu);
    }
  }

  objc_sync_exit(v6);
}

- (void)stopReporter:(int64_t)reporter
{
  v36[1] = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315650;
      v28 = "CAReportingClient.mm";
      v29 = 1024;
      v30 = 79;
      v31 = 2080;
      reporterCopy3 = "[CAReportingClient stopReporter:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v27, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = *AA_ClientCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315650;
    v28 = "CAReportingClient.mm";
    v29 = 1024;
    v30 = 909;
    v31 = 2048;
    reporterCopy3 = reporter;
    _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping { careporter_id=%lli }", &v27, 0x1Cu);
  }

  v8 = GetLocalCAReporterObjectFromClient(self, reporter);
  v9 = v8;
  if (v8)
  {
    if (![v8 started] || (objc_msgSend(v9, "startDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
    {
      v22 = *AA_ClientCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315650;
        v28 = "CAReportingClient.mm";
        v29 = 1024;
        v30 = 917;
        v31 = 2048;
        reporterCopy3 = reporter;
        _os_log_impl(&dword_296C89000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d !reporter.started or reporter.startDate is nil { careporter_id=%lli }", &v27, 0x1Cu);
      }
    }

    else
    {
      [v9 reporterID];
      [v9 serviceType];
      kdebug_trace();
      v35 = @"session_duration";
      v12 = MEMORY[0x29EDBA070];
      startDate = [v9 startDate];
      [startDate timeIntervalSinceNow];
      v15 = [v12 numberWithDouble:fabs(v14)];
      v36[0] = v15;
      v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      [(CAReportingClient *)self sendMessage:v16 category:1 type:0 reporter:reporter];

      perfObject = [v9 perfObject];
      endAndReturnPerformanceMetrics = [perfObject endAndReturnPerformanceMetrics];

      if (endAndReturnPerformanceMetrics)
      {
        v19 = *AA_ClientCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v27 = 136315906;
          v28 = "CAReportingClient.mm";
          v29 = 1024;
          v30 = 925;
          v31 = 2048;
          reporterCopy3 = reporter;
          v33 = 2112;
          v34 = endAndReturnPerformanceMetrics;
          _os_log_impl(&dword_296C89000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d gathered perf metrics { careporter_id=%lli, perfMetrics=%@ }", &v27, 0x26u);
        }

        [(CAReportingClient *)self sendMessage:endAndReturnPerformanceMetrics category:13 type:0 reporter:reporter];
      }

      if ([v9 connected])
      {
        if (_os_feature_enabled_impl())
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy stopSessionFor:reporter];
        }

        else
        {
          connection = [(CAReportingClient *)self connection];
          _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
          [_unboostingRemoteObjectProxy stopReportingSessionForID:reporter];
        }
      }

      v23 = *AA_ClientCategory();
      signpostID = [v9 signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        configuration = [v9 configuration];
        v26 = CAReportingUtilityRetrieveAppName(configuration);
        v27 = 138543362;
        v28 = v26;
        _os_signpost_emit_with_name_impl(&dword_296C89000, v23, OS_SIGNPOST_INTERVAL_END, signpostID, "CoreAudioReportingSession", "Stopping Application=%{public}@", &v27, 0xCu);
      }

      [v9 setStarted:0];
      [v9 setStartDate:0];
    }
  }

  objc_sync_exit(v6);
}

- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type reporter:(int64_t)reporter
{
  typeCopy = type;
  v8 = *&category;
  v30 = *MEMORY[0x29EDCA608];
  messageCopy = message;
  if (_os_feature_enabled_impl())
  {
    v11 = *AA_ClientCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "CAReportingClient.mm";
      v24 = 1024;
      v25 = 79;
      v26 = 2080;
      v27 = "[CAReportingClient sendMessage:category:type:reporter:]";
      _os_log_impl(&dword_296C89000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v12 = gReportingClient;
  objc_sync_enter(v12);
  kdebug_trace();
  v13 = *AA_ClientCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v23 = "CAReportingClient.mm";
    v24 = 1024;
    v25 = 955;
    v26 = 2112;
    v27 = messageCopy;
    v28 = 2048;
    reporterCopy = reporter;
    _os_log_impl(&dword_296C89000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending message { message=%@, careporter_id=%lli }", buf, 0x26u);
  }

  if ([CAReportingClient sendMessage:category:type:reporter:]::once != -1)
  {
    [CAReportingClient sendMessage:category:type:reporter:];
  }

  if ([CAReportingClient sendMessage:category:type:reporter:]::gCAReportingIsDarwin != 1)
  {
    if (v8 == 7 && typeCopy == 6 && CAReportingUtilityIsInternalBuild())
    {
      if (_os_feature_enabled_impl())
      {
        connection = [(CAReportingClient *)self connection];
        remoteObjectProxy = [connection remoteObjectProxy];
        v18 = CAReportingUtilityAddDates(messageCopy);
        [remoteObjectProxy sendWithMessage:v18 with:7 and:6 for:reporter];
      }

      else
      {
        connection = [(CAReportingClient *)self connection];
        remoteObjectProxy = [connection remoteObjectProxy];
        v18 = CAReportingUtilityAddDates(messageCopy);
        [remoteObjectProxy sendMessage:v18 withCategory:7 andType:6 forReportingID:reporter];
      }
    }

    else
    {
      if (_os_feature_enabled_impl())
      {
        connection = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
        v20 = CAReportingUtilityAddDates(messageCopy);
        [_unboostingRemoteObjectProxy sendWithMessage:v20 with:v8 and:typeCopy for:reporter];
      }

      else
      {
        connection = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
        v20 = CAReportingUtilityAddDates(messageCopy);
        [_unboostingRemoteObjectProxy sendMessage:v20 withCategory:v8 andType:typeCopy forReportingID:reporter];
      }
    }

    goto LABEL_25;
  }

  if (messageCopy)
  {
    if (v8 == 7 && typeCopy == 6)
    {
      v14 = [messageCopy objectForKeyedSubscript:@"issue_type"];
      v15 = v14 == 0;

      if (!v15)
      {
        v21 = messageCopy;
        AnalyticsSendEventLazy();
        connection = v21;
LABEL_25:
      }
    }
  }

  objc_sync_exit(v12);
}

uint64_t __56__CAReportingClient_sendMessage_category_type_reporter___block_invoke()
{
  result = os_variant_is_darwinos();
  [CAReportingClient sendMessage:category:type:reporter:]::gCAReportingIsDarwin = result;
  return result;
}

- (void)setServiceType:(unsigned __int16)type reporterID:(int64_t)d
{
  typeCopy = type;
  v36 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v26 = 136315650;
      v27 = "CAReportingClient.mm";
      v28 = 1024;
      v29 = 79;
      v30 = 2080;
      dCopy5 = "[CAReportingClient setServiceType:reporterID:]";
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v26, 0x1Cu);
    }
  }

  v8 = gReportingClient;
  objc_sync_enter(v8);
  v9 = *AA_ClientCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CAReportingUtilityGenerateServiceNameFromServiceType(typeCopy);
    v26 = 136315906;
    v27 = "CAReportingClient.mm";
    v28 = 1024;
    v29 = 1012;
    v30 = 2048;
    dCopy5 = d;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_296C89000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Set servicetype { careporter_id=%lli, serviceType=%@ }", &v26, 0x26u);
  }

  v11 = GetLocalCAReporterObjectFromClient(self, d);
  v12 = v11;
  if (v11)
  {
    serviceType = [v11 serviceType];
    if (serviceType != typeCopy)
    {
      [v12 cacheServiceType:typeCopy];
      perfObject = [v12 perfObject];
      [perfObject setServiceType:typeCopy];
    }

    v15 = [v12 started] ^ 1;
    if (serviceType == typeCopy)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      v20 = *AA_ClientCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = CAReportingUtilityGenerateServiceNameFromServiceType(typeCopy);
        v26 = 136316162;
        v27 = "CAReportingClient.mm";
        v28 = 1024;
        v29 = 1043;
        v30 = 2048;
        dCopy5 = d;
        v32 = 2112;
        v33 = v21;
        v34 = 1024;
        v35 = typeCopy;
        _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting new serviceType { careporter_id=%lli, servicename=%@, servicetype=%i }", &v26, 0x2Cu);
      }

      if (_os_feature_enabled_impl())
      {
        connection = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
        [_unboostingRemoteObjectProxy setWithServiceType:typeCopy for:d];
      }

      else
      {
        connection = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
        [_unboostingRemoteObjectProxy setServiceType:typeCopy reportingSession:d];
      }
    }

    else
    {
      v16 = *AA_ClientCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 136315650;
        v27 = "CAReportingClient.mm";
        v28 = 1024;
        v29 = 1029;
        v30 = 2048;
        dCopy5 = d;
        _os_log_impl(&dword_296C89000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping while reconfiguring service { careporter_id=%lli }", &v26, 0x1Cu);
      }

      [v12 stop];
      if (_os_feature_enabled_impl())
      {
        connection2 = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy2 = [connection2 _unboostingRemoteObjectProxy];
        [_unboostingRemoteObjectProxy2 setWithServiceType:typeCopy for:d];
      }

      else
      {
        connection2 = [(CAReportingClient *)self connection];
        _unboostingRemoteObjectProxy2 = [connection2 _unboostingRemoteObjectProxy];
        [_unboostingRemoteObjectProxy2 setServiceType:typeCopy reportingSession:d];
      }

      v24 = *AA_ClientCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = CAReportingUtilityGenerateServiceNameFromServiceType(typeCopy);
        v26 = 136316162;
        v27 = "CAReportingClient.mm";
        v28 = 1024;
        v29 = 1038;
        v30 = 2048;
        dCopy5 = d;
        v32 = 2112;
        v33 = v25;
        v34 = 1024;
        v35 = typeCopy;
        _os_log_impl(&dword_296C89000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting new serviceType { careporter_id=%lli, servicename=%@, servicetype=%i }", &v26, 0x2Cu);
      }

      [v12 start];
    }
  }

  else
  {
    v19 = *AA_ClientCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315650;
      v27 = "CAReportingClient.mm";
      v28 = 1024;
      v29 = 1016;
      v30 = 2048;
      dCopy5 = d;
      _os_log_impl(&dword_296C89000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reporter not found! { careporter_id=%lli }", &v26, 0x1Cu);
    }
  }

  objc_sync_exit(v8);
}

- (unsigned)getServiceTypeForReporterID:(int64_t)d
{
  v44 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CAReportingClient.mm";
      v38 = 1024;
      v39 = 79;
      v40 = 2080;
      v41 = "[CAReportingClient getServiceTypeForReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", buf, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  clientReporters = [(CAReportingClient *)self clientReporters];
  v8 = [MEMORY[0x29EDBA070] numberWithLongLong:d];
  v9 = [clientReporters objectForKey:v8];

  if (v9)
  {
    serviceType = [v9 serviceType];
  }

  else if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      connection = [(CAReportingClient *)self connection];
      caulk::xpc::sync_message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection);

      v12 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
      v13 = caulk::xpc::message<objc_object  {objcproto14ServerProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
      [v12 validateFor:d completion:v13];

      v14 = v43;
      if (v42)
      {
        v15 = *AA_ClientCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = v42;
          localizedDescription = [v16 localizedDescription];
          v29 = 136315906;
          v30 = "CAReportingClient.mm";
          v31 = 1024;
          v32 = 1084;
          v33 = 2112;
          v34 = localizedDescription;
          v35 = 2048;
          dCopy2 = d;
          _os_log_impl(&dword_296C89000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting service type { message=%@, careporter_id=%lli }", &v29, 0x26u);
        }
      }
    }

    else
    {
      connection2 = [(CAReportingClient *)self connection];
      caulk::xpc::sync_message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(buf, connection2);

      v19 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(buf);
      v20 = caulk::xpc::message<objc_object  {objcproto26CAReportingServiceProtocol}* {__strong},NSDictionary * {__strong}>::reply(buf);
      [v19 reporterID:d valid:v20];

      v14 = v43;
      if (v42)
      {
        v21 = *AA_ClientCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = v42;
          localizedDescription2 = [v22 localizedDescription];
          v29 = 136315906;
          v30 = "CAReportingClient.mm";
          v31 = 1024;
          v32 = 1094;
          v33 = 2112;
          v34 = localizedDescription2;
          v35 = 2048;
          dCopy2 = d;
          _os_log_impl(&dword_296C89000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting service type { message=%@, careporter_id=%lli }", &v29, 0x26u);
        }
      }
    }

    std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](&buf[8]);
    if (v14)
    {
      v24 = [v14 objectForKey:@"reporterID"];
      longLongValue = [v24 longLongValue];

      v26 = [v14 objectForKey:@"serviceType"];
      intValue = [v26 intValue];

      if (longLongValue)
      {
        serviceType = intValue;
      }

      else
      {
        serviceType = -1;
      }
    }

    else
    {
      serviceType = -1;
    }
  }

  else
  {
    serviceType = -1;
  }

  objc_sync_exit(v6);

  return serviceType;
}

- (void)setConfiguration:(id)configuration reporterID:(int64_t)d
{
  v16 = *MEMORY[0x29EDCA608];
  configurationCopy = configuration;
  if (_os_feature_enabled_impl())
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "CAReportingClient.mm";
      v12 = 1024;
      v13 = 79;
      v14 = 2080;
      v15 = "[CAReportingClient setConfiguration:reporterID:]";
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v10, 0x1Cu);
    }
  }

  v8 = gReportingClient;
  objc_sync_enter(v8);
  v9 = GetLocalCAReporterObjectFromClient(self, d);
  [v9 setConfiguration:configurationCopy];

  objc_sync_exit(v8);
}

- (id)getConfigurationForReporterID:(int64_t)d
{
  v18 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "CAReportingClient.mm";
      v14 = 1024;
      v15 = 79;
      v16 = 2080;
      v17 = "[CAReportingClient getConfigurationForReporterID:]";
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v12, 0x1Cu);
    }
  }

  v6 = gReportingClient;
  objc_sync_enter(v6);
  v7 = GetLocalCAReporterObjectFromClient(self, d);
  v8 = v7;
  if (v7)
  {
    configuration = [v7 configuration];
  }

  else
  {
    configuration = objc_opt_new();
  }

  v10 = configuration;

  objc_sync_exit(v6);

  return v10;
}

+ (id)getClient
{
  v12 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v2 = *AA_ClientCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "CAReportingClient.mm";
      v8 = 1024;
      v9 = 79;
      v10 = 2080;
      v11 = "+[CAReportingClient getClient]";
      _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v6, 0x1Cu);
    }
  }

  v3 = gReportingClient;
  objc_sync_enter(v3);
  v4 = gReportingClient;
  objc_sync_exit(v3);

  return v4;
}

+ (void)destroyClient
{
  v11 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v2 = *AA_ClientCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "CAReportingClient.mm";
      v7 = 1024;
      v8 = 79;
      v9 = 2080;
      v10 = "+[CAReportingClient destroyClient]";
      _os_log_impl(&dword_296C89000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v5, 0x1Cu);
    }
  }

  v3 = gReportingClient;
  objc_sync_enter(v3);
  v4 = gReportingClient;
  gReportingClient = 0;

  objc_sync_exit(v3);
}

- (void)destroyService
{
  v13 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "CAReportingClient.mm";
      v9 = 1024;
      v10 = 79;
      v11 = 2080;
      v12 = "[CAReportingClient destroyService]";
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Assertion failed: Unreachable Code. { function=%s }", &v7, 0x1Cu);
    }
  }

  v4 = gReportingClient;
  objc_sync_enter(v4);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    connection = [(CAReportingClient *)self connection];
    _unboostingRemoteObjectProxy = [connection _unboostingRemoteObjectProxy];
    [_unboostingRemoteObjectProxy killService];
  }

  objc_sync_exit(v4);
}

- (void)dealloc
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *AA_ClientCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "CAReportingClient.mm";
    v7 = 1024;
    v8 = 1182;
    _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroying client", buf, 0x12u);
  }

  v4.receiver = self;
  v4.super_class = CAReportingClient;
  [(CAReportingClient *)&v4 dealloc];
}

- (void)requestMessageWithID:category:type:callback:
{
  v33 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *a3;
  *a3 = 0;
  v6 = v4;
  if (v6)
  {
    v7 = *AA_ClientCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      v9 = *(self + 16);
      v19 = 136315906;
      v20 = "CAReportingClient.mm";
      v21 = 1024;
      v22 = 795;
      v23 = 2112;
      v24 = localizedDescription;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_296C89000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d requestMessageWithID error. { message=%@, careporter_id=%lli }", &v19, 0x26u);
    }

    (*(*(self + 8) + 16))();
  }

  else
  {
    v10 = *AA_ClientCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(self + 16);
      v12 = CAReportingUtilityCategoryString(*(self + 24));
      v13 = *(self + 24);
      v14 = CAReportingUtilityTypeString(*(self + 28));
      v15 = *(self + 28);
      v19 = 136316674;
      v20 = "CAReportingClient.mm";
      v21 = 1024;
      v22 = 800;
      v23 = 2048;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v27 = 1024;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 1024;
      v32 = v15;
      _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d requestMessageWithID: Received message. Invoking callback. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", &v19, 0x3Cu);
    }

    v16 = *(self + 8);
    v17 = *(v16 + 16);
    v18 = v5;
    v17(v16, v18);
  }
}

- (uint64_t)requestMessageWithID:category:type:callback:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end