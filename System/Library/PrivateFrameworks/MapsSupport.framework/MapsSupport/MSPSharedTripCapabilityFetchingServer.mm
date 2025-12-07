@interface MSPSharedTripCapabilityFetchingServer
- (BOOL)_connectionCanControlSharing:(id)sharing;
- (BOOL)_shouldPermitFetchingHandle:(id)handle;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MSPSharedTripCapabilityFetchingServer)init;
- (id)_resolvedStatusForHandle:(id)handle;
- (void)_checkBlockList;
- (void)_notifyPeersForIDSHandlesIfNeeded:(id)needed;
- (void)_performBlockOnAllCachedStatus:(id)status;
- (void)_performBlockOnAllQueues:(id)queues;
- (void)_removePeerForConnection:(id)connection;
- (void)_scheduleCoalescedBlockListCheckIfNeeded;
- (void)_startMonitoringSystemBlockListIfNeeded;
- (void)_stopMonitoringSystemBlockList;
- (void)_systemBlockListDidUpdate;
- (void)_verifyCurrentlyBlockedStatuses;
- (void)cancelFetchCapabilitiesForContacts:(id)contacts;
- (void)capabilityFetchingQueue:(id)queue didFetchStatusForHandles:(id)handles;
- (void)cleanConnections;
- (void)createXPCListener;
- (void)dealloc;
- (void)fetchCapabilitiesForContacts:(id)contacts;
@end

@implementation MSPSharedTripCapabilityFetchingServer

- (MSPSharedTripCapabilityFetchingServer)init
{
  v32.receiver = self;
  v32.super_class = MSPSharedTripCapabilityFetchingServer;
  v2 = [(MSPSharedTripCapabilityFetchingServer *)&v32 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    peersByConnection = v2->_peersByConnection;
    v2->_peersByConnection = strongToStrongObjectsMapTable;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.Maps.SharedTrip.Capabilities", v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [[MSPSharedTripIDSCapabilityFetchingQueue alloc] initWithIDSService:@"com.apple.private.alloy.maps.eta" capabilityType:4 delegate:v2 queue:v2->_workQueue label:@"Maps"];
    mapsStatusFetchQueue = v2->_mapsStatusFetchQueue;
    v2->_mapsStatusFetchQueue = v8;

    v10 = [[MSPSharedTripIDSCapabilityFetchingQueue alloc] initWithIDSService:@"com.apple.madrid" capabilityType:3 delegate:v2 queue:v2->_workQueue label:@"iMessage"];
    messagesStatusFetchQueue = v2->_messagesStatusFetchQueue;
    v2->_messagesStatusFetchQueue = v10;

    v12 = [[MSPSharedTripMessagesCapabilityFetchingQueue alloc] initWithDelegate:v2 queue:v2->_workQueue label:@"Text Message"];
    textMessageStatusFetchQueue = v2->_textMessageStatusFetchQueue;
    v2->_textMessageStatusFetchQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToMapsStatus = v2->_identifierToMapsStatus;
    v2->_identifierToMapsStatus = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToMessagesStatus = v2->_identifierToMessagesStatus;
    v2->_identifierToMessagesStatus = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToTextMessageStatus = v2->_identifierToTextMessageStatus;
    v2->_identifierToTextMessageStatus = v18;

    GEOConfigGetDouble();
    v21 = v20;
    objc_initWeak(&location, v2);
    v22 = v2->_workQueue;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __45__MSPSharedTripCapabilityFetchingServer_init__block_invoke;
    v29 = &unk_2798679B0;
    objc_copyWeak(&v30, &location);
    v23 = [GCDTimer scheduledTimerWithTimeInterval:v22 queue:1 repeating:&v26 block:v21];
    purgeTimer = v2->_purgeTimer;
    v2->_purgeTimer = v23;

    [(MSPSharedTripCapabilityFetchingServer *)v2 createXPCListener:v26];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__MSPSharedTripCapabilityFetchingServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _purgeExpiredStatuses];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_blockListMonitoringObserver];

  [(GCDTimer *)self->_purgeTimer invalidate];
  v4 = MSPGetSharedTripCapabilityFetchingLog([(MSPSharedTripCapabilityFetchingServer *)self cleanConnections]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136380675;
    v7 = "[MSPSharedTripCapabilityFetchingServer dealloc]";
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "[Server] %{private}s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSPSharedTripCapabilityFetchingServer;
  [(MSPSharedTripCapabilityFetchingServer *)&v5 dealloc];
}

- (void)cleanConnections
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136380675;
    v17 = "[MSPSharedTripCapabilityFetchingServer cleanConnections]";
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[Server] %{private}s", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  keyEnumerator = [(NSMapTable *)self->_peersByConnection keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 invalidate];
        [v10 setExportedObject:0];
      }

      v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSXPCListener *)self->_listener invalidate];
}

- (void)createXPCListener
{
  v10 = *MEMORY[0x277D85DE8];
  if (!self->_listener)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 136380675;
      v9 = "[MSPSharedTripCapabilityFetchingServer createXPCListener]";
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "[Server] %{private}s", &v8, 0xCu);
    }

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    peersByConnection = self->_peersByConnection;
    self->_peersByConnection = weakToStrongObjectsMapTable;

    v6 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.Maps.xpc.SharedTrip.Capabilities"];
    listener = self->_listener;
    self->_listener = v6;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener _setQueue:self->_workQueue];
    [(NSXPCListener *)self->_listener resume];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v28 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [(MSPSharedTripXPCPeer *)[MSPSharedTripCapabilityFetchingPeer alloc] initWithConnection:connectionCopy];
  canControlSharing = [(MSPSharedTripXPCPeer *)v8 canControlSharing];
  v10 = canControlSharing;
  if (canControlSharing)
  {
    [(NSMapTable *)self->_peersByConnection setObject:v8 forKey:connectionCopy];
    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697C9D0];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28696C798];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    [v12 setClasses:v16 forSelector:sel_capabilityLevelsDidUpdate_ argumentIndex:0 ofReply:0];

    [connectionCopy setRemoteObjectInterface:v12];
    v17 = MSPGetSharedTripCapabilityFetchingLog([connectionCopy _setQueue:self->_workQueue]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = connectionCopy;
      _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "[Server] Accepting new connection: %@", buf, 0xCu);
    }

    objc_initWeak(buf, connectionCopy);
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke;
    v22[3] = &unk_279865EA8;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    [connectionCopy setInvalidationHandler:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke_90;
    v19[3] = &unk_279865EA8;
    objc_copyWeak(&v20, buf);
    objc_copyWeak(&v21, &location);
    [connectionCopy setInterruptionHandler:v19];
    [connectionCopy resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = MSPGetSharedTripCapabilityFetchingLog(canControlSharing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = connectionCopy;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[Server] will not accept connection due to missing sharing entitlement: %@", buf, 0xCu);
    }
  }

  return v10;
}

void __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripCapabilityFetchingLog(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection invalidated: %@", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removePeerForConnection:WeakRetained];
}

void __76__MSPSharedTripCapabilityFetchingServer_listener_shouldAcceptNewConnection___block_invoke_90(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = MSPGetSharedTripCapabilityFetchingLog(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = WeakRetained;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "[Server] Connection interrupted: %@", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removePeerForConnection:WeakRetained];
}

- (BOOL)_connectionCanControlSharing:(id)sharing
{
  v3 = [(NSMapTable *)self->_peersByConnection objectForKey:sharing];
  canControlSharing = [v3 canControlSharing];

  return canControlSharing;
}

- (void)_removePeerForConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (connectionCopy)
  {
    v5 = [(NSMapTable *)self->_peersByConnection objectForKey:connectionCopy];
    v6 = v5;
    if (v5)
    {
      v7 = MSPGetSharedTripCapabilityFetchingLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v16 = v6;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "[Server] Removing peer %{public}@", buf, 0xCu);
      }

      requestedHandles = [v6 requestedHandles];
      array = [requestedHandles array];
      v10 = [v6 removeRequestedHandles:array];

      [(NSMapTable *)self->_peersByConnection removeObjectForKey:connectionCopy];
      v11 = [v10 count];
      if (v11)
      {
        v12 = MSPGetSharedTripCapabilityFetchingLog(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v16 = v10;
          _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "[Server] Clearing peer's requested handles from queue: %{private}@", buf, 0xCu);
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __66__MSPSharedTripCapabilityFetchingServer__removePeerForConnection___block_invoke;
        v13[3] = &unk_2798679D8;
        v14 = v10;
        [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v13];
      }
    }
  }
}

- (void)fetchCapabilitiesForContacts:(id)contacts
{
  v72 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripCapabilityFetchingServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v43 = v6;
    [(NSMapTable *)self->_peersByConnection objectForKey:v6];
    v59 = 0;
    v42 = v60 = 0;
    [v42 updateRequestedHandles:contactsCopy added:&v60 removed:&v59];
    v41 = v60;
    v45 = v59;
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(contactsCopy, "count")}];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v55 = __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke;
    v56 = &unk_279867A00;
    selfCopy = self;
    v46 = v7;
    v58 = v46;
    v44 = contactsCopy;
    v8 = contactsCopy;
    v9 = v54;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v61 objects:buf count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v62;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = (v55)(v9, *(*(&v61 + 1) + 8 * i), v14);
          if (v17)
          {
            [v10 addObject:v17];
          }

          ++v14;
        }

        v13 = [v11 countByEnumeratingWithState:&v61 objects:buf count:16];
      }

      while (v13);
    }

    v18 = [v10 copy];
    v19 = [v46 count];
    if (v19)
    {
      v20 = MSPGetSharedTripCapabilityFetchingLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v46 count];
        *buf = 134218243;
        v67 = v21;
        v68 = 2113;
        v69 = v46;
        _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_INFO, "Filtered out %lu contacts: %{private}@", buf, 0x16u);
      }
    }

    v22 = MSPGetSharedTripCapabilityFetchingLog(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138478339;
      v67 = v18;
      v68 = 2113;
      v69 = v41;
      v70 = 2113;
      v71 = v45;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_INFO, "Fetch contacts: %{private}@\n\tAdded: %{private}@,\n\tRemoved: %{private}@", buf, 0x20u);
    }

    v23 = v18;

    v24 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v41, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = v41;
    v26 = [v25 countByEnumeratingWithState:&v50 objects:v65 count:16];
    contactsCopy = v44;
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v50 + 1) + 8 * j);
          v31 = [(MSPSharedTripCapabilityFetchingServer *)self _resolvedStatusForHandle:v30, v41];
          v32 = v31;
          if (v31 && ([v31 isExpired] & 1) == 0)
          {
            [v24 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v50 objects:v65 count:16];
      }

      while (v27);
    }

    v33 = [v24 count];
    if (v33)
    {
      v34 = MSPGetSharedTripCapabilityFetchingLog(v33);
      v35 = v42;
      v6 = v43;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v36 = [v24 count];
        *buf = 134217984;
        v67 = v36;
        _os_log_impl(&dword_25813A000, v34, OS_LOG_TYPE_INFO, "%lu handles have cached statuses, removing from handles to fetch", buf, 0xCu);
      }

      v37 = [v25 mutableCopy];
      [v37 minusSet:v24];
      v38 = [v37 copy];

      [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v24];
      v25 = v38;
    }

    else
    {
      v35 = v42;
      v6 = v43;
    }

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke_95;
    v47[3] = &unk_279867A28;
    v48 = v25;
    v49 = v45;
    v40 = v45;
    v39 = v25;
    [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v47];
  }

  else
  {
    v39 = MSPGetSharedTripCapabilityFetchingLog(currentConnection);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "[MSPSharedTripCapabilityFetchingServer fetchCapabilitiesForContacts:]";
      v68 = 2112;
      v69 = v6;
      _os_log_impl(&dword_25813A000, v39, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v35 = v6;
  }
}

id __70__MSPSharedTripCapabilityFetchingServer_fetchCapabilitiesForContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldPermitFetchingHandle:v3])
  {
    v4 = v3;
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    v4 = 0;
  }

  return v4;
}

- (void)cancelFetchCapabilitiesForContacts:(id)contacts
{
  v17 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = currentConnection;
  if (currentConnection && (currentConnection = [(MSPSharedTripCapabilityFetchingServer *)self _connectionCanControlSharing:currentConnection], (currentConnection & 1) != 0))
  {

    v7 = [(NSMapTable *)self->_peersByConnection objectForKey:v6];
    v8 = [v7 removeRequestedHandles:contactsCopy];
    v9 = MSPGetSharedTripCapabilityFetchingLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v14 = contactsCopy;
      v15 = 2113;
      v16 = v8;
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "Cancel fetch contacts: %{private}@\n\tRemoved: %{private}@", buf, 0x16u);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__MSPSharedTripCapabilityFetchingServer_cancelFetchCapabilitiesForContacts___block_invoke;
    v11[3] = &unk_2798679D8;
    v12 = v8;
    v10 = v8;
    [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllQueues:v11];
  }

  else
  {
    v10 = MSPGetSharedTripCapabilityFetchingLog(currentConnection);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[MSPSharedTripCapabilityFetchingServer cancelFetchCapabilitiesForContacts:]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_ERROR, "[Server] Will not %s, connection lacks entitlement: %@", buf, 0x16u);
    }

    v7 = v6;
  }
}

- (void)_notifyPeersForIDSHandlesIfNeeded:(id)needed
{
  v54 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = [neededCopy count];
  if (v5)
  {
    v6 = MSPGetSharedTripCapabilityFetchingLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v47 = neededCopy;
      _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_INFO, "Will notify for update of %{private}@", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(neededCopy, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = neededCopy;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = [(MSPSharedTripCapabilityFetchingServer *)self _resolvedStatusForHandle:v13];
          if (v14)
          {
            [v7 setObject:v14 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v34 = neededCopy;
      v15 = objc_alloc(MEMORY[0x277CBEB98]);
      allKeys = [v7 allKeys];
      v17 = [v15 initWithArray:allKeys];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [(NSMapTable *)self->_peersByConnection keyEnumerator];
      v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v37)
      {
        v36 = *v39;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v39 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v38 + 1) + 8 * j);
            v20 = [(NSMapTable *)self->_peersByConnection objectForKey:v19];
            v21 = MSPGetSharedTripCapabilityFetchingLog(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138543362;
              v47 = v20;
              _os_log_impl(&dword_25813A000, v21, OS_LOG_TYPE_INFO, "\tChecking peer %{public}@", buf, 0xCu);
            }

            requestedHandles = [v20 requestedHandles];
            v23 = [requestedHandles mutableCopy];

            if ([v23 count])
            {
              v24 = v17;
              [v23 intersectSet:v17];
              array = [v23 array];
              v26 = [v7 dictionaryWithValuesForKeys:array];

              v27 = [v26 count];
              v28 = MSPGetSharedTripCapabilityFetchingLog(v27);
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
              if (v27)
              {
                if (v29)
                {
                  v30 = [v7 count];
                  *buf = 138543875;
                  v47 = v20;
                  v48 = 2048;
                  v49 = v30;
                  v50 = 2113;
                  v51 = v7;
                  _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_INFO, "\t- notifying peer %{public}@ of %lu resolved statuses: %{private}@", buf, 0x20u);
                }

                allKeys2 = [v26 allKeys];
                v32 = [v20 removeRequestedHandles:allKeys2];

                v28 = [v19 remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
                v33 = [v26 copy];
                [v28 capabilityLevelsDidUpdate:v33];
              }

              else if (v29)
              {
                *buf = 138477827;
                v47 = v20;
                _os_log_impl(&dword_25813A000, v28, OS_LOG_TYPE_INFO, "\t- Skipping %{private}@, none of the peer-requested handles have both statues yet", buf, 0xCu);
              }

              v17 = v24;
            }

            else
            {
              v26 = MSPGetSharedTripCapabilityFetchingLog(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v47 = v20;
                _os_log_impl(&dword_25813A000, v26, OS_LOG_TYPE_INFO, "\t- Skipping %{private}@, no requested handles", buf, 0xCu);
              }
            }
          }

          v37 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v37);
      }

      neededCopy = v34;
    }

    else
    {
      v17 = MSPGetSharedTripCapabilityFetchingLog(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25813A000, v17, OS_LOG_TYPE_INFO, "\tSkipping all peer notifications, no handles have all services checked", buf, 2u);
      }
    }
  }
}

void __75__MSPSharedTripCapabilityFetchingServer__notifyPeersForIDSHandlesIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MSPGetSharedTripCapabilityFetchingLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_ERROR, "error calling to remote object: %{public}@", &v4, 0xCu);
  }
}

- (id)_resolvedStatusForHandle:(id)handle
{
  v18 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  inflightHandles = [(MSPSharedTripCapabilityFetchingQueue *)self->_mapsStatusFetchQueue inflightHandles];
  if ([inflightHandles containsObject:handleCopy])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_identifierToMapsStatus objectForKeyedSubscript:handleCopy];
  }

  inflightHandles2 = [(MSPSharedTripCapabilityFetchingQueue *)self->_messagesStatusFetchQueue inflightHandles];
  if ([inflightHandles2 containsObject:handleCopy])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_identifierToMessagesStatus objectForKeyedSubscript:handleCopy];
  }

  inflightHandles3 = [(MSPSharedTripCapabilityFetchingQueue *)self->_textMessageStatusFetchQueue inflightHandles];
  if ([inflightHandles3 containsObject:handleCopy])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_identifierToTextMessageStatus objectForKeyedSubscript:handleCopy];
  }

  if (v6 && v8 && v10)
  {
    if ([v6 status] == 1 || objc_msgSend(v6, "isBlocked"))
    {
      v12 = v6;
    }

    else if ([v8 status] == 1)
    {
      v12 = v8;
    }

    else if ([v10 status] == 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:2];
    }

    v13 = v12;
  }

  else
  {
    v14 = MSPGetSharedTripCapabilityFetchingLog(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138477827;
      v17 = handleCopy;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_INFO, "\tSkipping %{private}@, we haven't fetched both services yet", &v16, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke_2;
  v9[3] = &unk_279867A90;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
}

void __62__MSPSharedTripCapabilityFetchingServer__purgeExpiredStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 isExpired];
  if (v6)
  {
    v7 = MSPGetSharedTripCapabilityFetchingLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138543619;
      v10 = v8;
      v11 = 2113;
      v12 = v5;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "%{public}@: purging expired status for handle %{private}@", &v9, 0x16u);
    }

    [*(a1 + 40) removeObjectForKey:v5];
  }
}

- (void)_performBlockOnAllQueues:(id)queues
{
  v17 = *MEMORY[0x277D85DE8];
  queuesCopy = queues;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = *&self->_mapsStatusFetchQueue;
  textMessageStatusFetchQueue = self->_textMessageStatusFetchQueue;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:{3, 0}];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        queuesCopy[2](queuesCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_performBlockOnAllCachedStatus:(id)status
{
  v13 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = *&self->_identifierToMapsStatus;
  v10[0] = @"Maps";
  v10[1] = @"iMessage";
  v11 = v5;
  v10[2] = @"Text Message";
  identifierToTextMessageStatus = self->_identifierToTextMessageStatus;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:v10 count:3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__MSPSharedTripCapabilityFetchingServer__performBlockOnAllCachedStatus___block_invoke;
  v8[3] = &unk_279867AB8;
  v9 = statusCopy;
  v7 = statusCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)capabilityFetchingQueue:(id)queue didFetchStatusForHandles:(id)handles
{
  queueCopy = queue;
  handlesCopy = handles;
  if (self->_mapsStatusFetchQueue == queueCopy)
  {
    v7 = 32;
  }

  else if (self->_messagesStatusFetchQueue == queueCopy)
  {
    v7 = 40;
  }

  else
  {
    if (self->_textMessageStatusFetchQueue != queueCopy)
    {
      goto LABEL_8;
    }

    v7 = 48;
  }

  [*(&self->super.isa + v7) addEntriesFromDictionary:handlesCopy];
  v8 = MEMORY[0x277CBEB98];
  allKeys = [handlesCopy allKeys];
  v10 = [v8 setWithArray:allKeys];
  [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v10];

LABEL_8:
}

- (BOOL)_shouldPermitFetchingHandle:(id)handle
{
  v20 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v5 = [(NSMutableDictionary *)self->_identifierToMapsStatus objectForKeyedSubscript:handleCopy];
  v6 = v5;
  if (!v5)
  {
    isBlocked = [MSPSharedTripContact isHandleBlocked:handleCopy];
    if (isBlocked)
    {
      goto LABEL_9;
    }

LABEL_14:
    v14 = 1;
    goto LABEL_15;
  }

  if ([v5 isBlocked])
  {
    isExpired = [v6 isExpired];
    if ((isExpired & 1) == 0)
    {
      v13 = MSPGetSharedTripCapabilityFetchingLog(isExpired);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v19 = handleCopy;
        _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "- %{private}@ already recorded as blocked, not expired", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

  if (![MSPSharedTripContact isHandleBlocked:handleCopy])
  {
    goto LABEL_14;
  }

  isBlocked = [v6 isBlocked];
  if (isBlocked)
  {
    v9 = MSPGetSharedTripCapabilityFetchingLog(isBlocked);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v19 = handleCopy;
      v10 = "- %{private}@ was recorded blocked, record expired, but handle still blocked, will update record";
LABEL_11:
      _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_9:
  v9 = MSPGetSharedTripCapabilityFetchingLog(isBlocked);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v19 = handleCopy;
    v10 = "- %{private}@ is blocked, will record";
    goto LABEL_11;
  }

LABEL_12:

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__MSPSharedTripCapabilityFetchingServer__shouldPermitFetchingHandle___block_invoke;
  v16[3] = &unk_279867AE0;
  v11 = handleCopy;
  v17 = v11;
  [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllCachedStatus:v16];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v11];
  [(MSPSharedTripCapabilityFetchingServer *)self _notifyPeersForIDSHandlesIfNeeded:v12];

  [(MSPSharedTripCapabilityFetchingServer *)self _startMonitoringSystemBlockListIfNeeded];
  v13 = v17;
LABEL_13:

  v14 = 0;
LABEL_15:

  return v14;
}

void __69__MSPSharedTripCapabilityFetchingServer__shouldPermitFetchingHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:-2];
  [v3 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

- (void)_startMonitoringSystemBlockListIfNeeded
{
  if (!self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] Will start monitoring system block list updates", buf, 2u);
    }

    objc_initWeak(buf, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277CFB9B8];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__MSPSharedTripCapabilityFetchingServer__startMonitoringSystemBlockListIfNeeded__block_invoke;
    v9[3] = &unk_279867B08;
    objc_copyWeak(&v10, buf);
    v7 = [defaultCenter addObserverForName:v5 object:0 queue:mainQueue usingBlock:v9];
    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __80__MSPSharedTripCapabilityFetchingServer__startMonitoringSystemBlockListIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _systemBlockListDidUpdate];
}

- (void)_stopMonitoringSystemBlockList
{
  if (self->_blockListMonitoringObserver)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] Will stop monitoring system block list updates", v7, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_blockListMonitoringObserver];

    blockListMonitoringObserver = self->_blockListMonitoringObserver;
    self->_blockListMonitoringObserver = 0;

    [(GCDTimer *)self->_blockListCoalescingTimer invalidate];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = 0;
  }
}

- (void)_systemBlockListDidUpdate
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSPSharedTripCapabilityFetchingServer__systemBlockListDidUpdate__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_scheduleCoalescedBlockListCheckIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_blockListCoalescingTimer)
  {
    v3 = MSPGetSharedTripCapabilityFetchingLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = 0x3FF0000000000000;
      _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[Server] System block list did update, scheduling coalescing check in %#.1lfs", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__MSPSharedTripCapabilityFetchingServer__scheduleCoalescedBlockListCheckIfNeeded__block_invoke;
    v7[3] = &unk_2798679B0;
    objc_copyWeak(&v8, buf);
    v5 = [GCDTimer scheduledTimerWithTimeInterval:workQueue queue:v7 block:1.0];
    blockListCoalescingTimer = self->_blockListCoalescingTimer;
    self->_blockListCoalescingTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __81__MSPSharedTripCapabilityFetchingServer__scheduleCoalescedBlockListCheckIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkBlockList];
}

- (void)_checkBlockList
{
  blockListCoalescingTimer = self->_blockListCoalescingTimer;
  self->_blockListCoalescingTimer = 0;

  v5 = MSPGetSharedTripCapabilityFetchingLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[Server] Checking existing blocked statuses for now-unblocked handles...", buf, 2u);
  }

  v6 = MSPGetSharedTripCapabilityFetchingLog([(MSPSharedTripCapabilityFetchingServer *)self _verifyCurrentlyBlockedStatuses]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_25813A000, v6, OS_LOG_TYPE_DEFAULT, "[Server] Checking blocklist to see if any cached statuses are now blocked...", v7, 2u);
  }

  [(MSPSharedTripCapabilityFetchingServer *)self _verifyCurrentlyUnblockedStatuses];
}

- (void)_verifyCurrentlyBlockedStatuses
{
  dispatch_assert_queue_not_V2(self->_workQueue);
  v4 = MSPGetSharedTripCapabilityFetchingLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_INFO, "Will verify existing blocked handles are still blocked", v5, 2u);
  }

  [(MSPSharedTripCapabilityFetchingServer *)self _performBlockOnAllCachedStatus:&__block_literal_global_107];
}

void __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke_2;
  v5[3] = &unk_279867B30;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __72__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyBlockedStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 isBlocked])
  {
    v6 = [MSPSharedTripContact isHandleBlocked:v5];
    if ((v6 & 1) == 0)
    {
      v7 = MSPGetSharedTripCapabilityFetchingLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138477827;
        v9 = v5;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "- %{private}@ is no longer blocked", &v8, 0xCu);
      }

      [*(a1 + 32) removeObjectForKey:v5];
    }
  }
}

void __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke_2;
  v5[3] = &unk_279867B30;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __74__MSPSharedTripCapabilityFetchingServer__verifyCurrentlyUnblockedStatuses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([a3 isBlocked] & 1) == 0)
  {
    v6 = [MSPSharedTripContact isHandleBlocked:v5];
    if (v6)
    {
      v7 = MSPGetSharedTripCapabilityFetchingLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138477827;
        v10 = v5;
        _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "- %{private}@ is now blocked", &v9, 0xCu);
      }

      v8 = [[MSPSharedTripFetchedCapabilityStatus alloc] initWithCapabilityType:1 serviceName:0 status:-2];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }
  }
}

@end