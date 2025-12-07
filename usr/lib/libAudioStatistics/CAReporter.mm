@interface CAReporter
+ (void)sendSingleMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (CAReporter)initWithNewReporterID;
- (CAReporter)initWithReporterID:(int64_t)d serviceType:(unsigned __int16)type;
- (CAReporter)initWithSessionID:(unsigned int)d serviceType:(unsigned __int16)type;
- (NSDictionary)configuration;
- (int64_t)reporterID;
- (unsigned)serviceType;
- (void)cacheServiceType:(unsigned __int16)type;
- (void)dealloc;
- (void)requestMessageForCategory:(unsigned int)category type:(unsigned __int16)type callback:(id)callback;
- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type;
- (void)setConfiguration:(id)configuration;
- (void)setServiceType:(unsigned __int16)type;
- (void)start;
- (void)stop;
- (void)updateWithReporterID:(int64_t)d;
@end

@implementation CAReporter

- (void)start
{
  v18 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    [swiftReporter start];
  }

  else
  {
    v3 = gReportingClient;
    objc_sync_enter(v3);
    v4 = *AA_ClientCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v13 = "CAReportingClient.mm";
      v14 = 1024;
      v15 = 385;
      v16 = 2048;
      v17 = reporterID;
      _os_log_impl(&dword_296C89000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v6 = *AA_ClientCategory();
    v7 = v6;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = CAReportingUtilityRetrieveAppName(&self->_internalConfiguration->super);
      *buf = 138543362;
      v13 = v9;
      _os_signpost_emit_with_name_impl(&dword_296C89000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "CoreAudioReportingSession", "Starting Application=%{public}@", buf, 0xCu);
    }

    v10 = +[CAReportingClient sharedInstance];
    [v10 startReporter:self->_reporterID];

    objc_sync_exit(v3);
  }
}

- (void)stop
{
  v18 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    [swiftReporter stop];
  }

  else
  {
    v3 = gReportingClient;
    objc_sync_enter(v3);
    v4 = *AA_ClientCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v13 = "CAReportingClient.mm";
      v14 = 1024;
      v15 = 421;
      v16 = 2048;
      v17 = reporterID;
      _os_log_impl(&dword_296C89000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Stopping reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v6 = *AA_ClientCategory();
    v7 = v6;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = CAReportingUtilityRetrieveAppName(&self->_internalConfiguration->super);
      *buf = 138543362;
      v13 = v9;
      _os_signpost_emit_with_name_impl(&dword_296C89000, v7, OS_SIGNPOST_INTERVAL_END, signpostID, "CoreAudioReportingSession", "Stopping Application=%{public}@", buf, 0xCu);
    }

    v10 = +[CAReportingClient sharedInstance];
    [v10 stopReporter:{-[CAReporter reporterID](self, "reporterID")}];

    objc_sync_exit(v3);
  }
}

- (int64_t)reporterID
{
  if (!_os_feature_enabled_impl())
  {
    return self->_reporterID;
  }

  swiftReporter = [(CAReporter *)self swiftReporter];
  reporterID = [swiftReporter reporterID];

  return reporterID;
}

+ (void)sendSingleMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  typeCopy = type;
  v6 = *&category;
  messageCopy = message;
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x29EDBFAA8] sendSessionlessMessage:messageCopy category:v6 type:typeCopy];
  }

  else
  {
    v7 = gReportingClient;
    objc_sync_enter(v7);
    v8 = +[CAReportingClient sharedInstance];
    [v8 sendMessage:messageCopy category:v6 type:typeCopy reporter:0];

    objc_sync_exit(v7);
  }
}

- (CAReporter)initWithReporterID:(int64_t)d serviceType:(unsigned __int16)type
{
  typeCopy = type;
  v42[1] = *MEMORY[0x29EDCA608];
  if (!_os_feature_enabled_impl())
  {
    v10 = *AA_ClientCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = CAReportingUtilityGenerateServiceNameFromServiceType(typeCopy);
      *buf = 136316162;
      v36 = "CAReportingClient.mm";
      v37 = 1024;
      v38 = 145;
      v39 = 1024;
      *v40 = d;
      *&v40[4] = 2112;
      *&v40[6] = v11;
      *&v40[14] = 1024;
      *&v40[16] = typeCopy;
      _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d initWithReporterID: serviceType: { reporterID=%i, servicename=%@, servicetype=%i }", buf, 0x28u);
    }

    v12 = +[CAReportingClient sharedInstance];
    v13 = v12 == 0;

    if (!v13)
    {
      if (d)
      {
        v33.receiver = self;
        v33.super_class = CAReporter;
        v14 = [(CAReporter *)&v33 init];
        selfCopy = v14;
        if (v14)
        {
          v14->_reporterID = d;
          v15 = *AA_ClientCategory();
          *(selfCopy + 8) = os_signpost_id_make_with_pointer(v15, selfCopy + 16);

          *(selfCopy + 6) = typeCopy;
          *(selfCopy + 9) = 256;
          v16 = [CAReportingPerformanceObject alloc];
          v17 = MEMORY[0x29EDBA070];
          processInfo = [MEMORY[0x29EDBA0B0] processInfo];
          v19 = [v17 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
          v42[0] = v19;
          v20 = [MEMORY[0x29EDB8D80] arrayWithObjects:v42 count:1];
          v21 = [(CAReportingPerformanceObject *)v16 initWithProcessIdentifiers:v20];
          v22 = *(selfCopy + 7);
          *(selfCopy + 7) = v21;

          v23 = objc_opt_new();
          v24 = *(selfCopy + 5);
          *(selfCopy + 5) = v23;

          v25 = *AA_ClientCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = *(selfCopy + 2);
            v27 = CAReportingUtilityGenerateServiceNameFromServiceType(*(selfCopy + 6));
            v28 = *(selfCopy + 6);
            *buf = 136316162;
            v36 = "CAReportingClient.mm";
            v37 = 1024;
            v38 = 165;
            v39 = 2048;
            *v40 = v26;
            *&v40[8] = 2112;
            *&v40[10] = v27;
            *&v40[18] = 1024;
            v41 = v28;
            _os_log_impl(&dword_296C89000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating CAReporter { careporter_id=%lli, servicename=%@, servicetype=%i }", buf, 0x2Cu);
          }

          v29 = +[CAReportingClient sharedInstance];
          [v29 addReporter:selfCopy];
        }

        goto LABEL_13;
      }

      v31 = *AA_ClientCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v36 = "CAReportingClient.mm";
        v37 = 1024;
        v38 = 151;
        _os_log_impl(&dword_296C89000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d initWithReporterID: reporterID == CAReporterInvalidID, returning nil", buf, 0x12u);
      }
    }

    v30 = 0;
    selfCopy = self;
    goto LABEL_18;
  }

  v34.receiver = self;
  v34.super_class = CAReporter;
  selfCopy = [(CAReporter *)&v34 init];
  if (selfCopy)
  {
    v8 = [objc_alloc(MEMORY[0x29EDBFAA8]) initWithReporterID:d];
    v9 = *(selfCopy + 4);
    *(selfCopy + 4) = v8;

    if (!*(selfCopy + 4))
    {
      v30 = 0;
      goto LABEL_18;
    }

    *(selfCopy + 2) = d;
    *(selfCopy + 6) = typeCopy;
  }

LABEL_13:
  selfCopy = selfCopy;
  v30 = selfCopy;
LABEL_18:

  return v30;
}

- (CAReporter)initWithNewReporterID
{
  v21 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v14.receiver = self;
    v14.super_class = CAReporter;
    v3 = [(CAReporter *)&v14 init];
    if (v3)
    {
      initWithNewReporterID = [objc_alloc(MEMORY[0x29EDBFAA8]) initWithNewReporterID];
      swiftReporter = v3->_swiftReporter;
      v3->_swiftReporter = initWithNewReporterID;

      v6 = v3->_swiftReporter;
      if (!v6)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v3->_reporterID = [(AudioAnalyticsReporter *)v6 reporterID];
      v3->_serviceType = -1;
    }

    v3 = v3;
    v7 = v3;
  }

  else
  {
    v8 = gReportingClient;
    objc_sync_enter(v8);
    v9 = *AA_ClientCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 194;
      _os_log_impl(&dword_296C89000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d CAReporter initWithNewReporterID called", buf, 0x12u);
    }

    v10 = +[CAReportingClient sharedInstance];
    v11 = [v10 createReporterID:0];

    v12 = *AA_ClientCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 196;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d CAReporter initWithNewReporterID { newid=%lli }", buf, 0x1Cu);
    }

    v3 = [(CAReporter *)self initWithReporterID:v11 serviceType:0xFFFFLL];
    objc_sync_exit(v8);

    v7 = v3;
  }

LABEL_11:

  return v7;
}

- (CAReporter)initWithSessionID:(unsigned int)d serviceType:(unsigned __int16)type
{
  typeCopy = type;
  v5 = *&d;
  if (_os_feature_enabled_impl())
  {
    v15.receiver = self;
    v15.super_class = CAReporter;
    v7 = [(CAReporter *)&v15 init];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x29EDBFAA8]) initWithSessionID:v5 serviceType:typeCopy];
      swiftReporter = v7->_swiftReporter;
      v7->_swiftReporter = v8;

      v10 = v7->_swiftReporter;
      if (!v10)
      {
        v11 = 0;
        goto LABEL_7;
      }

      v7->_reporterID = [(AudioAnalyticsReporter *)v10 reporterID];
      v7->_serviceType = typeCopy;
    }

    v7 = v7;
    v11 = v7;
  }

  else
  {
    v12 = gReportingClient;
    objc_sync_enter(v12);
    v13 = +[CAReportingClient sharedInstance];
    v7 = -[CAReporter initWithReporterID:serviceType:](self, "initWithReporterID:serviceType:", [v13 createReporterID:v5], typeCopy);

    objc_sync_exit(v12);
    v11 = v7;
  }

LABEL_7:

  return v11;
}

- (void)updateWithReporterID:(int64_t)d
{
  if (_os_feature_enabled_impl())
  {
    obj = [(CAReporter *)self swiftReporter];
    [obj setReporterID:d];
  }

  else
  {
    if (!d)
    {
      return;
    }

    obj = gReportingClient;
    objc_sync_enter(obj);
    self->_reporterID = d;
    objc_sync_exit(obj);
  }
}

- (unsigned)serviceType
{
  if (!_os_feature_enabled_impl())
  {
    return self->_serviceType;
  }

  swiftReporter = [(CAReporter *)self swiftReporter];
  serviceType = [swiftReporter serviceType];

  return serviceType;
}

- (void)setServiceType:(unsigned __int16)type
{
  typeCopy = type;
  v22 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    [swiftReporter setServiceType:typeCopy];
  }

  else
  {
    v5 = gReportingClient;
    objc_sync_enter(v5);
    self->_serviceType = typeCopy;
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v8 = CAReportingUtilityGenerateServiceNameFromServiceType(self->_serviceType);
      serviceType = self->_serviceType;
      *buf = 136316162;
      v13 = "CAReportingClient.mm";
      v14 = 1024;
      v15 = 281;
      v16 = 2048;
      v17 = reporterID;
      v18 = 2112;
      v19 = v8;
      v20 = 1024;
      v21 = serviceType;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting service type { careporter_id=%lli, servicename=%@, servicetype=%i }", buf, 0x2Cu);
    }

    v10 = +[CAReportingClient sharedInstance];
    [v10 setServiceType:typeCopy reporterID:{-[CAReporter reporterID](self, "reporterID")}];

    objc_sync_exit(v5);
  }
}

- (void)cacheServiceType:(unsigned __int16)type
{
  typeCopy = type;
  v21 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    obj = [(CAReporter *)self swiftReporter];
    [obj setServiceType:typeCopy];
  }

  else
  {
    obja = gReportingClient;
    objc_sync_enter(obja);
    self->_serviceType = typeCopy;
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v7 = CAReportingUtilityGenerateServiceNameFromServiceType(self->_serviceType);
      serviceType = self->_serviceType;
      *buf = 136316162;
      v12 = "CAReportingClient.mm";
      v13 = 1024;
      v14 = 298;
      v15 = 2048;
      v16 = reporterID;
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = serviceType;
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Caching service type { careporter_id=%lli, servicename=%@, servicetype=%i }", buf, 0x2Cu);
    }

    objc_sync_exit(obja);
  }
}

- (void)setConfiguration:(id)configuration
{
  v33 = *MEMORY[0x29EDCA608];
  configurationCopy = configuration;
  if (!_os_feature_enabled_impl())
  {
    v6 = gReportingClient;
    objc_sync_enter(v6);
    if (self->_removedByClient || !self->_reporterID)
    {
      v20 = *AA_ClientCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315394;
        v26 = "CAReportingClient.mm";
        v27 = 1024;
        v28 = 316;
        v21 = "%25s:%-5d Unexpected state, configuration being set on reporter that has been removed or is invalid!";
LABEL_20:
        _os_log_impl(&dword_296C89000, v20, OS_LOG_TYPE_DEFAULT, v21, &v25, 0x12u);
      }
    }

    else
    {
      if (configurationCopy && [configurationCopy count])
      {
        v7 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:configurationCopy];
        v8 = [v7 objectForKeyedSubscript:@"MXHostApplicationDisplayID"];

        if (v8)
        {
          v9 = [v7 objectForKeyedSubscript:@"MXHostApplicationDisplayID"];
          [v7 setObject:v9 forKeyedSubscript:@"HostApplicationDisplayID"];
        }

        if (self->_internalConfiguration)
        {
          internalConfiguration = [(CAReporter *)self internalConfiguration];
          [internalConfiguration addEntriesFromDictionary:v7];

          perfObject = [(CAReporter *)self perfObject];
          [perfObject setConfiguration:self->_internalConfiguration];

          v12 = *AA_ClientCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            reporterID = self->_reporterID;
            v25 = 136315906;
            v26 = "CAReportingClient.mm";
            v27 = 1024;
            v28 = 341;
            v29 = 2048;
            v30 = reporterID;
            v31 = 2112;
            v32 = configurationCopy;
            _os_log_impl(&dword_296C89000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting configuration { careporter_id=%lli, newConfiguration=%@ }", &v25, 0x26u);
          }

          v14 = +[CAReportingClient sharedInstance];
          connection = [v14 connection];
          v16 = connection == 0;

          if (v16)
          {
            v23 = *AA_ClientCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              reporterID = [(CAReporter *)self reporterID];
              v25 = 136315650;
              v26 = "CAReportingClient.mm";
              v27 = 1024;
              v28 = 344;
              v29 = 2048;
              v30 = reporterID;
              _os_log_impl(&dword_296C89000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CAReportingClient XPC connection is nil { careporter_id=%lli }", &v25, 0x1Cu);
            }
          }

          else
          {
            if (_os_feature_enabled_impl())
            {
              v17 = +[CAReportingClient sharedInstance];
              connection2 = [v17 connection];
              _unboostingRemoteObjectProxy = [connection2 _unboostingRemoteObjectProxy];
              [_unboostingRemoteObjectProxy setWithConfiguration:v7 for:{-[CAReporter reporterID](self, "reporterID")}];
            }

            else
            {
              v17 = +[CAReportingClient sharedInstance];
              connection2 = [v17 connection];
              _unboostingRemoteObjectProxy = [connection2 _unboostingRemoteObjectProxy];
              [_unboostingRemoteObjectProxy setConfiguration:v7 forReporterID:{-[CAReporter reporterID](self, "reporterID")}];
            }
          }
        }

        else
        {
          v22 = *AA_ClientCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 136315394;
            v26 = "CAReportingClient.mm";
            v27 = 1024;
            v28 = 335;
            _os_log_impl(&dword_296C89000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d internalConfiguration found to be nil", &v25, 0x12u);
          }
        }

        goto LABEL_28;
      }

      v20 = *AA_ClientCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315394;
        v26 = "CAReportingClient.mm";
        v27 = 1024;
        v28 = 322;
        v21 = "%25s:%-5d Incoming configuration nil or empty. Ignoring.";
        goto LABEL_20;
      }
    }

LABEL_28:
    objc_sync_exit(v6);

    goto LABEL_29;
  }

  swiftReporter = [(CAReporter *)self swiftReporter];
  [swiftReporter setConfiguration:configurationCopy];

LABEL_29:
}

- (NSDictionary)configuration
{
  v15 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    configuration = [swiftReporter configuration];
  }

  else
  {
    v5 = gReportingClient;
    objc_sync_enter(v5);
    v6 = *AA_ClientCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v9 = 136315650;
      v10 = "CAReportingClient.mm";
      v11 = 1024;
      v12 = 368;
      v13 = 2048;
      v14 = reporterID;
      _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Getting configuration { careporter_id=%lli }", &v9, 0x1Cu);
    }

    configuration = [MEMORY[0x29EDB8DC0] dictionaryWithDictionary:self->_internalConfiguration];
    objc_sync_exit(v5);
  }

  return configuration;
}

- (void)sendMessage:(id)message category:(unsigned int)category type:(unsigned __int16)type
{
  typeCopy = type;
  v6 = *&category;
  v20 = *MEMORY[0x29EDCA608];
  messageCopy = message;
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    [swiftReporter sendMessage:messageCopy category:v6 type:typeCopy];
  }

  else
  {
    v10 = gReportingClient;
    objc_sync_enter(v10);
    v11 = *AA_ClientCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v14 = 136315650;
      v15 = "CAReportingClient.mm";
      v16 = 1024;
      v17 = 402;
      v18 = 2048;
      v19 = reporterID;
      _os_log_impl(&dword_296C89000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Sending message { careporter_id=%lli }", &v14, 0x1Cu);
    }

    v13 = +[CAReportingClient sharedInstance];
    [v13 sendMessage:messageCopy category:v6 type:typeCopy reporter:self->_reporterID];

    objc_sync_exit(v10);
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x29EDCA608];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = *AA_ClientCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      *buf = 136315650;
      v8 = "CAReportingClient.mm";
      v9 = 1024;
      v10 = 436;
      v11 = 2048;
      v12 = reporterID;
      _os_log_impl(&dword_296C89000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deallocing reporter { careporter_id=%lli }", buf, 0x1Cu);
    }

    v5 = +[CAReportingClient sharedInstance];
    [v5 destroyReporterWithID:self->_reporterID];
  }

  v6.receiver = self;
  v6.super_class = CAReporter;
  [(CAReporter *)&v6 dealloc];
}

- (void)requestMessageForCategory:(unsigned int)category type:(unsigned __int16)type callback:(id)callback
{
  typeCopy = type;
  v6 = *&category;
  v29 = *MEMORY[0x29EDCA608];
  callbackCopy = callback;
  if (_os_feature_enabled_impl())
  {
    swiftReporter = [(CAReporter *)self swiftReporter];
    [swiftReporter requestMessageForCategory:v6 type:typeCopy callback:callbackCopy];
  }

  else
  {
    v10 = *AA_ClientCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      reporterID = self->_reporterID;
      v12 = CAReportingUtilityCategoryString(v6);
      v13 = CAReportingUtilityTypeString(typeCopy);
      v15 = 136316674;
      v16 = "CAReportingClient.mm";
      v17 = 1024;
      v18 = 455;
      v19 = 2048;
      v20 = reporterID;
      v21 = 2112;
      v22 = v12;
      v23 = 1024;
      v24 = v6;
      v25 = 2112;
      v26 = v13;
      v27 = 1024;
      v28 = typeCopy;
      _os_log_impl(&dword_296C89000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Requesting messages from reporter. { careporter_id=%lli, eventcategoryname=%@, eventcategory=%i, servicename=%@, servicetype=%i }", &v15, 0x3Cu);
    }

    v14 = +[CAReportingClient sharedInstance];
    [v14 requestMessageWithID:self->_reporterID category:v6 type:typeCopy callback:callbackCopy];
  }
}

@end