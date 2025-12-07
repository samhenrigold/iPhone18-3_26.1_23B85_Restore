@interface MCNearbyServiceBrowser
- (MCNearbyServiceBrowser)init;
- (MCNearbyServiceBrowser)initWithPeer:(MCPeerID *)myPeerID serviceType:(NSString *)serviceType;
- (NSString)description;
- (id)rebuildUserDiscoveryInfoFromTXTRecordDictionary:(id)dictionary;
- (int64_t)syncNextOutgoingInviteID;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applicationWillEnterForegroundNotification:(id)notification;
- (void)dealloc;
- (void)invitePeer:(MCPeerID *)peerID toSession:(MCSession *)session withContext:(NSData *)context timeout:(NSTimeInterval)timeout;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowserDidStopSearch:(id)search;
- (void)netServiceBrowserWillSearch:(id)search;
- (void)parseIDString:(id *)string displayName:(id *)name fromIdentifier:(id)identifier;
- (void)startBrowsingForPeers;
- (void)stopBrowsingForPeers;
- (void)syncAttachConnection:(id)connection toPeer:(id)peer;
- (void)syncCloseConnectionForPeer:(id)peer;
- (void)syncHandleDeclinedInviteWithInfo:(id)info;
- (void)syncHandleInviteResponse:(id)response fromPeer:(id)peer;
- (void)syncHandleInviteTimeout:(id)timeout forPeer:(id)peer;
- (void)syncInitiateConnectionToPeer:(id)peer;
- (void)syncInvitePeer:(id)peer toSession:(id)session withContext:(id)context timeout:(double)timeout;
- (void)syncReceivedData:(id)data fromPeer:(id)peer;
- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncSendDictionary:(id)dictionary toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncStartBrowsingForPeers;
- (void)syncStopBrowsingForPeers;
@end

@implementation MCNearbyServiceBrowser

- (MCNearbyServiceBrowser)init
{
  v3.receiver = self;
  v3.super_class = MCNearbyServiceBrowser;
  [(MCNearbyServiceBrowser *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCNearbyServiceBrowser)initWithPeer:(MCPeerID *)myPeerID serviceType:(NSString *)serviceType
{
  v17.receiver = self;
  v17.super_class = MCNearbyServiceBrowser;
  v6 = [(MCNearbyServiceBrowser *)&v17 init];
  if (v6)
  {
    v6->_peers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_invites = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6->_netServices = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!myPeerID)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE660];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      [v7 raise:v8 format:{@"A nil %@ object passed to %@", v10, NSStringFromClass(v11)}];
    }

    v6->_myPeerID = [(MCPeerID *)myPeerID copy];
    if (![MCNearbyServiceUtils isServiceTypeValid:serviceType])
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = *MEMORY[0x277CBE660];
      v14 = objc_opt_class();
      [v12 raise:v13 format:{@"Invalid serviceType passed to %@", NSStringFromClass(v14)}];
    }

    v6->_serviceType = [(NSString *)serviceType copy];
    v6->_formattedServiceType = [+[MCNearbyServiceUtils formattedServiceType:](MCNearbyServiceUtils formattedServiceType:{serviceType), "copy"}];
    v6->_syncQueue = dispatch_queue_create("com.apple.MCNearbyServiceBrowser.syncQueue", 0);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v6 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    [defaultCenter addObserver:v6 selector:sel_applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] allValues];
  v4 = [allValues countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v7 = v4;
    v8 = *v18;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = mcbrowser_log(v4, v5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          name = [v10 name];
          *buf = v15;
          v22 = name;
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Removing netservice [%@] from net services dictionary.", buf, 0xCu);
        }

        [v10 stopMonitoring];
        v4 = [v10 setDelegate:0];
        ++v9;
      }

      while (v7 != v9);
      v4 = [allValues countByEnumeratingWithState:&v17 objects:v23 count:16];
      v7 = v4;
    }

    while (v4);
  }

  [(NSNetServiceBrowser *)self->_networkBrowser setDelegate:0];
  [(NSNetServiceBrowser *)self->_networkBrowser stop];
  networkBrowser = self->_networkBrowser;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(NSNetServiceBrowser *)networkBrowser removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_syncQueue);
  v16.receiver = self;
  v16.super_class = MCNearbyServiceBrowser;
  [(MCNearbyServiceBrowser *)&v16 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  myPeerID = [(MCNearbyServiceBrowser *)self myPeerID];
  serviceType = [(MCNearbyServiceBrowser *)self serviceType];
  [(MCNearbyServiceBrowser *)self delegate];
  v8 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p MyPeerID = %@ ServiceType = %@ Delegate = <%@: %p>>", v5, self, myPeerID, serviceType, NSStringFromClass(v8), -[MCNearbyServiceBrowser delegate](self, "delegate")];
}

- (int64_t)syncNextOutgoingInviteID
{
  outgoingInviteID = self->_outgoingInviteID;
  self->_outgoingInviteID = outgoingInviteID + 1;
  return outgoingInviteID;
}

- (void)parseIDString:(id *)string displayName:(id *)name fromIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CCAC80] scannerWithString:identifier];
  v9 = [v8 scanUpToString:@"+" intoString:string];
  if (v9)
  {
    v9 = [v8 scanString:@"+" intoString:0];
    if (v9)
    {
      v9 = [v8 scanUpToString:@"+" intoString:name];
      if (v9)
      {
        return;
      }

      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = mcbrowser_log(v9, v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    identifierCopy = identifier;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Identifier [%@] failed to parse @%d.", &v13, 0x12u);
  }
}

- (void)syncStartBrowsingForPeers
{
  v49 = *MEMORY[0x277D85DE8];
  if (![(MCNearbyServiceBrowser *)self isBrowsing])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self invites] allValues];
    v4 = [allValues countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v41;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v41 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [(MCNearbyServiceBrowser *)self syncHandleDeclinedInviteWithInfo:*(*(&v40 + 1) + 8 * i)];
        }

        v5 = [allValues countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_invites removeAllObjects];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_peers allValues];
    v9 = [allValues2 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(allValues2);
          }

          v13 = *(*(&v36 + 1) + 8 * j);
          [objc_msgSend(v13 "netService")];
          [objc_msgSend(v13 "netService")];
          [v13 setNetService:0];
          [v13 invalidate];
        }

        v10 = [allValues2 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v10);
    }

    [(NSMutableDictionary *)self->_peers removeAllObjects];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allValues3 = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] allValues];
    v15 = [allValues3 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v15)
    {
      v18 = v15;
      v19 = *v33;
      *&v17 = 138412290;
      v31 = v17;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(allValues3);
          }

          v21 = *(*(&v32 + 1) + 8 * v20);
          v22 = mcbrowser_log(v15, v16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            name = [v21 name];
            *buf = v31;
            v45 = name;
            _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "Removing netservice [%@] from net services dictionary.", buf, 0xCu);
          }

          [v21 stopMonitoring];
          v15 = [v21 setDelegate:0];
          ++v20;
        }

        while (v18 != v20);
        v15 = [allValues3 countByEnumeratingWithState:&v32 objects:v46 count:16];
        v18 = v15;
      }

      while (v15);
    }

    [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] removeAllObjects];
    if (![(MCNearbyServiceBrowser *)self networkBrowser])
    {
      v24 = objc_alloc_init(MEMORY[0x277CBAB68]);
      if (![(MCNearbyServiceBrowser *)self isAWDLDisabled])
      {
        [v24 setIncludesPeerToPeer:1];
      }

      [(MCNearbyServiceBrowser *)self setNetworkBrowser:v24];
    }

    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] setDelegate:self];
    networkBrowser = [(MCNearbyServiceBrowser *)self networkBrowser];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)networkBrowser scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] searchForServicesOfType:[(MCNearbyServiceBrowser *)self formattedServiceType] inDomain:@"local."];
    v27 = [(MCNearbyServiceBrowser *)self setIsBrowsing:1];
    v29 = mcbrowser_log(v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      formattedServiceType = [(MCNearbyServiceBrowser *)self formattedServiceType];
      *buf = 138412290;
      v45 = formattedServiceType;
      _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Start discovering services of type [%@].", buf, 0xCu);
    }
  }
}

- (void)startBrowsingForPeers
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MCNearbyServiceBrowser_startBrowsingForPeers__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)syncStopBrowsingForPeers
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(MCNearbyServiceBrowser *)self isBrowsing])
  {
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] setDelegate:0];
    [(NSNetServiceBrowser *)[(MCNearbyServiceBrowser *)self networkBrowser] stop];
    networkBrowser = [(MCNearbyServiceBrowser *)self networkBrowser];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(NSNetServiceBrowser *)networkBrowser removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
    v5 = [(MCNearbyServiceBrowser *)self setIsBrowsing:0];
    v7 = mcbrowser_log(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      formattedServiceType = [(MCNearbyServiceBrowser *)self formattedServiceType];
      _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Stop discovering services of type [%@].", &v8, 0xCu);
    }
  }
}

- (void)stopBrowsingForPeers
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MCNearbyServiceBrowser_stopBrowsingForPeers__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MCNearbyServiceBrowser_applicationDidEnterBackgroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

void *__68__MCNearbyServiceBrowser_applicationDidEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBrowsing];
  if (result)
  {
    [*(a1 + 32) setWasBrowsing:1];
    v3 = *(a1 + 32);

    return [v3 syncStopBrowsingForPeers];
  }

  return result;
}

- (void)applicationWillEnterForegroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MCNearbyServiceBrowser_applicationWillEnterForegroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

void *__69__MCNearbyServiceBrowser_applicationWillEnterForegroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wasBrowsing];
  if (result)
  {
    [*(a1 + 32) setWasBrowsing:0];
    v3 = *(a1 + 32);

    return [v3 syncStartBrowsingForPeers];
  }

  return result;
}

- (void)syncInitiateConnectionToPeer:(id)peer
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@", -[MCPeerID idString](-[MCNearbyServiceBrowser myPeerID](self, "myPeerID"), "idString"), -[MCPeerID displayName](-[MCNearbyServiceBrowser myPeerID](self, "myPeerID"), "displayName")];
  v6 = [[MCNearbyDiscoveryPeerConnection alloc] initWithLocalServiceName:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke;
  v7[3] = &unk_278B44738;
  v7[4] = peer;
  v7[5] = self;
  v7[6] = v5;
  v7[7] = v6;
  [(MCNearbyDiscoveryPeerConnection *)v6 setConnectedHandler:v7];
  -[MCNearbyDiscoveryPeerConnection connectToNetService:](v6, "connectToNetService:", [peer netService]);
  [peer setTrialConnection:v6];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke(id *a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = mcbrowser_log(a1, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = a2;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "PeerConnection connectedHandler (browser side), remote identifier [%@].", buf, 0xCu);
  }

  v11 = [a4 copy];
  v13 = v11;
  if (a5)
  {
    v14 = mcbrowser_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_1(a1, a5);
    }

    v15 = *(a1[5] + 10);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_37;
    block[3] = &unk_278B43DF0;
    block[4] = a1[4];
    dispatch_async(v15, block);
LABEL_7:
    if (v13)
    {
      v13[2](v13, 0);
    }

    return;
  }

  v39 = 0;
  v40 = 0;
  v16 = [a1[5] parseIDString:&v40 displayName:&v39 fromIdentifier:a2];
  if (v40 && v39)
  {
    v18 = [MCPeerID alloc];
    v19 = -[MCPeerID isEqual:](-[MCPeerID initWithIDString:displayName:](v18, "initWithIDString:displayName:", v40, v39), "isEqual:", [a1[4] peerID]);
    if ((v19 & 1) == 0)
    {
      v31 = mcbrowser_log(v19, v20);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_3();
      }

      goto LABEL_7;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_38;
    v37[3] = &unk_278B446C0;
    v38 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
    v21 = mcbrowser_log(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = a1[4];
      if (a3)
      {
        v23 = "yes";
      }

      else
      {
        v23 = "no";
      }

      v24 = a1[7];
      v25 = [v22 stringForState:{objc_msgSend(a1[4], "state")}];
      *buf = 138413058;
      v43 = v22;
      v44 = 2080;
      v45 = v23;
      v46 = 2048;
      v47 = v24;
      v48 = 2112;
      v49 = v25;
      _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "ConnectionHandler [%@] (browser side) shouldForceConnect [%s]; peer.connection [%p] state [%@].", buf, 0x2Au);
    }

    if (a3)
    {
      [a1[7] setReceiveDataHandler:v37];
      v26 = a1[4];
      v27 = a1[5];
      v28 = *(v27 + 10);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_44;
      v36[3] = &unk_278B43C88;
      v29 = a1[7];
      v36[4] = v27;
      v36[5] = v29;
      v36[6] = v26;
      dispatch_async(v28, v36);
      if (v13)
      {
        v13[2](v13, 1);
      }
    }

    else
    {
      v32 = a1[5];
      v33 = *(v32 + 10);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2_45;
      v35[3] = &unk_278B44710;
      v34 = a1[7];
      v35[4] = a1[4];
      v35[5] = v34;
      v35[6] = v32;
      v35[7] = v37;
      v35[8] = v13;
      dispatch_async(v33, v35);
    }
  }

  else
  {
    v30 = mcbrowser_log(v16, v17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63_cold_1();
    }
  }
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_37(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "trialConnection")];
  v2 = *(a1 + 32);

  return [v2 setTrialConnection:0];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_38(int8x16_t *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a1[2].i64[0];
    v5 = *(v4 + 80);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2;
    v19[3] = &unk_278B43C88;
    v19[4] = a1[2].i64[1];
    v19[5] = a3;
    v19[6] = v4;
    v6 = v19;
  }

  else
  {
    if (!a2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v8 = vextq_s8(a1[2], a1[2], 8uLL);
      v9 = a1[2].i64[0];
      block[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_39;
      block[3] = &unk_278B43C60;
      v10 = *(v9 + 80);
      v18 = v8;
      dispatch_async(v10, block);
    }

    v11 = mcbrowser_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[2].i64[1];
      v13 = [a2 length];
      *buf = 138412546;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Peer [%@] passing data (length=%u) to the app.", buf, 0x12u);
    }

    v15 = a1[2].i64[0];
    v14 = a1[2].i64[1];
    v5 = *(v15 + 80);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_40;
    v16[3] = &unk_278B43C88;
    v16[4] = v15;
    v16[5] = a2;
    v16[6] = v14;
    v6 = v16;
  }

  dispatch_async(v5, v6);
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = mcbrowser_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) localizedDescription];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Peer [%@] data received with error %@.", &v7, 0x16u);
  }

  return [*(a1 + 48) syncCloseConnectionForPeer:*(a1 + 32)];
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = mcbrowser_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Peer [%@] connection closed.", &v6, 0xCu);
  }

  return [*(a1 + 40) syncCloseConnectionForPeer:*(a1 + 32)];
}

uint64_t __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_2_45(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v4 = v2;
  if (v2 == 2)
  {
    v7 = mcbrowser_log(v2, v3);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 32);
    v16 = 138412290;
    v17 = v12;
    v11 = "Peer [%@] (browser side) decision == NO.";
  }

  else
  {
    [*(a1 + 40) setReceiveDataHandler:*(a1 + 56)];
    v5 = [*(a1 + 48) syncAttachConnection:*(a1 + 40) toPeer:*(a1 + 32)];
    v7 = mcbrowser_log(v5, v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v16 = 138412290;
    v17 = v10;
    v11 = "Peer [%@] (browser side) connected successfully.";
  }

  _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, v11, &v16, 0xCu);
LABEL_7:
  v13 = mcbrowser_log(v8, v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v16 = 138412546;
    v17 = v14;
    v18 = 1024;
    v19 = v4 != 2;
    _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Peer [%@] (browser side) about to return decision == %d.", &v16, 0x12u);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, v4 != 2);
  }

  return result;
}

- (void)syncAttachConnection:(id)connection toPeer:(id)peer
{
  [peer attachConnection:connection];
  [peer setState:2];

  [peer flushDataBuffer];
}

- (void)syncCloseConnectionForPeer:(id)peer
{
  v9 = *MEMORY[0x277D85DE8];
  closeConnection = [peer closeConnection];
  v6 = mcbrowser_log(closeConnection, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = [objc_msgSend(peer "peerID")];
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Setting peer [%@] state to Not Connected.", &v7, 0xCu);
  }

  [peer setState:0];
}

- (void)syncSendDictionary:(id)dictionary toPeer:(id)peer withCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v8 = [handler copy];
  v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:200 options:0 error:&v13];
  if (v9)
  {
    v11 = v9;
    v12 = mcbrowser_log(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      dictionaryCopy = dictionary;
      v16 = 2112;
      peerCopy = peer;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Sending dictionary %@ to peer %@.", buf, 0x16u);
    }

    [(MCNearbyServiceBrowser *)self syncSendData:v11 toPeer:peer withCompletionHandler:v8];
  }

  else if (v8)
  {
    v8[2](v8, v13);
  }
}

- (void)syncInvitePeer:(id)peer toSession:(id)session withContext:(id)context timeout:(double)timeout
{
  v29[5] = *MEMORY[0x277D85DE8];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MCNearbyServiceBrowser syncNextOutgoingInviteID](self, "syncNextOutgoingInviteID")}];
  v12 = [objc_msgSend(peer "peerID")];
  serializedRepresentation = [(MCPeerID *)[(MCNearbyServiceBrowser *)self myPeerID] serializedRepresentation];
  if (context)
  {
    v28[0] = @"MCNearbyServiceMessageIDKey";
    v29[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v29[1] = serializedRepresentation;
    v28[1] = @"MCNearbyServiceSenderPeerIDKey";
    v28[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v29[2] = v12;
    v29[3] = v11;
    v28[3] = @"MCNearbyServiceInviteIDKey";
    v28[4] = @"MCNearbyServiceInviteContextKey";
    v29[4] = context;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v29;
    v16 = v28;
    v17 = 5;
  }

  else
  {
    v26[0] = @"MCNearbyServiceMessageIDKey";
    v27[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v27[1] = serializedRepresentation;
    v26[1] = @"MCNearbyServiceSenderPeerIDKey";
    v26[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v26[3] = @"MCNearbyServiceInviteIDKey";
    v27[2] = v12;
    v27[3] = v11;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v27;
    v16 = v26;
    v17 = 4;
  }

  v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
  v24[0] = @"MCNearbyServiceRecipientPeerIDKey";
  v24[1] = @"MCNearbyServiceSessionKey";
  v25[0] = [peer peerID];
  v25[1] = session;
  -[NSMutableDictionary setObject:forKey:](self->_invites, "setObject:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2], v11);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke;
  v23[3] = &unk_278B44620;
  v23[4] = v18;
  v23[5] = peer;
  [(MCNearbyServiceBrowser *)self syncSendDictionary:v18 toPeer:peer withCompletionHandler:v23];
  v19 = timeout * 1000000000.0;
  if (timeout <= 0.0)
  {
    v19 = 3.0e10;
  }

  v20 = dispatch_time(0, v19);
  syncQueue = self->_syncQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke_51;
  v22[3] = &unk_278B43C88;
  v22[4] = self;
  v22[5] = v18;
  v22[6] = peer;
  dispatch_after(v20, syncQueue, v22);
}

void __71__MCNearbyServiceBrowser_syncInvitePeer_toSession_withContext_timeout___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = mcbrowser_log(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53_cold_1();
    }
  }
}

- (void)syncHandleInviteResponse:(id)response fromPeer:(id)peer
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(response objectForKey:{@"MCNearbyServiceAcceptInviteKey", "BOOLValue"}];
  v8 = v7;
  v10 = mcbrowser_log(v7, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    responseCopy = response;
    v36 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Got invite response [%@] from peer [%@].", buf, 0x16u);
  }

  v11 = [response objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
  v12 = [[MCPeerID alloc] initWithSerializedRepresentation:v11];
  v13 = [(MCPeerID *)[(MCNearbyServiceBrowser *)self myPeerID] isEqual:v12];
  if (v13)
  {
    v15 = [response objectForKey:@"MCNearbyServiceSenderPeerIDKey"];
    v16 = [[MCPeerID alloc] initWithSerializedRepresentation:v15];
    v17 = [objc_msgSend(peer "peerID")];
    if (v17)
    {
      v32 = v8;
      p_invites = &self->_invites;
      v31 = [response objectForKey:@"MCNearbyServiceInviteIDKey"];
      v20 = [(NSMutableDictionary *)self->_invites objectForKey:?];
      v21 = [v20 objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
      v22 = [v20 objectForKey:@"MCNearbyServiceSessionKey"];
      v23 = [(MCPeerID *)v16 isEqual:v21];
      if (v23)
      {
        if (v22)
        {
          peerID = [peer peerID];
          if (v32)
          {
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke;
            v33[3] = &unk_278B44788;
            v33[4] = v11;
            v33[5] = v15;
            v26 = v31;
            v33[6] = v31;
            v33[7] = self;
            v33[8] = peer;
            v33[9] = response;
            v33[10] = v16;
            v33[11] = v22;
            [v22 nearbyConnectionDataForPeer:peerID withCompletionHandler:v33];
          }

          else
          {
            [v22 peerDidDeclineInvitation:peerID];
            [(MCNearbyServiceBrowser *)self syncCloseConnectionForPeer:peer];
            v26 = v31;
          }

          [(NSMutableDictionary *)*p_invites removeObjectForKey:v26];
        }

        else
        {
          v30 = mcbrowser_log(v23, v24);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [(MCNearbyServiceBrowser *)peer syncHandleInviteResponse:v30 fromPeer:?];
          }
        }
      }

      else
      {
        v29 = mcbrowser_log(v23, v24);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyServiceBrowser syncHandleInviteResponse:v16 fromPeer:?];
        }
      }
    }

    else
    {
      v28 = mcbrowser_log(v17, v18);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyServiceBrowser syncHandleInviteResponse:peer fromPeer:v16];
      }
    }
  }

  else
  {
    v27 = mcbrowser_log(v13, v14);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceBrowser syncHandleInviteResponse:v12 fromPeer:?];
    }
  }
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v12[0] = @"MCNearbyServiceMessageIDKey";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
    v12[1] = @"MCNearbyServiceSenderPeerIDKey";
    v12[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v14 = *(a1 + 32);
    v12[3] = @"MCNearbyServiceInviteIDKey";
    v12[4] = @"MCNearbyServiceConnectionDataKey";
    v15 = *(a1 + 48);
    v16 = a2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:v12 count:5];
    v5 = *(a1 + 56);
    v6 = *(v5 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_52;
    block[3] = &unk_278B44698;
    block[4] = v5;
    block[5] = v4;
    v7 = *(a1 + 80);
    v10 = *(a1 + 64);
    v11 = v7;
    dispatch_async(v6, block);
  }

  else
  {
    v8 = mcbrowser_log(a1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_cold_1();
    }
  }
}

uint64_t __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_52(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2;
  v8 = &unk_278B44760;
  v9 = *(a1 + 56);
  return [v2 syncSendDictionary:v1 toPeer:MEMORY[0x277D85DD0] withCompletionHandler:{3221225472, __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2, &unk_278B44760, v9, *(a1 + 72), v3}];
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = mcbrowser_log(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v4 = [*(a1 + 32) objectForKey:@"MCNearbyServiceConnectionDataKey"];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) peerID];

    [v5 connectPeer:v6 withNearbyConnectionData:v4];
  }
}

- (void)syncHandleDeclinedInviteWithInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  if (info)
  {
    v5 = [info objectForKey:@"MCNearbyServiceSessionKey"];
    v6 = [info objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
    v8 = mcbrowser_log(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Handle declined invitation from peer with peerID [%@].", buf, 0xCu);
    }

    [v5 peerDidDeclineInvitation:v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self peers] allValues];
    v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v15 + 1) + 8 * v13);
        if ([objc_msgSend(v14 "peerID")])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v14 = 0;
    }

    if (v6)
    {
      [(MCNearbyServiceBrowser *)self syncCloseConnectionForPeer:v14];
    }
  }
}

- (void)syncHandleInviteTimeout:(id)timeout forPeer:(id)peer
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [timeout objectForKey:@"MCNearbyServiceInviteIDKey"];
  v8 = mcbrowser_log(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Invite timeout for peer [%@] fired.", &v10, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_invites objectForKey:v6];
  if (v9)
  {
    [(MCNearbyServiceBrowser *)self syncHandleDeclinedInviteWithInfo:v9];
    [(NSMutableDictionary *)self->_invites removeObjectForKey:v6];
  }
}

- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler
{
  if (![peer state])
  {
    [(MCNearbyServiceBrowser *)self syncInitiateConnectionToPeer:peer];
  }

  [peer sendData:data withCompletionHandler:handler];
}

- (void)syncReceivedData:(id)data fromPeer:(id)peer
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v8 = mcbrowser_log(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Received dictionary [%@] from peer [%@].", &v13, 0x16u);
  }

  if (v6)
  {
    v9 = [objc_msgSend(v6 objectForKey:{@"MCNearbyServiceMessageIDKey", "unsignedIntegerValue"}];
    if (v9 == 2)
    {
      [(MCNearbyServiceBrowser *)self syncHandleInviteResponse:v6 fromPeer:peer];
    }

    else
    {
      v11 = v9;
      v12 = mcbrowser_log(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109120;
        LODWORD(v14) = v11;
        _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Unknown or invalid nearby message type for the browser: %d.", &v13, 8u);
      }
    }
  }
}

- (void)invitePeer:(MCPeerID *)peerID toSession:(MCSession *)session withContext:(NSData *)context timeout:(NSTimeInterval)timeout
{
  if (!peerID)
  {
    v13 = mcbrowser_log(self, a2);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "Bad argument peerID=nil";
    goto LABEL_8;
  }

  if (session)
  {
    v10 = [(MCPeerID *)peerID copy];
    v11 = [(NSData *)context copy];
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke;
    block[3] = &unk_278B447B0;
    block[4] = self;
    block[5] = v10;
    block[6] = session;
    block[7] = v11;
    *&block[8] = timeout;
    dispatch_async(syncQueue, block);

    return;
  }

  v13 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v14 = "Bad argument session=nil";
LABEL_8:
    _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
  }
}

void __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);

    [v5 syncInvitePeer:v4 toSession:v6 withContext:v7 timeout:v8];
  }

  else
  {
    v9 = mcbrowser_log(0, v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) displayNameAndPID];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Peer [%@] not in peers dictionary anymore.", buf, 0xCu);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke_53;
    v11[3] = &unk_278B43C60;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

uint64_t __67__MCNearbyServiceBrowser_invitePeer_toSession_withContext_timeout___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 browser:v3 lostPeer:v4];
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  v27 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    v18 = mcbrowser_log(self, a2);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v23) = 0;
    v19 = "An invalid NSNetService object found - skipping.";
    v20 = v18;
LABEL_14:
    _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, v19, &v23, 2u);
    return;
  }

  comingCopy = coming;
  name = [objc_msgSend(service name];
  v10 = mcbrowser_log(name, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!name)
  {
    if (!v11)
    {
      return;
    }

    LOWORD(v23) = 0;
    v19 = "NetService with an invalid name found - skipping.";
    v20 = v10;
    goto LABEL_14;
  }

  if (v11)
  {
    v23 = 138412546;
    v24 = name;
    v25 = 1024;
    v26 = comingCopy;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "NetService found [%@] moreComing [%d].", &v23, 0x12u);
  }

  v12 = [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] objectForKey:name];
  if (!v12)
  {
    v21 = mcbrowser_log(0, v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = name;
      _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "NetService adding [%@] to net services dictionary.", &v23, 0xCu);
    }

    goto LABEL_17;
  }

  v14 = v12;
  v15 = [service isEqual:v12];
  if ((v15 & 1) == 0)
  {
    v17 = mcbrowser_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = name;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "NetService replacing [%@] in net services dictionary.", &v23, 0xCu);
    }

    [v14 stopMonitoring];
LABEL_17:
    [(NSMutableDictionary *)[(MCNearbyServiceBrowser *)self netServices] setObject:service forKey:name];
  }

  [service setDelegate:self];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [service scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  [service startMonitoring];
}

- (void)netServiceBrowser:(id)browser didFindDomain:(id)domain moreComing:(BOOL)coming
{
  comingCopy = coming;
  v12 = *MEMORY[0x277D85DE8];
  v7 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    domainCopy = domain;
    v10 = 1024;
    v11 = comingCopy;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Did find domain [%@] moreComing [%d].", &v8, 0x12u);
  }
}

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  v5 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MCNearbyServiceBrowser netServiceBrowser:didNotSearch:];
  }

  Int64 = CFDictionaryGetInt64();
  if (Int64)
  {
    v7 = Int64;
  }

  else
  {
    v7 = -72000;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBAAC0] code:v7 userInfo:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MCNearbyServiceBrowser_netServiceBrowser_didNotSearch___block_invoke;
  v9[3] = &unk_278B43C60;
  v9[4] = self;
  v9[5] = v8;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __57__MCNearbyServiceBrowser_netServiceBrowser_didNotSearch___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 browser:v4 didNotStartBrowsingForPeers:v5];
  }

  return result;
}

- (void)netServiceBrowser:(id)browser didRemoveDomain:(id)domain moreComing:(BOOL)coming
{
  comingCopy = coming;
  v12 = *MEMORY[0x277D85DE8];
  v7 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    domainCopy = domain;
    v10 = 1024;
    v11 = comingCopy;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Did remove domain [%@] moreComing [%d].", &v8, 0x12u);
  }
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  comingCopy = coming;
  v16 = *MEMORY[0x277D85DE8];
  name = [service name];
  v9 = mcbrowser_log(name, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = name;
    v14 = 1024;
    v15 = comingCopy;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Peer lost: idString [%@] moreComing [%d].", buf, 0x12u);
  }

  syncQueue = self->_syncQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke;
  v11[3] = &unk_278B43C60;
  v11[4] = self;
  v11[5] = name;
  dispatch_async(syncQueue, v11);
}

void __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [objc_msgSend(*(a1 + 32) "peers")];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v17;
  do
  {
    v8 = 0;
    do
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v16 + 1) + 8 * v8);
      if ([objc_msgSend(objc_msgSend(v9 "netService")])
      {
        v6 = v9;
      }

      ++v8;
    }

    while (v5 != v8);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    v5 = v3;
  }

  while (v3);
  if (v6)
  {
    v10 = [v6 peerID];
    v12 = mcbrowser_log(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 displayNameAndPID];
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Removing a peer [%@] from peers dictionary.", buf, 0xCu);
    }

    [objc_msgSend(*(a1 + 32) "peers")];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_57;
    v15[3] = &unk_278B43C60;
    v15[4] = *(a1 + 32);
    v15[5] = v10;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  else
  {
LABEL_14:
    v14 = mcbrowser_log(v3, v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_cold_1();
    }
  }
}

uint64_t __72__MCNearbyServiceBrowser_netServiceBrowser_didRemoveService_moreComing___block_invoke_57(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 browser:v3 lostPeer:v4];
}

- (void)netServiceBrowserDidStopSearch:(id)search
{
  v3 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, &unk_239FF4DDD, v4, 2u);
  }
}

- (void)netServiceBrowserWillSearch:(id)search
{
  v3 = mcbrowser_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, &unk_239FF4DDD, v4, 2u);
  }
}

- (id)rebuildUserDiscoveryInfoFromTXTRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(dictionary "allValues")];
  if (v4 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v4 - 1];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [dictionaryCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v16 = v5;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (([v11 isEqualToString:@"_d"] & 1) == 0)
          {
            v12 = dictionaryCopy;
            v13 = [dictionaryCopy objectForKey:v11];
            v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v13 encoding:4];
            if ([v11 hasPrefix:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%@", @"_", @"_"}])
            {
              v11 = [v11 substringFromIndex:1];
            }

            [v16 setObject:v14 forKey:v11];
            dictionaryCopy = v12;
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
      v5 = v16;
    }
  }

  return v5;
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v35 = *MEMORY[0x277D85DE8];
  name = [service name];
  v8 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:data];
  v9 = [v8 objectForKey:@"_d"];
  if (!v9 || ((v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4], v9 = -[MCNearbyServiceBrowser rebuildUserDiscoveryInfoFromTXTRecordDictionary:](self, "rebuildUserDiscoveryInfoFromTXTRecordDictionary:", v8), v11) ? (v12 = name == 0) : (v12 = 1), v12))
  {
    v13 = mcbrowser_log(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceBrowser netService:didUpdateTXTRecordData:];
    }
  }

  else
  {
    v14 = v9;
    v15 = [[MCPeerID alloc] initWithIDString:name displayName:v11];
    v17 = mcbrowser_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = name;
      v31 = 2112;
      displayNameAndPID = [(MCPeerID *)v15 displayNameAndPID];
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "Peer found: idString [%@], displayNameAndPID [%@], discoveryInfo [%@].", buf, 0x20u);
    }

    v19 = [(MCPeerID *)v15 isEqual:[(MCNearbyServiceBrowser *)self myPeerID]];
    if (v19)
    {
      v21 = mcbrowser_log(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring self for now.", buf, 2u);
      }
    }

    else
    {
      syncQueue = self->_syncQueue;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke;
      v28[3] = &unk_278B43DC8;
      v28[4] = self;
      v28[5] = v15;
      v28[6] = service;
      v28[7] = v14;
      dispatch_async(syncQueue, v28);
      v23 = -[NSMutableDictionary objectForKey:](-[MCNearbyServiceBrowser netServices](self, "netServices"), "objectForKey:", [service name]);
      if (v23)
      {
        v25 = v23;
        [v23 stopMonitoring];
        [v25 setDelegate:0];
        -[NSMutableDictionary removeObjectForKey:](-[MCNearbyServiceBrowser netServices](self, "netServices"), "removeObjectForKey:", [service name]);
      }

      else
      {
        v26 = mcbrowser_log(0, v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [service name];
          *buf = 138412290;
          v30 = name2;
          _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, "NetService not found [%@] in net services dictionary.", buf, 0xCu);
        }

        [service stopMonitoring];
      }
    }
  }
}

void __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "peers")];
  if (!v2)
  {
LABEL_6:
    v7 = [[MCNearbyDiscoveryPeer alloc] initWithPeerID:*(a1 + 40)];
    [(MCNearbyDiscoveryPeer *)v7 setNetService:*(a1 + 48)];
    [objc_msgSend(*(a1 + 32) "peers")];

    goto LABEL_7;
  }

  v3 = v2;
  v4 = [*(a1 + 48) isEqual:{objc_msgSend(v2, "netService")}];
  if ((v4 & 1) == 0)
  {
    v6 = mcbrowser_log(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Peer already in the dictionary, but has a different NSNetService object. will replace it with the newly found peer.", buf, 2u);
    }

    [v3 invalidate];
    goto LABEL_6;
  }

LABEL_7:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke_63;
  block[3] = &unk_278B43C88;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__MCNearbyServiceBrowser_netService_didUpdateTXTRecordData___block_invoke_63(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v2 browser:v3 foundPeer:v4 withDiscoveryInfo:v5];
}

void __55__MCNearbyServiceBrowser_syncInitiateConnectionToPeer___block_invoke_cold_1(uint64_t a1, void *a2)
{
  [a2 localizedDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:(void *)a2 .cold.1(void *a1, void *a2)
{
  [objc_msgSend(a1 "myPeerID")];
  [a2 displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:(void *)a2 .cold.2(void *a1, void *a2)
{
  [objc_msgSend(a1 "peerID")];
  [a2 displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)syncHandleInviteResponse:(void *)a1 fromPeer:.cold.3(void *a1)
{
  [a1 displayNameAndPID];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)syncHandleInviteResponse:(NSObject *)a3 fromPeer:.cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_4_0(&dword_239FB7000, a2, a3, "No session for peer [%@]. invites=[%@].", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __60__MCNearbyServiceBrowser_syncHandleInviteResponse_fromPeer___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 40) displayNameAndPID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end