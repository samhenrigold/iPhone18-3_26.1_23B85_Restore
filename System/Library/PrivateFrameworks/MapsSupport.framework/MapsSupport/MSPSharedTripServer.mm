@interface MSPSharedTripServer
+ (void)migrateIfNeeded;
- (BOOL)_connectionCanControlReceiving:(id)receiving;
- (BOOL)_connectionCanControlSharing:(id)sharing;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSPSharedTripServer)init;
- (id)_subscribedConnectionsForTripID:(id)d createIfNeeded:(BOOL)needed;
- (id)connections;
- (void)_purgeSubscriptionsForConnection:(id)connection;
- (void)blockSharedTrip:(id)trip;
- (void)checkinWithCompletion:(id)completion;
- (void)cleanConnections;
- (void)clearBlockedTripIdentifiers;
- (void)createControllers;
- (void)createXPCListener;
- (void)dealloc;
- (void)etaController:(id)controller didUpdateDestinationForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateETAForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateReachedDestinationForSharedTrip:(id)trip;
- (void)etaController:(id)controller didUpdateRouteForSharedTrip:(id)trip;
- (void)etaController:(id)controller sharedTripDidBecomeAvailable:(id)available;
- (void)etaController:(id)controller sharedTripDidBecomeUnavailable:(id)unavailable;
- (void)etaController:(id)controller sharedTripDidClose:(id)close;
- (void)fetchActiveHandlesWithCompletion:(id)completion;
- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)completion;
- (void)fetchSharedTripsWithCompletion:(id)completion;
- (void)fetchSharingIdentityWithCompletion:(id)completion;
- (void)invalidateActiveHandlesForSenderController:(id)controller;
- (void)purgeExpiredBlockedTripIdentifiers;
- (void)relay:(id)relay accountStatusChanged:(BOOL)changed;
- (void)reportUserConfirmationOfSharingIdentity:(id)identity completion:(id)completion;
- (void)senderController:(id)controller didInvalidateSharedTripWithError:(id)error;
- (void)senderController:(id)controller didStartSharingWithGroupIdentifier:(id)identifier;
- (void)startSharingTripWithContacts:(id)contacts capabilityType:(unint64_t)type serviceName:(id)name completion:(id)completion;
- (void)startSharingTripWithMessagesGroup:(id)group completion:(id)completion;
- (void)stopSharingTripWithContacts:(id)contacts reason:(unint64_t)reason completion:(id)completion;
- (void)stopSharingTripWithMessagesGroup:(id)group reason:(unint64_t)reason completion:(id)completion;
- (void)stopSharingTripWithReason:(unint64_t)reason completion:(id)completion;
- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion;
- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MSPSharedTripServer

- (MSPSharedTripServer)init
{
  v5.receiver = self;
  v5.super_class = MSPSharedTripServer;
  v2 = [(MSPSharedTripServer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSPSharedTripServer *)v2 createControllers];
    [(MSPSharedTripServer *)v3 createXPCListener];
  }

  return v3;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog([(MSPSharedTripServer *)self cleanConnections]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v6 = "[MSPSharedTripServer dealloc]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MSPSharedTripServer;
  [(MSPSharedTripServer *)&v4 dealloc];
}

- (void)cleanConnections
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v16 = "[MSPSharedTripServer cleanConnections]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_connections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 invalidate];
        [v9 setExportedObject:0];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(MSPReceiverETAController *)self->_receivingController cleanTimer];
  [(NSXPCListener *)self->_listener invalidate];
}

- (void)createXPCListener
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_listener)
  {
    v3 = MSPGetSharedTripLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136380675;
      v13 = "[MSPSharedTripServer createXPCListener]";
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", &v12, 0xCu);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    connections = self->_connections;
    self->_connections = v4;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    peersByConnection = self->_peersByConnection;
    self->_peersByConnection = weakToStrongObjectsMapTable;

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    connectionSubscriptionsByTripID = self->_connectionSubscriptionsByTripID;
    self->_connectionSubscriptionsByTripID = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip"];
    listener = self->_listener;
    self->_listener = v10;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:MEMORY[0x277D85CD0]];
    [(NSXPCListener *)self->_listener resume];
    notify_post(MSPSharedTripServerStartDarwinNotification);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [[MSPSharedTripXPCPeer alloc] initWithConnection:connectionCopy];
  if ([(MSPSharedTripXPCPeer *)v7 canControlSharing]|| (v8 = [(MSPSharedTripXPCPeer *)v7 canControlReceiving], (v8 & 1) != 0))
  {
    [(NSMapTable *)self->_peersByConnection setObject:v7 forKey:connectionCopy];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286963800];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0, listenerCopy}];
    [v9 setClasses:v12 forSelector:sel_fetchSharedTripsWithCompletion_ argumentIndex:0 ofReply:1];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    [v9 setClasses:v15 forSelector:sel_checkinWithCompletion_ argumentIndex:3 ofReply:1];

    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    v16 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286972300];
    [connectionCopy setRemoteObjectInterface:v16];

    v17 = MSPGetSharedTripLog([connectionCopy _setQueue:MEMORY[0x277D85CD0]]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v29 = connectionCopy;
      v30 = 1024;
      canControlSharing = [(MSPSharedTripXPCPeer *)v7 canControlSharing];
      v32 = 1024;
      canControlReceiving = [(MSPSharedTripXPCPeer *)v7 canControlReceiving];
      _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEBUG, "[Server] Accepting new connection: %@, can share: %d, can receive: %d", buf, 0x18u);
    }

    objc_initWeak(buf, connectionCopy);
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke;
    v24[3] = &unk_279865EA8;
    objc_copyWeak(&v25, buf);
    objc_copyWeak(&v26, &location);
    [connectionCopy setInvalidationHandler:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke_113;
    v21[3] = &unk_279865EA8;
    objc_copyWeak(&v22, buf);
    objc_copyWeak(&v23, &location);
    [connectionCopy setInterruptionHandler:v21];
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    [connectionCopy resume];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    v18 = 1;
  }

  else
  {
    v9 = MSPGetSharedTripLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = connectionCopy;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "[Server] will not accept connection due to missing entitlements: %@", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

void __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection invalidated: %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    [v4[6] removeObject:WeakRetained];
    [v5[8] removeObjectForKey:WeakRetained];
    [v5 _purgeSubscriptionsForConnection:WeakRetained];
  }
}

void __58__MSPSharedTripServer_listener_shouldAcceptNewConnection___block_invoke_113(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripLog(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection interrupted: %@", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    [v4[6] removeObject:WeakRetained];
    [v5[8] removeObjectForKey:WeakRetained];
    [v5 _purgeSubscriptionsForConnection:WeakRetained];
  }
}

- (BOOL)_connectionCanControlSharing:(id)sharing
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:sharing];
  canControlSharing = [v3 canControlSharing];

  return canControlSharing;
}

- (BOOL)_connectionCanControlReceiving:(id)receiving
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:receiving];
  canControlReceiving = [v3 canControlReceiving];

  return canControlReceiving;
}

- (id)connections
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(NSMutableSet *)self->_connections copy];

  return v3;
}

- (id)_subscribedConnectionsForTripID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID objectForKeyedSubscript:dCopy];
    v8 = v7;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = !neededCopy;
    }

    if (!v9)
    {
      v10 = MSPGetSharedTripLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "[Server] Initialising subscriptions for trip %@", &v12, 0xCu);
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID setObject:v8 forKeyedSubscript:dCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_purgeSubscriptionsForConnection:(id)connection
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = MSPGetSharedTripLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = connectionCopy;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] Purging subscriptions for %@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  connectionSubscriptionsByTripID = self->_connectionSubscriptionsByTripID;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__MSPSharedTripServer__purgeSubscriptionsForConnection___block_invoke;
  v28[3] = &unk_279865ED0;
  v22 = connectionCopy;
  v29 = v22;
  v9 = v7;
  v30 = v9;
  [(NSMutableDictionary *)connectionSubscriptionsByTripID enumerateKeysAndObjectsUsingBlock:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:v15 createIfNeeded:0];
        if (![v16 count])
        {
          v17 = MSPGetSharedTripLog(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v15;
            _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[Server] Unsubscribing from trip %@, no more connections", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_connectionSubscriptionsByTripID setObject:0 forKeyedSubscript:v15];
          receivingController = self->_receivingController;
          v23 = 0;
          [(MSPReceiverETAController *)receivingController unsubscribeFromUpdatesToSharedTrip:v15 error:&v23];
          v19 = v23;
          v20 = v19;
          if (v19)
          {
            v21 = MSPGetSharedTripLog(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v32 = v15;
              v33 = 2112;
              v34 = v20;
              _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_ERROR, "[Server] Error unsubscribing from trip %@ for purged connection: %@", buf, 0x16u);
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v12);
  }
}

void __56__MSPSharedTripServer__purgeSubscriptionsForConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
    [v5 removeObject:*(a1 + 32)];
  }
}

- (void)createControllers
{
  v3 = objc_alloc_init(MSPSharedTripRelay);
  idsRelay = self->_idsRelay;
  self->_idsRelay = v3;

  [(MSPSharedTripRelay *)self->_idsRelay setAvailabilityDelegate:self];
  v5 = [[MSPSenderETAController alloc] initWithRelay:self->_idsRelay];
  sendingController = self->_sendingController;
  self->_sendingController = v5;

  [(MSPSenderETAController *)self->_sendingController setDelegate:self];
  v7 = [[MSPReceiverETAController alloc] initWithRelay:self->_idsRelay];
  receivingController = self->_receivingController;
  self->_receivingController = v7;

  [(MSPReceiverETAController *)self->_receivingController setDelegate:self];
  self->_capabilityFetchingServer = objc_alloc_init(MSPSharedTripCapabilityFetchingServer);

  MEMORY[0x2821F96F8]();
}

- (void)etaController:(id)controller didUpdateDestinationForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy destinationDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller didUpdateReachedDestinationForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy destinationReachedDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateReachedDestinationForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller didUpdateETAForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy etaDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateETAForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller didUpdateRouteForSharedTrip:(id)trip
{
  v24 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  v6 = MSPGetSharedTripLog(tripCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy routeDidUpdateForSharedTrip:tripCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:didUpdateRouteForSharedTrip:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller sharedTripDidBecomeAvailable:(id)available
{
  v24 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  v6 = MSPGetSharedTripLog(availableCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidBecomeAvailable:availableCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeAvailable:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller sharedTripDidBecomeUnavailable:(id)unavailable
{
  v24 = *MEMORY[0x277D85DE8];
  unavailableCopy = unavailable;
  v6 = MSPGetSharedTripLog(unavailableCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidBecomeUnavailable:unavailableCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidBecomeUnavailable:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)etaController:(id)controller sharedTripDidClose:(id)close
{
  v24 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v6 = MSPGetSharedTripLog(closeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlReceiving:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidClose:closeCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer etaController:sharedTripDidClose:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)checkinWithCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
  v7 = [(NSMapTable *)self->_peersByConnection objectForKey:currentConnection];
  if ([v7 canControlSharing])
  {
    activeHandles = [(MSPSenderETAController *)self->_sendingController activeHandles];
  }

  else
  {
    activeHandles = MEMORY[0x277CBEBF8];
  }

  if ([v7 canControlSharing])
  {
    serviceNamesByActiveHandle = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
  }

  else
  {
    serviceNamesByActiveHandle = MEMORY[0x277CBEC10];
  }

  canControlReceiving = [v7 canControlReceiving];
  if (canControlReceiving)
  {
    canControlReceiving = [(MSPReceiverETAController *)self->_receivingController allTrips];
    v11 = canControlReceiving;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = MSPGetSharedTripLog(canControlReceiving);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if ([v7 canControlSharing])
    {
      v13 = "";
    }

    else
    {
      v13 = " (not entitled)";
    }

    v14 = [v11 count];
    canControlReceiving2 = [v7 canControlReceiving];
    v19 = 138413571;
    v16 = "";
    if (!canControlReceiving2)
    {
      v16 = " (not entitled)";
    }

    v20 = currentConnection;
    v21 = 2113;
    v22 = sharingIdentity;
    v23 = 2113;
    v24 = activeHandles;
    v25 = 2080;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2080;
    v30 = v16;
    _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[Server] Checking in on %@ (identity: %{private}@, %{private}@%s, %lu%s trips", &v19, 0x3Eu);
  }

  canControlSharing = [v7 canControlSharing];
  if ([v7 canControlReceiving])
  {
    v18 = canControlSharing | 2;
  }

  else
  {
    v18 = canControlSharing;
  }

  completionCopy[2](completionCopy, sharingIdentity, activeHandles, serviceNamesByActiveHandle, v11, v18);
}

- (void)fetchSharingIdentityWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  sharingIdentity = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    v7 = MSPGetSharedTripLog(sharingIdentity);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138477827;
      v10 = sharingIdentity;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Server] fetchSendingIdentity: %{private}@)", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, sharingIdentity);
  }

  else
  {
    v8 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharingIdentityWithCompletion:]";
      v11 = 2112;
      v12 = sharingIdentity;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }
}

- (void)fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:(id)completion
{
  v20[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = currentConnection;
  if (currentConnection)
  {
    currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection];
    if (currentConnection)
    {

      v7 = [MSPMapsDefaultsAccessor get:@"MapsSharedETADefaultSender"];
      sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
      handle = [sharingIdentity handle];

      if (handle)
      {
        v6 = 0;
      }

      else
      {
        v20[0] = *MEMORY[0x277CCA068];
        *v15 = @"Invalid account for sharing";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v20 count:1];
        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:5 userInfo:v11];

        if (v6)
        {
          goto LABEL_10;
        }
      }

      if (v7)
      {
        v10 = [v7 isEqual:handle];
        v12 = v10 ^ 1;
        goto LABEL_15;
      }

LABEL_10:
      if (v6)
      {
        v13 = MSPGetSharedTripLog(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v15 = 138412290;
          *&v15[4] = v6;
          _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] fetchRequiresUserConfirmationOfSharingIdentity failed with error: %@", v15, 0xCu);
        }

        v12 = 1;
        goto LABEL_19;
      }

      v12 = 1;
LABEL_15:
      v13 = MSPGetSharedTripLog(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = "NO";
        *v15 = 136315651;
        if (v12)
        {
          v14 = "YES";
        }

        *&v15[4] = v14;
        v16 = 2113;
        v17 = handle;
        v18 = 2113;
        v19 = v7;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Server] fetchRequiresUserConfirmationOfSharingIdentity: %s, handle: %{private}@, last confirmed: %{private}@", v15, 0x20u);
      }

LABEL_19:

      completionCopy[2](completionCopy, v12, handle, v6);
      goto LABEL_20;
    }
  }

  v7 = MSPGetSharedTripLog(currentConnection);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v15 = 136315394;
    *&v15[4] = "[MSPSharedTripServer fetchRequiresUserConfirmationOfSharingIdentityWithCompletion:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v15, 0x16u);
  }

LABEL_20:
}

- (void)reportUserConfirmationOfSharingIdentity:(id)identity completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v9 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
    handle = [sharingIdentity handle];

    if (([handle isEqualToString:identityCopy]& 1) != 0)
    {
      [MSPMapsDefaultsAccessor set:@"MapsSharedETADefaultSender" value:identityCopy];
      v12 = MSPGetSharedTripLog(+[MSPMapsDefaultsAccessor synchronize]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138477827;
        *&v15[4] = identityCopy;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[Server] reportUserConfirmationOfSharingIdentity: set user-confirmed handle: %{private}@", v15, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v18[0] = *MEMORY[0x277CCA068];
      *v15 = @"The provided sharing handle does not match the current sharing identity";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v18 count:1];
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Maps.SharedTrip" code:6 userInfo:v13];

      v12 = MSPGetSharedTripLog(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 138412290;
        *&v15[4] = v9;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[Server] reportUserConfirmationOfSharingIdentity failed with error: %@", v15, 0xCu);
      }
    }

    completionCopy[2](completionCopy, v9);
  }

  else
  {
    handle = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(handle, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "[MSPSharedTripServer reportUserConfirmationOfSharingIdentity:completion:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_25813A000, handle, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", v15, 0x16u);
    }
  }
}

- (void)startSharingTripWithContacts:(id)contacts capabilityType:(unint64_t)type serviceName:(id)name completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  nameCopy = name;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v14 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v16 = MSPGetSharedTripLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = contactsCopy;
      _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEFAULT, "[Server] Start sharing with contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v19 = 0;
    [(MSPSenderETAController *)sendingController startSharingWith:contactsCopy capabilityType:type serviceName:nameCopy error:&v19];
    v14 = v19;
    completionCopy[2](completionCopy, v14);
  }

  else
  {
    v18 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[MSPSharedTripServer startSharingTripWithContacts:capabilityType:serviceName:completion:]";
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }
}

- (void)startSharingTripWithMessagesGroup:(id)group completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v9 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v11 = MSPGetSharedTripLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = groupCopy;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_DEFAULT, "[Service] Start sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v14 = 0;
    [(MSPSenderETAController *)sendingController startSharingWithGroup:groupCopy error:&v14];
    v9 = v14;
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    v13 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[MSPSharedTripServer startSharingTripWithMessagesGroup:completion:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }
}

- (void)stopSharingTripWithContacts:(id)contacts reason:(unint64_t)reason completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v11 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v13 = MSPGetSharedTripLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = contactsCopy;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with Maps/Messages contacts: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v16 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWith:contactsCopy reason:reason error:&v16];
    v11 = v16;
    [MEMORY[0x277D0E788] captureUserAction:105 target:0 value:0];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    v15 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[MSPSharedTripServer stopSharingTripWithContacts:reason:completion:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }
}

- (void)stopSharingTripWithMessagesGroup:(id)group reason:(unint64_t)reason completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v11 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v13 = MSPGetSharedTripLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = groupCopy;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEFAULT, "[Service] stop sharing trip with group: %@", buf, 0xCu);
    }

    sendingController = self->_sendingController;
    v16 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithGroup:groupCopy reason:reason error:&v16];
    v11 = v16;
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    v15 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[MSPSharedTripServer stopSharingTripWithMessagesGroup:reason:completion:]";
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }
}

- (void)stopSharingTripWithReason:(unint64_t)reason completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v10 = MSPGetSharedTripLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEFAULT, "[Server] Stop sharing", buf, 2u);
    }

    sendingController = self->_sendingController;
    v15 = 0;
    [(MSPSenderETAController *)sendingController stopSharingWithReason:reason error:&v15];
    v8 = v15;
    v12 = [[MSPSenderETAController alloc] initWithRelay:self->_idsRelay];
    v13 = self->_sendingController;
    self->_sendingController = v12;

    [(MSPSenderETAController *)self->_sendingController setDelegate:self];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v14 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[MSPSharedTripServer stopSharingTripWithReason:completion:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }
  }
}

- (void)fetchActiveHandlesWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  activeHandles = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    activeHandles = [(MSPSenderETAController *)self->_sendingController activeHandles];
    serviceNamesByActiveHandle = [(MSPSenderETAController *)self->_sendingController serviceNamesByActiveHandle];
    v8 = MSPGetSharedTripLog(serviceNamesByActiveHandle);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = activeHandles;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Server] Fetch active handles: %@", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, activeHandles, serviceNamesByActiveHandle);
  }

  else
  {
    serviceNamesByActiveHandle = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(serviceNamesByActiveHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchActiveHandlesWithCompletion:]";
      v11 = 2112;
      v12 = activeHandles;
      _os_log_impl(&dword_25813A000, serviceNamesByActiveHandle, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }
}

- (void)subscribeToSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v9 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    v10 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:identifierCopy createIfNeeded:1];
    v11 = [v10 count];
    [v10 addObject:v9];
    v12 = [v10 count];
    v13 = MSPGetSharedTripLog(v12);
    v14 = v13;
    if (v11 == v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "[Server] %@ already subscribed to trip %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v22 = v9;
        v23 = 2112;
        v24 = identifierCopy;
        v25 = 2048;
        v26 = [v10 count];
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Server] Added %@ to subscriptions for trip %@ (%lu subscriptions)", buf, 0x20u);
      }

      v17 = MSPGetSharedTripLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = identifierCopy;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_DEFAULT, "[Server] Subscribe to trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v20 = 0;
      [(MSPReceiverETAController *)receivingController subscribeToUpdatesToSharedTrip:identifierCopy error:&v20];
      v19 = v20;
      (completionCopy)[2](completionCopy, v19);
    }
  }

  else
  {
    v15 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[MSPSharedTripServer subscribeToSharedTripUpdatesWithIdentifier:completion:]";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25813A000, v15, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v10 = v9;
  }
}

- (void)unsubscribeFromSharedTripUpdatesWithIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v9 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    v10 = [(MSPSharedTripServer *)self _subscribedConnectionsForTripID:identifierCopy createIfNeeded:0];
    v11 = [v10 count];
    [v10 removeObject:v9];
    v12 = [v10 count];
    v13 = MSPGetSharedTripLog(v12);
    v14 = v13;
    if (v11 == v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Connection %@ was not subscribed to trip: %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEFAULT, "[Server] Removed connection %@ from subscriptions for trip: %@", buf, 0x16u);
      }

      v15 = [v10 count];
      if (v15)
      {
        v16 = MSPGetSharedTripLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v10 count];
          *buf = 134218242;
          v22 = v17;
          v23 = 2112;
          v24 = identifierCopy;
          _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "[Server] %lu subscribed connections for trip %@", buf, 0x16u);
        }
      }

      v18 = MSPGetSharedTripLog(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = identifierCopy;
        _os_log_impl(&dword_25813A000, v18, OS_LOG_TYPE_DEFAULT, "[Server] Unsubscribe from trip: %@", buf, 0xCu);
      }

      receivingController = self->_receivingController;
      v20 = 0;
      [(MSPReceiverETAController *)receivingController unsubscribeFromUpdatesToSharedTrip:identifierCopy error:&v20];
      v14 = v20;
      completionCopy[2](completionCopy, v14);
    }
  }

  else
  {
    v14 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[MSPSharedTripServer unsubscribeFromSharedTripUpdatesWithIdentifier:completion:]";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v10 = v9;
  }
}

- (void)fetchSharedTripsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  allTrips = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    allTrips = [(MSPReceiverETAController *)self->_receivingController allTrips];
    v7 = MSPGetSharedTripLog(allTrips);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = allTrips;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_DEFAULT, "[Server] Fetching all received trips: %@", &v9, 0xCu);
    }

    completionCopy[2](completionCopy, allTrips);
  }

  else
  {
    v8 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[MSPSharedTripServer fetchSharedTripsWithCompletion:]";
      v11 = 2112;
      v12 = allTrips;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v9, 0x16u);
    }
  }
}

- (void)blockSharedTrip:(id)trip
{
  v14 = *MEMORY[0x277D85DE8];
  tripCopy = trip;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    v8 = MSPGetSharedTripLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = tripCopy;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEFAULT, "[Service] block sharing trip: %@", &v10, 0xCu);
    }

    [(MSPReceiverETAController *)self->_receivingController blockSharedTrip:tripCopy];
  }

  else
  {
    v9 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[MSPSharedTripServer blockSharedTrip:]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v10, 0x16u);
    }
  }
}

- (void)clearBlockedTripIdentifiers
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v4 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    v6 = MSPGetSharedTripLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] clear blocked trip identifiers", &v8, 2u);
    }

    [(MSPReceiverETAController *)self->_receivingController clearBlockedTripIdentifiers];
  }

  else
  {
    v7 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[MSPSharedTripServer clearBlockedTripIdentifiers]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v8, 0x16u);
    }
  }
}

- (void)purgeExpiredBlockedTripIdentifiers
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v4 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripServer *)self _connectionCanControlReceiving:currentConnection], (currentConnection & 1) != 0))
  {

    v6 = MSPGetSharedTripLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Service] purge expired blocked trip identifiers", &v8, 2u);
    }

    [(MSPReceiverETAController *)self->_receivingController purgeExpiredBlockedTripIdentifiers];
  }

  else
  {
    v7 = MSPGetSharedTripLog(currentConnection);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[MSPSharedTripServer purgeExpiredBlockedTripIdentifiers]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", &v8, 0x16u);
    }
  }
}

- (void)senderController:(id)controller didStartSharingWithGroupIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = MSPGetSharedTripLog(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlSharing:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidStartSharingWithIdentifier:identifierCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didStartSharingWithGroupIdentifier:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)senderController:(id)controller didInvalidateSharedTripWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = MSPGetSharedTripLog(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136380675;
    v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        remoteObjectProxy = v12;
        if (v12 && (v12 = [(MSPSharedTripServer *)self _connectionCanControlSharing:v12], (v12 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripInvalidatedWithError:errorCopy];
        }

        else
        {
          v14 = MSPGetSharedTripLog(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v20 = "[MSPSharedTripServer senderController:didInvalidateSharedTripWithError:]";
            v21 = 2112;
            v22 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)invalidateActiveHandlesForSenderController:(id)controller
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = MSPGetSharedTripLog(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "[Server] %s", buf, 0xCu);
  }

  connections = [(MSPSharedTripServer *)self connections];
  activeHandles = [controllerCopy activeHandles];
  v17 = controllerCopy;
  serviceNamesByActiveHandle = [controllerCopy serviceNamesByActiveHandle];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = connections;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        remoteObjectProxy = v14;
        if (v14 && (v14 = [(MSPSharedTripServer *)self _connectionCanControlSharing:v14], (v14 & 1) != 0))
        {

          remoteObjectProxy = [remoteObjectProxy remoteObjectProxy];
          [remoteObjectProxy sharedTripDidUpdateRecipients:activeHandles withServices:serviceNamesByActiveHandle];
        }

        else
        {
          v16 = MSPGetSharedTripLog(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v23 = "[MSPSharedTripServer invalidateActiveHandlesForSenderController:]";
            v24 = 2112;
            v25 = remoteObjectProxy;
            _os_log_impl(&dword_25813A000, v16, OS_LOG_TYPE_DEBUG, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)relay:(id)relay accountStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  v27 = *MEMORY[0x277D85DE8];
  v6 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:changedCopy];
    *buf = 136380931;
    v24 = "[MSPSharedTripServer relay:accountStatusChanged:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEBUG, "[Server] %{private}s signedIntoiCloud %@", buf, 0x16u);
  }

  connections = [(MSPSharedTripServer *)self connections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [connections countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(connections);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = MSPGetSharedTripLog(v9);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          remoteObjectProxy = [v13 remoteObjectProxy];
          *buf = 138412546;
          v24 = v13;
          v25 = 2112;
          v26 = remoteObjectProxy;
          _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Server] connection %@ %@", buf, 0x16u);
        }

        remoteObjectProxy2 = [v13 remoteObjectProxy];
        sharingIdentity = [(MSPSharedTripRelay *)self->_idsRelay sharingIdentity];
        [remoteObjectProxy2 sharingIdentityDidChange:sharingIdentity];

        ++v12;
      }

      while (v10 != v12);
      v9 = [connections countByEnumeratingWithState:&v18 objects:v22 count:16];
      v10 = v9;
    }

    while (v9);
  }
}

+ (void)migrateIfNeeded
{
  mEMORY[0x277D0EB48] = [MEMORY[0x277D0EB48] sharedObject];
  [mEMORY[0x277D0EB48] runAfterFirstUnlock:MEMORY[0x277D85CD0] block:&__block_literal_global];
}

uint64_t __49__MSPSharedTripServer_Migration__migrateIfNeeded__block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  HasValue = _GEOConfigHasValue();
  if (HasValue)
  {
    BOOL = GEOConfigGetBOOL();
    v2 = BOOL;
    v3 = MSPGetSharedTripLog(BOOL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "Will migrate legacy Share ETA user enabled flag: %d", v6, 8u);
    }

    GEOConfigSetBOOL();
    _GEOConfigRemoveValue();
  }

  else
  {
    v4 = MSPGetSharedTripLog(HasValue);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEBUG, "No legacy Share ETA user enabled flag to migrate", v6, 2u);
    }
  }

  +[MSPSharedTripStorageController removeFilesFromBackupsIfNeeded];
  return +[MSPSharedTripBlocklist migrateFromiCloudKVSIfNeeded];
}

@end