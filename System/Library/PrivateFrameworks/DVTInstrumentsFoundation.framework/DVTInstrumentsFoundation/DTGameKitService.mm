@interface DTGameKitService
- (DTGameKitService)initWithChannel:(id)channel;
- (void)messageReceived:(id)received;
@end

@implementation DTGameKitService

- (DTGameKitService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v14.receiver = self;
  v14.super_class = DTGameKitService;
  v5 = [(DTXService *)&v14 initWithChannel:channelCopy];
  if (v5)
  {
    v6 = +[GCFGameServicesClient daemonProxy];
    client = v5->_client;
    v5->_client = v6;

    v8 = objc_alloc_init(DTServiceHubDaemonProxyUpdateDelegate);
    daemonProxyUpdateDelegate = v5->_daemonProxyUpdateDelegate;
    v5->_daemonProxyUpdateDelegate = v8;

    [(DTServiceHubDaemonProxyUpdateDelegate *)v5->_daemonProxyUpdateDelegate setChannel:channelCopy];
    [(GCFGameServicesClient *)v5->_client setDataUpdateDelegate:v5->_daemonProxyUpdateDelegate];
    objc_initWeak(&location, v5);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FE24D4;
    v11[3] = &unk_278EF1238;
    objc_copyWeak(&v12, &location);
    [channelCopy registerDisconnectHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)messageReceived:(id)received
{
  v27 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v24 = objc_opt_class();
    v25 = 2114;
    v26 = receivedCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[%{public}@] Message received: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  if (*MEMORY[0x277D03698] != receivedCopy)
  {
    v5 = [receivedCopy stringForMessageKey:@"command"];
    data = [receivedCopy data];
    if ([v5 isEqualToString:@"gameServicesRemoteCall"])
    {
      if (data)
      {
        client = self->_client;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_247FE2874;
        v20[3] = &unk_278EF3C90;
        v21 = receivedCopy;
        objc_copyWeak(&v22, buf);
        [(GCFGameServicesClient *)client gameServicesRemoteCall:data completionHandler:v20];
        objc_destroyWeak(&v22);
        v8 = v21;
LABEL_9:
      }
    }

    else if ([v5 isEqualToString:@"enableDebugMode"])
    {
      v19 = 0;
      v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:1 error:&v19];
      v10 = v19;
      v14 = [v9 objectForKeyedSubscript:@"value"];
      v11 = [v9 objectForKeyedSubscript:@"bundleID"];
      v12 = self->_client;
      bOOLValue = [v14 BOOLValue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_247FE295C;
      v15[3] = &unk_278EF3CB8;
      v8 = v10;
      v16 = v8;
      v17 = receivedCopy;
      objc_copyWeak(&v18, buf);
      [(GCFGameServicesClient *)v12 setDebugMode:bOOLValue bundleID:v11 reply:v15];
      objc_destroyWeak(&v18);

      goto LABEL_9;
    }
  }

  objc_destroyWeak(buf);
}

@end