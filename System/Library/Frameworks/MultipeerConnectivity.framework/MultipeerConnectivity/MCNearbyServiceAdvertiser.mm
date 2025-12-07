@interface MCNearbyServiceAdvertiser
- (MCNearbyServiceAdvertiser)init;
- (MCNearbyServiceAdvertiser)initWithPeer:(MCPeerID *)myPeerID discoveryInfo:(NSDictionary *)info serviceType:(NSString *)serviceType;
- (NSString)description;
- (id)makeTXTRecordDataWithDiscoveryInfo:(id)info;
- (id)txtRecordDataWithDiscoveryInfo:(id)info;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applicationWillEnterForegroundNotification:(id)notification;
- (void)dealloc;
- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidStop:(id)stop;
- (void)parseIDString:(id *)string displayName:(id *)name fromIdentifier:(id)identifier;
- (void)startAdvertisingPeer;
- (void)stopAdvertisingPeer;
- (void)syncAttachConnection:(id)connection toPeer:(id)peer;
- (void)syncCloseConnectionForPeer:(id)peer;
- (void)syncHandleIncomingInputStream:(id)stream outputStream:(id)outputStream;
- (void)syncHandleInvite:(id)invite fromPeer:(id)peer;
- (void)syncHandleInviteConnect:(id)connect fromPeer:(id)peer;
- (void)syncReceivedData:(id)data fromPeer:(id)peer;
- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncSendDictionary:(id)dictionary toPeer:(id)peer withCompletionHandler:(id)handler;
- (void)syncStartAdvertisingPeer;
- (void)syncStopAdvertisingPeer;
@end

@implementation MCNearbyServiceAdvertiser

- (MCNearbyServiceAdvertiser)init
{
  v3.receiver = self;
  v3.super_class = MCNearbyServiceAdvertiser;
  [(MCNearbyServiceAdvertiser *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCNearbyServiceAdvertiser)initWithPeer:(MCPeerID *)myPeerID discoveryInfo:(NSDictionary *)info serviceType:(NSString *)serviceType
{
  v23.receiver = self;
  v23.super_class = MCNearbyServiceAdvertiser;
  v8 = [(MCNearbyServiceAdvertiser *)&v23 init];
  if (v8)
  {
    v8->_peers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->_invites = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!myPeerID)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      [v9 raise:v10 format:{@"A nil %@ object passed to %@", v12, NSStringFromClass(v13)}];
    }

    v8->_myPeerID = [(MCPeerID *)myPeerID copy];
    if (![MCNearbyServiceUtils isServiceTypeValid:serviceType])
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE660];
      v16 = objc_opt_class();
      [v14 raise:v15 format:{@"Invalid serviceType passed to %@", NSStringFromClass(v16)}];
    }

    v8->_serviceType = [(NSString *)serviceType copy];
    v8->_formattedServiceType = [+[MCNearbyServiceUtils formattedServiceType:](MCNearbyServiceUtils formattedServiceType:{serviceType), "copy"}];
    v8->_discoveryInfo = [(NSDictionary *)info copy];
    v17 = [(MCNearbyServiceAdvertiser *)v8 txtRecordDataWithDiscoveryInfo:info];
    v8->_TXTRecordData = v17;
    if (!v17)
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = *MEMORY[0x277CBE660];
      v20 = objc_opt_class();
      [v18 raise:v19 format:{@"Invalid discoveryInfo passed to %@", NSStringFromClass(v20)}];
    }

    v8->_syncQueue = dispatch_queue_create("com.apple.MCNearbyServiceAdvertiser.syncQueue", 0);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v8 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    [defaultCenter addObserver:v8 selector:sel_applicationWillTerminateNotification_ name:*MEMORY[0x277D76770] object:0];
  }

  return v8;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(NSNetService *)self->_networkServer setDelegate:0];
  [(NSNetService *)self->_networkServer stop];

  objc_storeWeak(&self->_delegate, 0);
  dispatch_release(self->_syncQueue);
  v3.receiver = self;
  v3.super_class = MCNearbyServiceAdvertiser;
  [(MCNearbyServiceAdvertiser *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  myPeerID = [(MCNearbyServiceAdvertiser *)self myPeerID];
  discoveryInfo = [(MCNearbyServiceAdvertiser *)self discoveryInfo];
  serviceType = [(MCNearbyServiceAdvertiser *)self serviceType];
  [(MCNearbyServiceAdvertiser *)self delegate];
  v9 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p MyPeerID = %@ DiscoveryInfo = %@ ServiceType = %@ Delegate = <%@: %p>>", v5, self, myPeerID, discoveryInfo, serviceType, NSStringFromClass(v9), -[MCNearbyServiceAdvertiser delegate](self, "delegate")];
}

- (id)makeTXTRecordDataWithDiscoveryInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObject:-[MCPeerID displayName](-[MCNearbyServiceAdvertiser myPeerID](self forKey:{"myPeerID"), "displayName"), @"_d"}];
  if (info)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [info allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [info objectForKey:v10];
          if ([v10 hasPrefix:@"_"])
          {
            v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"_", v10];
          }

          [v4 setObject:v11 forKey:v10];
        }

        v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return [MEMORY[0x277CBAB60] dataFromTXTRecordDictionary:v4];
}

- (id)txtRecordDataWithDiscoveryInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [info allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        [info objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v9)];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return [(MCNearbyServiceAdvertiser *)self makeTXTRecordDataWithDiscoveryInfo:info];
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

  v12 = mcadvertiser_log(v9, v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    identifierCopy = identifier;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Identifier [%@] failed to parse at %d.", &v13, 0x12u);
  }
}

- (void)syncStartAdvertisingPeer
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(MCNearbyServiceAdvertiser *)self isAdvertising])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)self->_peers allValues];
    v4 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v15 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_peers removeAllObjects];
    if (![(MCNearbyServiceAdvertiser *)self networkServer])
    {
      v8 = [objc_alloc(MEMORY[0x277CBAB60]) initWithDomain:@"local." type:-[MCNearbyServiceAdvertiser formattedServiceType](self name:"formattedServiceType") port:{-[MCPeerID idString](-[MCNearbyServiceAdvertiser myPeerID](self, "myPeerID"), "idString"), 0}];
      [v8 setDelegate:self];
      if (![(MCNearbyServiceAdvertiser *)self isAWDLDisabled])
      {
        [v8 setIncludesPeerToPeer:1];
      }

      [(MCNearbyServiceAdvertiser *)self setNetworkServer:v8];
      [(NSNetService *)[(MCNearbyServiceAdvertiser *)self networkServer] setTXTRecordData:[(MCNearbyServiceAdvertiser *)self TXTRecordData]];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [v8 scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
    }

    [(NSNetService *)[(MCNearbyServiceAdvertiser *)self networkServer] publishWithOptions:2];
    v10 = [(MCNearbyServiceAdvertiser *)self setIsAdvertising:1];
    v12 = mcadvertiser_log(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      displayNameAndPID = [(MCPeerID *)[(MCNearbyServiceAdvertiser *)self myPeerID] displayNameAndPID];
      formattedServiceType = [(MCNearbyServiceAdvertiser *)self formattedServiceType];
      *buf = 138412546;
      v20 = displayNameAndPID;
      v21 = 2112;
      v22 = formattedServiceType;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Start advertising peer [%@] type [%@].", buf, 0x16u);
    }
  }
}

- (void)startAdvertisingPeer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MCNearbyServiceAdvertiser_startAdvertisingPeer__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)syncStopAdvertisingPeer
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(MCNearbyServiceAdvertiser *)self isAdvertising])
  {
    if ([(MCNearbyServiceAdvertiser *)self networkServer])
    {
      [(NSNetService *)[(MCNearbyServiceAdvertiser *)self networkServer] setDelegate:0];
      [(NSNetService *)[(MCNearbyServiceAdvertiser *)self networkServer] stop];
      [(MCNearbyServiceAdvertiser *)self setNetworkServer:0];
    }

    v3 = [(MCNearbyServiceAdvertiser *)self setIsAdvertising:0];
    v5 = mcadvertiser_log(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412546;
      displayNameAndPID = [(MCPeerID *)[(MCNearbyServiceAdvertiser *)self myPeerID] displayNameAndPID];
      v8 = 2112;
      formattedServiceType = [(MCNearbyServiceAdvertiser *)self formattedServiceType];
      _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Stop advertising peer [%@] type [%@].", &v6, 0x16u);
    }
  }
}

- (void)stopAdvertisingPeer
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MCNearbyServiceAdvertiser_stopAdvertisingPeer__block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MCNearbyServiceAdvertiser_applicationDidEnterBackgroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

void *__71__MCNearbyServiceAdvertiser_applicationDidEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isAdvertising];
  if (result)
  {
    [*(a1 + 32) setWasAdvertising:1];
    v3 = *(a1 + 32);

    return [v3 syncStopAdvertisingPeer];
  }

  return result;
}

- (void)applicationWillEnterForegroundNotification:(id)notification
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MCNearbyServiceAdvertiser_applicationWillEnterForegroundNotification___block_invoke;
  block[3] = &unk_278B43DF0;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

void *__72__MCNearbyServiceAdvertiser_applicationWillEnterForegroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wasAdvertising];
  if (result)
  {
    [*(a1 + 32) setWasAdvertising:0];
    v3 = *(a1 + 32);

    return [v3 syncStartAdvertisingPeer];
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
  [peer closeConnection];

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
    v12 = mcadvertiser_log(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      dictionaryCopy = dictionary;
      v16 = 2112;
      peerCopy = peer;
      _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Sending dictionary %@ to peer %@.", buf, 0x16u);
    }

    [(MCNearbyServiceAdvertiser *)self syncSendData:v11 toPeer:peer withCompletionHandler:v8];
  }

  else if (v8)
  {
    v8[2](v8, v13);
  }
}

- (void)syncHandleInvite:(id)invite fromPeer:(id)peer
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [invite objectForKey:@"MCNearbyServiceSenderPeerIDKey"];
  v8 = [[MCPeerID alloc] initWithSerializedRepresentation:v7];
  v9 = [invite objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
  v10 = [[MCPeerID alloc] initWithSerializedRepresentation:v9];
  v12 = mcadvertiser_log(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    peerCopy = peer;
    v23 = 2112;
    v24 = [objc_msgSend(peer "peerID")];
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Got invite from peer[%@] for peer[%@].", buf, 0x16u);
  }

  v13 = [(MCPeerID *)[(MCNearbyServiceAdvertiser *)self myPeerID] isEqual:v10];
  if (v13)
  {
    v15 = [objc_msgSend(peer "peerID")];
    if (v15)
    {
      v17 = [invite objectForKey:@"MCNearbyServiceInviteContextKey"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke;
      v20[3] = &unk_278B44698;
      v20[4] = peer;
      v20[5] = invite;
      v20[6] = v9;
      v20[7] = v7;
      v20[8] = self;
      v20[9] = v17;
      dispatch_async(MEMORY[0x277D85CD0], v20);
    }

    else
    {
      v19 = mcadvertiser_log(v15, v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyServiceAdvertiser syncHandleInvite:fromPeer:];
      }
    }
  }

  else
  {
    v18 = mcadvertiser_log(v13, v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceAdvertiser syncHandleInvite:fromPeer:];
    }
  }
}

uint64_t __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2;
  v3[3] = &unk_278B44670;
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  v6 = *(a1 + 64);
  return [objc_msgSend(v6 "delegate")];
}

uint64_t __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v6 = mcadvertiser_log(a1, a2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Invitation handler called.", buf, 2u);
  }

  v9 = mcadvertiser_log(v7, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a3 && v4)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Invitation accepted.", buf, 2u);
    }

    v11 = [*(a1 + 32) peerID];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_46;
    v22[3] = &unk_278B44648;
    v12 = *(a1 + 48);
    v23 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v24 = v12;
    v25 = *(a1 + 64);
    v26 = a3;
    return [a3 nearbyConnectionDataForPeer:v11 withCompletionHandler:v22];
  }

  else
  {
    if (v10)
    {
      *buf = 67109378;
      v30 = v4;
      v31 = 2112;
      v32 = a3;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Invitation declined (accept=%d, session=%@).", buf, 0x12u);
    }

    v14 = [objc_msgSend(*(a1 + 64) "myPeerID")];
    v15 = [objc_msgSend(*(a1 + 32) "peerID")];
    v27[0] = @"MCNearbyServiceMessageIDKey";
    v28[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v28[1] = v14;
    v27[1] = @"MCNearbyServiceSenderPeerIDKey";
    v27[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v28[2] = v15;
    v27[3] = @"MCNearbyServiceAcceptInviteKey";
    v28[3] = [MEMORY[0x277CCABB0] numberWithBool:0];
    v27[4] = @"MCNearbyServiceInviteIDKey";
    v28[4] = [*(a1 + 40) objectForKey:@"MCNearbyServiceInviteIDKey"];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
    v17 = *(a1 + 64);
    v18 = *(v17 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_56;
    block[3] = &unk_278B43DC8;
    block[4] = v17;
    block[5] = v16;
    v21 = *(a1 + 32);
    dispatch_async(v18, block);
    v19 = [*(a1 + 40) objectForKey:@"MCNearbyServiceInviteIDKey"];
    return [*(*(a1 + 64) + 96) removeObjectForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"from:%@=%@", objc_msgSend(objc_msgSend(*(a1 + 32), "peerID"), "displayName"), v19)}];
  }
}

void __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_46(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [*(a1 + 32) objectForKey:@"MCNearbyServiceInviteIDKey"];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"from:%@=%@", objc_msgSend(objc_msgSend(*(a1 + 40), "peerID"), "displayName"), v4];
    v15[0] = @"MCNearbyServiceMessageIDKey";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
    v15[1] = @"MCNearbyServiceSenderPeerIDKey";
    v15[2] = @"MCNearbyServiceRecipientPeerIDKey";
    v17 = *(a1 + 48);
    v15[3] = @"MCNearbyServiceAcceptInviteKey";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v19 = a2;
    v15[4] = @"MCNearbyServiceConnectionDataKey";
    v15[5] = @"MCNearbyServiceInviteIDKey";
    v20 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:v15 count:6];
    v7 = *(a1 + 64);
    v8 = *(v7 + 88);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_52;
    block[3] = &unk_278B43DC8;
    block[4] = v7;
    block[5] = v6;
    v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    dispatch_async(v8, block);
    v13[0] = @"MCNearbyServiceRecipientPeerIDKey";
    v9 = [*(a1 + 40) peerID];
    v13[1] = @"MCNearbyServiceSessionKey";
    v14[0] = v9;
    v14[1] = *(a1 + 72);
    [*(*(a1 + 64) + 96) setObject:objc_msgSend(MEMORY[0x277CBEAC0] forKey:{"dictionaryWithObjects:forKeys:count:", v14, v13, 2), v5}];
  }

  else
  {
    v10 = mcadvertiser_log(a1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_46_cold_1();
    }
  }
}

uint64_t __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_52(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v1 = a1[2].i64[1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53;
  v5[3] = &unk_278B44620;
  v3 = a1[3];
  v6 = vextq_s8(v3, v3, 8uLL);
  return [v2 syncSendDictionary:v1 toPeer:v3.i64[0] withCompletionHandler:v5];
}

void __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = mcadvertiser_log(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53_cold_1();
    }
  }
}

uint64_t __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_56(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v1 = a1[2].i64[1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_57;
  v5[3] = &unk_278B44620;
  v3 = a1[3];
  v6 = vextq_s8(v3, v3, 8uLL);
  return [v2 syncSendDictionary:v1 toPeer:v3.i64[0] withCompletionHandler:v5];
}

void __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_57(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = mcadvertiser_log(result, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53_cold_1();
    }
  }
}

- (void)syncHandleInviteConnect:(id)connect fromPeer:(id)peer
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = -[MCPeerID initWithSerializedRepresentation:]([MCPeerID alloc], "initWithSerializedRepresentation:", [connect objectForKey:@"MCNearbyServiceSenderPeerIDKey"]);
  v8 = -[MCPeerID initWithSerializedRepresentation:]([MCPeerID alloc], "initWithSerializedRepresentation:", [connect objectForKey:@"MCNearbyServiceRecipientPeerIDKey"]);
  v10 = mcadvertiser_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    connectCopy = connect;
    v29 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Got invite connect [%@] from peer [%@].", buf, 0x16u);
  }

  v11 = [(MCPeerID *)[(MCNearbyServiceAdvertiser *)self myPeerID] isEqual:v8];
  if (v11)
  {
    v13 = [objc_msgSend(peer "peerID")];
    if (v13)
    {
      v15 = [connect objectForKey:@"MCNearbyServiceConnectionDataKey"];
      v16 = [connect objectForKey:@"MCNearbyServiceInviteIDKey"];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"from:%@=%@", objc_msgSend(objc_msgSend(peer, "peerID"), "displayName"), v16];
      v18 = [(NSMutableDictionary *)self->_invites objectForKey:v17];
      v19 = [v18 objectForKey:@"MCNearbyServiceRecipientPeerIDKey"];
      v20 = [v18 objectForKey:@"MCNearbyServiceSessionKey"];
      v21 = [(MCPeerID *)v7 isEqual:v19];
      if (v21)
      {
        if (v20)
        {
          [v20 connectPeer:objc_msgSend(peer withNearbyConnectionData:{"peerID"), v15}];
          [(NSMutableDictionary *)self->_invites removeObjectForKey:v17];
          [(MCNearbyServiceAdvertiser *)self syncCloseConnectionForPeer:peer];
        }

        else
        {
          v26 = mcadvertiser_log(v21, v22);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [MCNearbyServiceAdvertiser syncHandleInviteConnect:fromPeer:];
          }
        }
      }

      else
      {
        v25 = mcadvertiser_log(v21, v22);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [MCNearbyServiceAdvertiser syncHandleInviteConnect:v7 fromPeer:?];
        }
      }
    }

    else
    {
      v24 = mcadvertiser_log(v13, v14);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MCNearbyServiceAdvertiser syncHandleInviteConnect:fromPeer:];
      }
    }
  }

  else
  {
    v23 = mcadvertiser_log(v11, v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceAdvertiser syncHandleInviteConnect:fromPeer:];
    }
  }
}

- (void)syncSendData:(id)data toPeer:(id)peer withCompletionHandler:(id)handler
{
  state = [peer state];
  if (!state)
  {
    v10 = mcadvertiser_log(state, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MCNearbyServiceAdvertiser syncSendData:peer toPeer:? withCompletionHandler:?];
    }
  }

  [peer sendData:data withCompletionHandler:handler];
}

- (void)syncReceivedData:(id)data fromPeer:(id)peer
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v8 = mcadvertiser_log(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    peerCopy = peer;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Received dict [%@] from peer [%@].", &v13, 0x16u);
  }

  if (v6)
  {
    v9 = [objc_msgSend(v6 objectForKey:{@"MCNearbyServiceMessageIDKey", "unsignedIntegerValue"}];
    if (v9 == 3)
    {
      [(MCNearbyServiceAdvertiser *)self syncHandleInviteConnect:v6 fromPeer:peer];
    }

    else
    {
      v11 = v9;
      if (v9 == 1)
      {
        [(MCNearbyServiceAdvertiser *)self syncHandleInvite:v6 fromPeer:peer];
      }

      else
      {
        v12 = mcadvertiser_log(v9, v10);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 67109120;
          LODWORD(v14) = v11;
          _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Unknown or invalid nearby message type for the advertiser: %d.", &v13, 8u);
        }
      }
    }
  }
}

- (void)syncHandleIncomingInputStream:(id)stream outputStream:(id)outputStream
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = -[MCNearbyDiscoveryPeerConnection initWithLocalServiceName:]([MCNearbyDiscoveryPeerConnection alloc], "initWithLocalServiceName:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@+%@", -[MCPeerID idString](-[MCNearbyServiceAdvertiser myPeerID](self, "myPeerID"), "idString"), -[MCPeerID displayName](-[MCNearbyServiceAdvertiser myPeerID](self, "myPeerID"), "displayName")]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke;
  v11[3] = &unk_278B446E8;
  v11[4] = v7;
  v11[5] = self;
  [(MCNearbyDiscoveryPeerConnection *)v7 setConnectedHandler:v11];
  v8 = [(MCNearbyDiscoveryPeerConnection *)v7 attachInputStream:stream outputStream:outputStream];
  v10 = mcadvertiser_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = v7;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "PeerConnection (advertiser side) created (%p).", buf, 0xCu);
  }
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = mcadvertiser_log(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 134218242;
    v23 = v10;
    v24 = 2112;
    v25 = a2;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "PeerConnection [%p] connectedHandler (advertiser side), remote identifier [%@].", buf, 0x16u);
  }

  v11 = [a4 copy];
  v13 = v11;
  if (a2 && !a5)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(v15 + 88);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63;
    v21[3] = &unk_278B43F08;
    v21[4] = v15;
    v21[5] = a2;
    v21[6] = v14;
    v21[7] = v13;
    dispatch_async(v16, v21);
    return;
  }

  v17 = mcadvertiser_log(v11, v12);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_cold_1(a5);
    if (!a2)
    {
LABEL_8:
      v20 = mcadvertiser_log(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_cold_2();
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_8;
  }

  if (v13)
  {
    v13[2](v13, 0);
  }
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = 0;
  v2 = [*(a1 + 32) parseIDString:&v36 displayName:&v35 fromIdentifier:*(a1 + 40)];
  if (v36)
  {
    v4 = v35 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = [MCPeerID alloc];
    v7 = [(MCPeerID *)v6 initWithIDString:v36 displayName:v35];
    v8 = [*(*(a1 + 32) + 72) objectForKey:v7];
    if (v8)
    {
      v10 = v8;
      v11 = [(MCNearbyDiscoveryPeer *)v8 state];
      v12 = v11;
      v14 = mcadvertiser_log(v11, v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        v17 = [(MCNearbyDiscoveryPeer *)v10 state];
        *buf = 138412802;
        v38 = v10;
        v39 = 1024;
        v40 = v17;
        v41 = 1024;
        v42 = v12 != 2;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Peer [%@] (advertiser side) already in dictionary [state = %d], decision = %d.", buf, 0x18u);
      }

      if (v12 != 2)
      {
        v15 = [*(a1 + 32) syncCloseConnectionForPeer:v10];
LABEL_17:
        v22 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v18 = mcadvertiser_log(0, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(MCPeerID *)v7 displayNameAndPID];
        *buf = 138412290;
        v38 = v19;
        _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Peer [%@] (advertiser side) not in dictionary, creating one, decision = YES.", buf, 0xCu);
      }

      v20 = [[MCNearbyDiscoveryPeer alloc] initWithPeerID:v7];
      if (v20)
      {
        v10 = v20;
        v15 = [*(*(a1 + 32) + 72) setObject:v20 forKey:v7];
        goto LABEL_17;
      }

      v23 = mcadvertiser_log(0, v21);
      v15 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63_cold_2(v7);
      }

      v10 = 0;
    }

    v22 = 0;
LABEL_22:
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_65;
    v32 = &unk_278B446C0;
    v33 = *(a1 + 32);
    v34 = v10;
    if (v22)
    {
      [*(a1 + 48) setReceiveDataHandler:&v29];
      v24 = [*(a1 + 32) syncAttachConnection:*(a1 + 48) toPeer:{v10, v29, v30, v31, v32, v33, v34}];
      v26 = mcadvertiser_log(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v10;
        v27 = "Peer [%@] connected (advertiser side) successfully.";
LABEL_27:
        _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      }
    }

    else
    {
      v26 = mcadvertiser_log(v15, v16);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v10;
        v27 = "Peer [%@] (advertiser side) decision == NO.";
        goto LABEL_27;
      }
    }

    v28 = *(a1 + 56);
    if (v28)
    {
      (*(v28 + 16))(v28, v22);
    }

    return;
  }

  v5 = mcadvertiser_log(v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63_cold_1();
  }
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_65(int8x16_t *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a1[2].i64[0];
    v5 = *(v4 + 88);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_2;
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
      block[2] = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_66;
      block[3] = &unk_278B43C60;
      v10 = *(v9 + 88);
      v18 = v8;
      dispatch_async(v10, block);
    }

    v11 = mcadvertiser_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[2].i64[1];
      v13 = [a2 length];
      *buf = 138412546;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Peer [%@] passing received data (length=%u) to the app.", buf, 0x12u);
    }

    v15 = a1[2].i64[0];
    v14 = a1[2].i64[1];
    v5 = *(v15 + 88);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_67;
    v16[3] = &unk_278B43C88;
    v16[4] = v15;
    v16[5] = a2;
    v16[6] = v14;
    v6 = v16;
  }

  dispatch_async(v5, v6);
}

uint64_t __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = mcadvertiser_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_2_cold_1(a1);
  }

  return [*(a1 + 48) syncCloseConnectionForPeer:*(a1 + 32)];
}

uint64_t __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_66(uint64_t a1, uint64_t a2)
{
  v3 = mcadvertiser_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_66_cold_1();
  }

  return [*(a1 + 40) syncCloseConnectionForPeer:*(a1 + 32)];
}

- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = mcadvertiser_log(self, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    streamCopy = stream;
    v13 = 2048;
    outputStreamCopy = outputStream;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Accepted connection with inputStream [%p] outputStream [%p].", buf, 0x16u);
  }

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MCNearbyServiceAdvertiser_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke;
  block[3] = &unk_278B43C88;
  block[4] = self;
  block[5] = stream;
  block[6] = outputStream;
  dispatch_async(syncQueue, block);
}

- (void)netServiceDidStop:(id)stop
{
  v3 = mcadvertiser_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Server stopped.", v4, 2u);
  }
}

- (void)netServiceDidPublish:(id)publish
{
  v3 = mcadvertiser_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Server did publish.", v4, 2u);
  }
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  v5 = mcadvertiser_log(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MCNearbyServiceAdvertiser netService:didNotPublish:];
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
  v9[2] = __54__MCNearbyServiceAdvertiser_netService_didNotPublish___block_invoke;
  v9[3] = &unk_278B43C60;
  v9[4] = self;
  v9[5] = v8;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __54__MCNearbyServiceAdvertiser_netService_didNotPublish___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 advertiser:v4 didNotStartAdvertisingPeer:v5];
  }

  return result;
}

- (void)syncHandleInvite:fromPeer:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [objc_msgSend(v0 "myPeerID")];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)syncHandleInvite:fromPeer:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [objc_msgSend(v0 "peerID")];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__MCNearbyServiceAdvertiser_syncHandleInvite_fromPeer___block_invoke_2_53_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)syncHandleInviteConnect:fromPeer:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [objc_msgSend(v0 "myPeerID")];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)syncHandleInviteConnect:fromPeer:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [objc_msgSend(v0 "peerID")];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)syncHandleInviteConnect:(void *)a1 fromPeer:.cold.3(void *a1)
{
  [a1 displayNameAndPID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)syncHandleInviteConnect:fromPeer:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_239FB7000, v1, OS_LOG_TYPE_ERROR, "No session for peer [%@]. invites=[%@].", v2, 0x16u);
}

- (void)syncSendData:(void *)a1 toPeer:withCompletionHandler:.cold.1(void *a1)
{
  [objc_msgSend(a1 "peerID")];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_cold_1(void *a1)
{
  [a1 localizedDescription];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_63_cold_2(void *a1)
{
  [a1 displayNameAndPID];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __72__MCNearbyServiceAdvertiser_syncHandleIncomingInputStream_outputStream___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 40) localizedDescription];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)netService:didNotPublish:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end