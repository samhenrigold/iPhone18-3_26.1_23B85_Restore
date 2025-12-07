@interface PCCIDSEndpoint
- (BOOL)isDeviceNearby:(id)nearby;
- (PCCIDSEndpoint)init;
- (id)deviceIds;
- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error;
- (id)send:(id)send message:(id)message error:(id *)error;
- (id)serviceByDeviceID:(id)d;
- (id)startService:(id)service;
- (void)runWithDelegate:(id)delegate;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation PCCIDSEndpoint

- (PCCIDSEndpoint)init
{
  if (objc_opt_class())
  {
    v7.receiver = self;
    v7.super_class = PCCIDSEndpoint;
    v3 = [(PCCIDSEndpoint *)&v7 init];
    if (v3)
    {
      v4 = objc_opt_new();
      serviceByDevice = v3->_serviceByDevice;
      v3->_serviceByDevice = v4;
    }
  }

  else
  {

    return 0;
  }

  return v3;
}

- (void)runWithDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = PCCIDSEndpoint;
  [(PCCEndpoint *)&v9 runWithDelegate:delegate];
  v4 = [(PCCIDSEndpoint *)self startService:@"com.apple.private.alloy.proxiedcrashcopier"];
  pairedWatchService = self->_pairedWatchService;
  self->_pairedWatchService = v4;

  v6 = [(PCCIDSEndpoint *)self startService:@"com.apple.private.alloy.proxiedcrashcopier.icloud"];
  homeDeviceService = self->_homeDeviceService;
  self->_homeDeviceService = v6;

  deviceIds = [(PCCIDSEndpoint *)self deviceIds];
  if (*&self->_pairedWatchService == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [PCCIDSEndpoint runWithDelegate:];
  }
}

- (id)startService:(id)service
{
  v18 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = [objc_alloc(MEMORY[0x277D18770]) initWithService:serviceCopy];
  accounts = [v5 accounts];
  v7 = [accounts count];

  if (v7)
  {
    [v5 addDelegate:self queue:MEMORY[0x277D85CD0]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      accounts2 = [v5 accounts];
      v9 = [accounts2 count];
      devices = [v5 devices];
      v12 = 138412802;
      v13 = serviceCopy;
      v14 = 1024;
      v15 = v9;
      v16 = 1024;
      v17 = [devices count];
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IDS(%@) connected with %d accounts and %d devices", &v12, 0x18u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = serviceCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IDS(%@) connected with no accounts.", &v12, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)deviceIds
{
  v89 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_serviceByDevice removeAllObjects];
  if (*&self->_pairedWatchService == 0)
  {
    v44 = 0;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    devices = [(IDSService *)self->_pairedWatchService devices];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " # Name/DeviceID        Model                Build      Near Pair Cntd Actv iCld", buf, 2u);
    }

    selfCopy = self;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v71 = @"com.apple.private.alloy.proxiedcrashcopier";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@:", buf, 0xCu);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = devices;
    v4 = array;
    v55 = [obj countByEnumeratingWithState:&v63 objects:v88 count:16];
    if (v55)
    {
      v52 = *v64;
      v45 = 138412290;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v64 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v63 + 1) + 8 * i);
          v7 = IDSCopyIDForDevice();
          v8 = [v4 count];
          v87[0] = v7;
          v86[0] = @"id";
          v86[1] = @"name";
          name = [v6 name];
          v87[1] = name;
          v86[2] = @"model";
          modelIdentifier = [v6 modelIdentifier];
          v87[2] = modelIdentifier;
          v86[3] = @"build";
          productBuildVersion = [v6 productBuildVersion];
          v87[3] = productBuildVersion;
          v86[4] = @"nearby";
          v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isNearby")}];
          v86[5] = @"service";
          v87[4] = v12;
          v87[5] = @"com.apple.private.alloy.proxiedcrashcopier";
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:6];
          [v4 addObject:v13];

          [(NSMutableDictionary *)selfCopy->_serviceByDevice setObject:selfCopy->_pairedWatchService forKeyedSubscript:v7];
          v14 = MEMORY[0x277D86220];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v6 name];
            modelIdentifier2 = [v6 modelIdentifier];
            productBuildVersion2 = [v6 productBuildVersion];
            if ([v6 isNearby])
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @" NO";
            }

            if ([v6 isLocallyPaired])
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @" NO";
            }

            if ([v6 isConnected])
            {
              v18 = @"YES";
            }

            else
            {
              v18 = @" NO";
            }

            if ([v6 isActive])
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @" NO";
            }

            isCloudConnected = [v6 isCloudConnected];
            *buf = 67111170;
            if (isCloudConnected)
            {
              v21 = @"YES";
            }

            else
            {
              v21 = @" NO";
            }

            *v71 = v8 + 1;
            *&v71[4] = 2112;
            *&v71[6] = name2;
            v72 = 2112;
            v73 = modelIdentifier2;
            v74 = 2112;
            v75 = productBuildVersion2;
            v76 = 2112;
            v77 = v16;
            v78 = 2112;
            v79 = v17;
            v80 = 2112;
            v81 = v18;
            v4 = array;
            v82 = 2112;
            v83 = v19;
            v14 = MEMORY[0x277D86220];
            v84 = 2112;
            v85 = v21;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%2d %-20@ %-20@ %-10@ %@  %@  %@  %@  %@", buf, 0x58u);
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v45;
            *v71 = v7;
            _os_log_impl(&dword_25D12D000, v14, OS_LOG_TYPE_DEFAULT, "   %@", buf, 0xCu);
          }
        }

        v55 = [obj countByEnumeratingWithState:&v63 objects:v88 count:16];
      }

      while (v55);
    }

    v22 = selfCopy;
    devices2 = [(IDSService *)selfCopy->_homeDeviceService devices];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v71 = @"com.apple.private.alloy.proxiedcrashcopier.icloud";
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@:", buf, 0xCu);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v48 = devices2;
    v54 = [v48 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v54)
    {
      v53 = *v60;
      v24 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v60 != v53)
          {
            objc_enumerationMutation(v48);
          }

          v26 = *(*(&v59 + 1) + 8 * j);
          v27 = IDSCopyIDForDevice();
          v28 = [array count];
          v29 = [(NSMutableDictionary *)v22->_serviceByDevice objectForKeyedSubscript:v27];

          if (v29)
          {
            v56 = -1;
          }

          else
          {
            v56 = v28 + 1;
            v68[0] = v27;
            v67[0] = @"id";
            v67[1] = @"name";
            name3 = [v26 name];
            v68[1] = name3;
            v67[2] = @"model";
            modelIdentifier3 = [v26 modelIdentifier];
            v68[2] = modelIdentifier3;
            v67[3] = @"build";
            productBuildVersion3 = [v26 productBuildVersion];
            v68[3] = productBuildVersion3;
            v67[4] = @"nearby";
            v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v26, "isNearby")}];
            v67[5] = @"service";
            v68[4] = v33;
            v68[5] = @"com.apple.private.alloy.proxiedcrashcopier.icloud";
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:6];
            v35 = v34 = v22;
            [array addObject:v35];

            v22 = v34;
            v24 = MEMORY[0x277D86220];

            [(NSMutableDictionary *)v22->_serviceByDevice setObject:v22->_homeDeviceService forKeyedSubscript:v27];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            name4 = [v26 name];
            modelIdentifier4 = [v26 modelIdentifier];
            productBuildVersion4 = [v26 productBuildVersion];
            if ([v26 isNearby])
            {
              v37 = @"YES";
            }

            else
            {
              v37 = @" NO";
            }

            if ([v26 isLocallyPaired])
            {
              v38 = @"YES";
            }

            else
            {
              v38 = @" NO";
            }

            if ([v26 isConnected])
            {
              v39 = @"YES";
            }

            else
            {
              v39 = @" NO";
            }

            if ([v26 isActive])
            {
              v40 = @"YES";
            }

            else
            {
              v40 = @" NO";
            }

            isCloudConnected2 = [v26 isCloudConnected];
            *buf = 67111170;
            if (isCloudConnected2)
            {
              v42 = @"YES";
            }

            else
            {
              v42 = @" NO";
            }

            *v71 = v56;
            *&v71[4] = 2112;
            *&v71[6] = name4;
            v72 = 2112;
            v73 = modelIdentifier4;
            v74 = 2112;
            v75 = productBuildVersion4;
            v76 = 2112;
            v77 = v37;
            v78 = 2112;
            v79 = v38;
            v80 = 2112;
            v81 = v39;
            v82 = 2112;
            v83 = v40;
            v24 = MEMORY[0x277D86220];
            v22 = selfCopy;
            v84 = 2112;
            v85 = v42;
            _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%2d %-20@ %-20@ %-10@ %@  %@  %@  %@  %@", buf, 0x58u);
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v71 = v27;
            _os_log_impl(&dword_25D12D000, v24, OS_LOG_TYPE_DEFAULT, "   %@", buf, 0xCu);
          }
        }

        v54 = [v48 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v54);
    }

    v44 = array;
  }

  return v44;
}

- (id)serviceByDeviceID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && ![dCopy isEqualToString:*MEMORY[0x277D187E0]])
  {
    v6 = [(NSMutableDictionary *)self->_serviceByDevice objectForKeyedSubscript:v5];
  }

  else
  {
    v6 = self->_pairedWatchService;
  }

  v7 = v6;
  homeDeviceService = v6;
  if (!v6)
  {
    homeDeviceService = self->_homeDeviceService;
  }

  v9 = homeDeviceService;

  return homeDeviceService;
}

- (BOOL)isDeviceNearby:(id)nearby
{
  v20 = *MEMORY[0x277D85DE8];
  nearbyCopy = nearby;
  v5 = [(PCCIDSEndpoint *)self serviceByDeviceID:nearbyCopy];
  v6 = v5;
  if (v5)
  {
    [v5 devices];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (nearbyCopy)
          {
            uniqueID = [v11 uniqueID];
            v13 = [nearbyCopy isEqualToString:uniqueID];

            if (v13)
            {
              goto LABEL_14;
            }
          }

          else if ([v11 isDefaultPairedDevice])
          {
LABEL_14:
            LOBYTE(v8) = [v11 isNearby];
            goto LABEL_15;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)send:(id)send message:(id)message error:(id *)error
{
  v31[2] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  messageCopy = message;
  v10 = [(PCCIDSEndpoint *)self serviceByDeviceID:sendCopy];
  if (v10)
  {
    if (sendCopy)
    {
      v11 = sendCopy;
    }

    else
    {
      v11 = *MEMORY[0x277D187E0];
    }

    v12 = [MEMORY[0x277CBEB98] setWithObject:v11];
    pairedWatchService = self->_pairedWatchService;
    if (v10 == pairedWatchService)
    {
      v14 = 200;
    }

    else
    {
      v14 = 300;
    }

    if (v10 == pairedWatchService)
    {
      v17 = *MEMORY[0x277D18578];
      v30[0] = *MEMORY[0x277D185D8];
      v30[1] = v17;
      v31[0] = MEMORY[0x277CBEC38];
      v31[1] = MEMORY[0x277CBEC38];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }

    v24 = 0;
    v25 = 0;
    v18 = [(IDSService *)v10 sendMessage:messageCopy toDestinations:v12 priority:v14 options:v15 identifier:&v25 error:&v24];
    v16 = v25;
    v19 = v24;
    if (v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = [messageCopy objectForKeyedSubscript:@"messageType"];
        *buf = 138412546;
        v27 = v20;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "sent %@, tracking: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [messageCopy objectForKeyedSubscript:@"messageType"];
        *buf = 138412546;
        v27 = v21;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendMessage FAILED for %@: %@", buf, 0x16u);
      }

      if (error)
      {
        v22 = v19;
        *error = v19;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Attempted to send message before connecting", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  fileCopy = file;
  metadataCopy = metadata;
  v13 = [(PCCIDSEndpoint *)self serviceByDeviceID:sendCopy];
  if (v13)
  {
    if (sendCopy)
    {
      v14 = sendCopy;
    }

    else
    {
      v14 = *MEMORY[0x277D187E0];
    }

    v15 = [MEMORY[0x277CBEB98] setWithObject:v14];
    if (v13 == self->_pairedWatchService)
    {
      v16 = 200;
    }

    else
    {
      v16 = 300;
    }

    v33 = *MEMORY[0x277D18670];
    v34[0] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v17 mutableCopy];

    if (v13 == self->_pairedWatchService)
    {
      v19 = MEMORY[0x277CBEC38];
      [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185D8]];
      [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D18578]];
      if ([(PCCEndpoint *)self fileTimeout])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PCCEndpoint fileTimeout](self, "fileTimeout")}];
        [v18 setObject:v20 forKeyedSubscript:*MEMORY[0x277D18658]];
      }
    }

    v27 = 0;
    v28 = 0;
    v21 = [(IDSService *)v13 sendResourceAtURL:fileCopy metadata:metadataCopy toDestinations:v15 priority:v16 options:v18 identifier:&v28 error:&v27];
    v22 = v28;
    v23 = v27;
    v24 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v24)
      {
        *buf = 138543618;
        v30 = fileCopy;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sent %{public}@, tracking: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v24)
      {
        *buf = 138543618;
        v30 = fileCopy;
        v31 = 2114;
        v32 = v23;
        _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sendFile FAILED for %{public}@: %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v25 = v23;
        *error = v23;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Attempted to send file before connecting", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [PCCIDSEndpoint service:lCopy account:? incomingResourceAtURL:? metadata:? fromID:? context:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained handleFile:lCopy from:dCopy metadata:metadataCopy];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(PCCIDSEndpoint *)identifierCopy service:v8 account:v9 identifier:v10 hasBeenDeliveredWithContext:v11, v12, v13, v14];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained ack:identifierCopy result:1 error:0];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  if (dCopy)
  {
    v14 = [(NSMutableDictionary *)self->_serviceByDevice objectForKeyedSubscript:dCopy];

    if (!v14)
    {
      [(NSMutableDictionary *)self->_serviceByDevice setObject:serviceCopy forKeyedSubscript:dCopy];
    }
  }

  v15 = [messageCopy objectForKeyedSubscript:@"messageType"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [(PCCIDSEndpoint *)v15 service:v16 account:v17 incomingMessage:v18 fromID:v19, v20, v21, v22];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained handleMessage:messageCopy from:dCopy];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [PCCIDSEndpoint service:successCopy account:identifierCopy identifier:errorCopy didSendWithSuccess:? error:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  [WeakRetained ack:identifierCopy result:successCopy error:errorCopy];
}

- (void)service:(void *)a1 account:incomingResourceAtURL:metadata:fromID:context:.cold.1(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 lastPathComponent];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v2;
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], v3, "received file '%@'", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)service:(uint64_t)a3 account:(uint64_t)a4 identifier:(uint64_t)a5 hasBeenDeliveredWithContext:(uint64_t)a6 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "delivery receipt tracked %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)service:(uint64_t)a3 account:(uint64_t)a4 incomingMessage:(uint64_t)a5 fromID:(uint64_t)a6 .cold.1(__CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"<unknown>";
  if (a1)
  {
    v8 = a1;
  }

  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v8;
  OUTLINED_FUNCTION_0_0(&dword_25D12D000, MEMORY[0x277D86220], a3, "received message '%@'", a5, a6, a7, a8, v9, DWORD2(v9));
}

- (void)service:(__CFString *)a3 account:identifier:didSendWithSuccess:error:.cold.1(char a1, uint64_t a2, __CFString *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = "OK";
  if ((a1 & 1) == 0)
  {
    v3 = "FAILED";
  }

  v4 = &stru_286EAD908;
  v5 = 136315650;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  if (a3)
  {
    v4 = a3;
  }

  v9 = 2112;
  v10 = v4;
  _os_log_debug_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "msg callback %s tracked %@ %@", &v5, 0x20u);
}

@end