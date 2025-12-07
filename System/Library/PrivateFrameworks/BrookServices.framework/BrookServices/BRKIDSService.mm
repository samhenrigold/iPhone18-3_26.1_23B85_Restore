@interface BRKIDSService
+ (id)sharedInstance;
- (BRKIDSService)init;
- (BRKIDSServiceCompanionContextManagerDelegate)companionContextManagerDelegate;
- (BRKIDSServiceCompanionDataCollectionDelegate)dataCollectionDelegate;
- (BRKIDSServiceContextManagerDelegate)contextManagerDelegate;
- (id)sendProtobuf:(id)protobuf type:(unsigned __int16)type priority:(int64_t)priority completionHandler:(id)handler withTimeout:(double)timeout;
- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(int64_t)priority completionHandler:(id)handler withTimeout:(double)timeout;
- (void)locationManagerDidEnterRegion:(id)region;
- (void)locationManagerDidExitRegion:(id)region;
- (void)locationManagerStartMonitoringForRegion:(id)region;
- (void)locationManagerStopMonitoringForRegion:(id)region;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation BRKIDSService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BRKIDSService sharedInstance];
  }

  v3 = sharedInstance_idsService;

  return v3;
}

uint64_t __31__BRKIDSService_sharedInstance__block_invoke()
{
  sharedInstance_idsService = objc_alloc_init(BRKIDSService);

  return MEMORY[0x2821F96F8]();
}

- (BRKIDSService)init
{
  v9.receiver = self;
  v9.super_class = BRKIDSService;
  v2 = [(BRKIDSService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.brook.ids", 0, v3);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.brook"];
    idsService = v2->_idsService;
    v2->_idsService = v6;

    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerDidEnterRegion_ forIncomingRequestsOfType:5];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerDidExitRegion_ forIncomingRequestsOfType:6];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerStartMonitoringForRegion_ forIncomingRequestsOfType:3];
    [(IDSService *)v2->_idsService setProtobufAction:sel_locationManagerStopMonitoringForRegion_ forIncomingRequestsOfType:4];
    [(IDSService *)v2->_idsService addDelegate:v2 queue:v2->_idsQueue];
  }

  return v2;
}

- (void)locationManagerDidEnterRegion:(id)region
{
  v27 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = [BRKIDSMessage alloc];
  data = [regionCopy data];

  v7 = [(BRKIDSMessage *)v5 initWithData:data];
  v8 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[BRKIDSService locationManagerDidEnterRegion:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", &v23, 0x16u);
  }

  [(BRKIDSMessage *)v7 latitude];
  v10 = v9;
  [(BRKIDSMessage *)v7 longitude];
  v28 = CLLocationCoordinate2DMake(v10, v11);
  latitude = v28.latitude;
  longitude = v28.longitude;
  if (CLLocationCoordinate2DIsValid(v28) && [(BRKIDSMessage *)v7 hasIdentifier]&& [(BRKIDSMessage *)v7 hasRadius])
  {
    v14 = objc_alloc(MEMORY[0x277CBFBC8]);
    [(BRKIDSMessage *)v7 radius];
    v16 = v15;
    identifier = [(BRKIDSMessage *)v7 identifier];
    v18 = [v14 initWithCenter:identifier radius:latitude identifier:{longitude, v16}];

    v19 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[BRKIDSService locationManagerDidEnterRegion:]";
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_241EE4000, v19, OS_LOG_TYPE_DEFAULT, "%s locationManagerDidEnterRegion: %@", &v23, 0x16u);
    }

    contextManagerDelegate = [(BRKIDSService *)self contextManagerDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      contextManagerDelegate2 = [(BRKIDSService *)self contextManagerDelegate];
      [contextManagerDelegate2 didEnter:self forRegion:v18];
    }
  }
}

- (void)locationManagerDidExitRegion:(id)region
{
  v13 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v4 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BRKIDSService locationManagerDidExitRegion:]";
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v5 = [BRKIDSMessage alloc];
  data = [regionCopy data];

  v7 = [(BRKIDSMessage *)v5 initWithData:data];
  [(BRKIDSMessage *)v7 latitude];
  v9 = v8;
  [(BRKIDSMessage *)v7 longitude];
  v14 = CLLocationCoordinate2DMake(v9, v10);
  if (CLLocationCoordinate2DIsValid(v14))
  {
    [(BRKIDSMessage *)v7 hasIdentifier];
  }
}

- (void)locationManagerStartMonitoringForRegion:(id)region
{
  v27 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v23, 0xCu);
  }

  v6 = [BRKIDSMessage alloc];
  data = [regionCopy data];

  v8 = [(BRKIDSMessage *)v6 initWithData:data];
  [(BRKIDSMessage *)v8 latitude];
  v10 = v9;
  [(BRKIDSMessage *)v8 longitude];
  v28 = CLLocationCoordinate2DMake(v10, v11);
  latitude = v28.latitude;
  longitude = v28.longitude;
  if (CLLocationCoordinate2DIsValid(v28) && [(BRKIDSMessage *)v8 hasIdentifier])
  {
    v14 = objc_alloc(MEMORY[0x277CBFBC8]);
    [(BRKIDSMessage *)v8 radius];
    v16 = v15;
    identifier = [(BRKIDSMessage *)v8 identifier];
    v18 = [v14 initWithCenter:identifier radius:latitude identifier:{longitude, v16}];

    v19 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_241EE4000, v19, OS_LOG_TYPE_DEFAULT, "%s startMonitoringForRegion: %@", &v23, 0x16u);
    }

    companionContextManagerDelegate = [(BRKIDSService *)self companionContextManagerDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      companionContextManagerDelegate2 = [(BRKIDSService *)self companionContextManagerDelegate];
      [companionContextManagerDelegate2 startMonitoring:self forRegion:v18];
    }
  }

  else
  {
    v18 = BRKLoggingObjectForDomain(11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[BRKIDSService locationManagerStartMonitoringForRegion:]";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_241EE4000, v18, OS_LOG_TYPE_DEFAULT, "%s error startMonitoringForRegion: n/a message: %@", &v23, 0x16u);
    }
  }
}

- (void)locationManagerStopMonitoringForRegion:(id)region
{
  v19 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  v6 = [BRKIDSMessage alloc];
  data = [regionCopy data];

  v8 = [(BRKIDSMessage *)v6 initWithData:data];
  LODWORD(data) = [(BRKIDSMessage *)v8 hasIdentifier];
  companionContextManagerDelegate2 = BRKLoggingObjectForDomain(11);
  v10 = os_log_type_enabled(companionContextManagerDelegate2, OS_LOG_TYPE_DEFAULT);
  if (!data)
  {
    if (v10)
    {
      v15 = 136315394;
      v16 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_241EE4000, companionContextManagerDelegate2, OS_LOG_TYPE_DEFAULT, "%s error stopMonitoringForRegion: n/a message: %@", &v15, 0x16u);
    }

    goto LABEL_10;
  }

  if (v10)
  {
    identifier = [(BRKIDSMessage *)v8 identifier];
    v15 = 136315394;
    v16 = "[BRKIDSService locationManagerStopMonitoringForRegion:]";
    v17 = 2112;
    v18 = identifier;
    _os_log_impl(&dword_241EE4000, companionContextManagerDelegate2, OS_LOG_TYPE_DEFAULT, "%s stopMonitoringForRegionIdentifier: %@", &v15, 0x16u);
  }

  companionContextManagerDelegate = [(BRKIDSService *)self companionContextManagerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    companionContextManagerDelegate2 = [(BRKIDSService *)self companionContextManagerDelegate];
    identifier2 = [(BRKIDSMessage *)v8 identifier];
    [companionContextManagerDelegate2 stopMonitoring:self forRegionIdentifier:identifier2];

LABEL_10:
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = changedCopy;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service accounts changed: %@", &v8, 0x16u);
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = changedCopy;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service devices changed: %@", &v8, 0x16u);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v15 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 138544642;
    v19 = v17;
    v20 = 2112;
    v21 = serviceCopy;
    v22 = 2112;
    v23 = accountCopy;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 1024;
    v27 = successCopy;
    v28 = 2112;
    v29 = errorCopy;
    _os_log_impl(&dword_241EE4000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service did send with success: %@ %@ %@ %d %@", &v18, 0x3Au);
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  v8 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BRKIDSService service:account:incomingUnhandledProtobuf:fromID:context:]";
    v11 = 2112;
    v12 = protobufCopy;
    _os_log_impl(&dword_241EE4000, v8, OS_LOG_TYPE_DEFAULT, "%s incomingUnhandledProtobuf: %@", &v9, 0x16u);
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  v17 = BRKLoggingObjectForDomain(11);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v23 = 138544642;
    v24 = v19;
    v25 = 2112;
    v26 = serviceCopy;
    v27 = 2112;
    v28 = accountCopy;
    v29 = 2112;
    v30 = lCopy;
    v31 = 2112;
    v32 = dCopy;
    v33 = 2112;
    v34 = contextCopy;
    _os_log_impl(&dword_241EE4000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: IDS service did receive url: %@ %@ %@ %@ %@", &v23, 0x3Eu);
  }

  dataCollectionDelegate = [(BRKIDSService *)self dataCollectionDelegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    dataCollectionDelegate2 = [(BRKIDSService *)self dataCollectionDelegate];
    [dataCollectionDelegate2 service:self didReceiveResourceURL:lCopy];
  }
}

- (id)sendProtobuf:(id)protobuf type:(unsigned __int16)type priority:(int64_t)priority completionHandler:(id)handler withTimeout:(double)timeout
{
  typeCopy = type;
  v45[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v44 = *MEMORY[0x277D18650];
  v13 = MEMORY[0x277CCABB0];
  protobufCopy = protobuf;
  v15 = [v13 numberWithDouble:timeout];
  v45[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

  v17 = objc_alloc(MEMORY[0x277D189F0]);
  data = [protobufCopy data];

  v19 = [v17 initWithProtobufData:data type:typeCopy isResponse:0];
  idsService = self->_idsService;
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v36 = 0;
  v37 = 0;
  LODWORD(protobufCopy) = [(IDSService *)idsService sendProtobuf:v19 toDestinations:v21 priority:priority options:v16 identifier:&v37 error:&v36];
  v22 = v37;
  v23 = v36;

  v24 = BRKLoggingObjectForDomain(11);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (protobufCopy)
  {
    if (v25)
    {
      data2 = [v19 data];
      v27 = [data2 length];
      context = [v19 context];
      outgoingResponseIdentifier = [context outgoingResponseIdentifier];
      *buf = 134218498;
      v39 = v27;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = outgoingResponseIdentifier;
      _os_log_impl(&dword_241EE4000, v24, OS_LOG_TYPE_DEFAULT, "IDS Sent: %ld bytes, identifier %@ (for %@)", buf, 0x20u);
    }
  }

  else if (v25)
  {
    data3 = [v19 data];
    v31 = [data3 length];
    context2 = [v19 context];
    outgoingResponseIdentifier2 = [context2 outgoingResponseIdentifier];
    *buf = 134218498;
    v39 = v31;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = outgoingResponseIdentifier2;
    _os_log_impl(&dword_241EE4000, v24, OS_LOG_TYPE_DEFAULT, "IDS Failed to Send: %ld bytes, identifier %@ (for %@)", buf, 0x20u);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v23);
  }

  v34 = v22;

  return v22;
}

- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(int64_t)priority completionHandler:(id)handler withTimeout:(double)timeout
{
  v36[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v35 = *MEMORY[0x277D18650];
  v14 = MEMORY[0x277CCABB0];
  metadataCopy = metadata;
  v16 = [v14 numberWithDouble:timeout];
  v36[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];

  idsService = self->_idsService;
  if (metadataCopy)
  {
    v19 = metadataCopy;
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v20 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v29 = 0;
  v30 = 0;
  v21 = [(IDSService *)idsService sendResourceAtURL:lCopy metadata:v19 toDestinations:v20 priority:priority options:v17 identifier:&v30 error:&v29];

  v22 = v30;
  v23 = v29;

  v24 = BRKLoggingObjectForDomain(11);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v32 = lCopy;
    v33 = 2112;
    v34 = v22;
    v26 = "IDS Sent: %@ resource, identifier %@";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v32 = lCopy;
    v33 = 2112;
    v34 = v22;
    v26 = "IDS Failed to Send: %@ resource, identifier %@";
  }

  _os_log_impl(&dword_241EE4000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
LABEL_10:

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v23);
  }

  v27 = v22;

  return v22;
}

- (BRKIDSServiceContextManagerDelegate)contextManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contextManagerDelegate);

  return WeakRetained;
}

- (BRKIDSServiceCompanionContextManagerDelegate)companionContextManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_companionContextManagerDelegate);

  return WeakRetained;
}

- (BRKIDSServiceCompanionDataCollectionDelegate)dataCollectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCollectionDelegate);

  return WeakRetained;
}

@end