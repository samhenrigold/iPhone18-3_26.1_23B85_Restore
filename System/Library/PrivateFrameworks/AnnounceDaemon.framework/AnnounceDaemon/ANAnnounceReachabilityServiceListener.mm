@interface ANAnnounceReachabilityServiceListener
- (ANAnnounceReachabilityServiceListener)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_addConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)_sendCurrentReachabilityToConnection:(id)connection;
- (void)announceReachabilityForHomeName:(id)name reply:(id)reply;
- (void)announceReachabilityForHomeUUID:(id)d reply:(id)reply;
- (void)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName reply:(id)reply;
- (void)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD reply:(id)reply;
- (void)cleanForExit;
- (void)reachabilityLevel:(unint64_t)level didChangeForHome:(id)home;
- (void)reachabilityLevel:(unint64_t)level didChangeForRoom:(id)room inHome:(id)home;
- (void)resumeWithCompletionHandler:(id)handler;
@end

@implementation ANAnnounceReachabilityServiceListener

- (ANAnnounceReachabilityServiceListener)init
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = ANAnnounceReachabilityServiceListener;
  v2 = [(ANAnnounceReachabilityServiceListener *)&v10 init];
  if (v2)
  {
    if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
    {
      v3 = objc_opt_new();
      connections = v2->_connections;
      v2->_connections = v3;
    }

    v5 = objc_alloc(MEMORY[0x277CCAE98]);
    v6 = [v5 initWithMachServiceName:*MEMORY[0x277CEAA40]];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v8 = ANLogHandleAnnounceReachabilityServiceListener([(NSXPCListener *)v2->_listener resume]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Announce Reachability Service Listener Up!", buf, 0xCu);
    }
  }

  return v2;
}

- (void)cleanForExit
{
  listener = [(ANAnnounceReachabilityServiceListener *)self listener];
  [listener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v39 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandleAnnounceReachabilityServiceListener(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = v9;
    v37 = 2112;
    v38 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  isAnnounceEnabled = [MEMORY[0x277CEAB38] isAnnounceEnabled];
  if ((isAnnounceEnabled & 1) == 0)
  {
    v13 = ANLogHandleAnnounceReachabilityServiceListener(isAnnounceEnabled);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = &stru_2851BDB18;
      v17 = "%@Rejecting connection. Announce not enabled.";
      v18 = v13;
      v19 = 12;
LABEL_12:
      _os_log_impl(&dword_23F525000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  hasAnnounceEntitlement = [connectionCopy hasAnnounceEntitlement];
  if ((hasAnnounceEntitlement & 1) == 0)
  {
    v13 = ANLogHandleAnnounceReachabilityServiceListener(hasAnnounceEntitlement);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v34 = &stru_2851BDB18;
      v35 = 2112;
      v36 = v20;
      v17 = "%@Missing Announce Entitlement: %@";
      v18 = v13;
      v19 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851C8D28];
  [connectionCopy setExportedInterface:v13];
  [connectionCopy setExportedObject:self];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2851E1D68];
  [connectionCopy setRemoteObjectInterface:v14];

  [(ANAnnounceReachabilityServiceListener *)self _addConnection:connectionCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke;
  v28[3] = &unk_278C865F0;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  [connectionCopy setInterruptionHandler:v28];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke_71;
  v25 = &unk_278C865F0;
  objc_copyWeak(&v26, &from);
  objc_copyWeak(&v27, &location);
  [connectionCopy setInvalidationHandler:&v22];
  v15 = ANLogHandleAnnounceReachabilityServiceListener([connectionCopy resume]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = &stru_2851BDB18;
    v35 = 2112;
    v36 = connectionCopy;
    _os_log_impl(&dword_23F525000, v15, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  v16 = 1;
LABEL_14:

  return v16;
}

void __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceReachabilityServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412546;
    v7 = &stru_2851BDB18;
    v8 = 2112;
    v9 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Interrupted: (%@)", &v6, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 _removeConnection:v5];
}

void __76__ANAnnounceReachabilityServiceListener_listener_shouldAcceptNewConnection___block_invoke_71(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandleAnnounceReachabilityServiceListener(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = 138412546;
    v7 = &stru_2851BDB18;
    v8 = 2112;
    v9 = WeakRetained;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@Connection Invalidated: (%@)", &v6, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 _removeConnection:v5];
}

- (void)resumeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke;
  v9[3] = &unk_278C869B0;
  v7 = handlerCopy;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = currentConnection;
  v10 = v8;
  [reachabilityManager startWithCompletionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __69__ANAnnounceReachabilityServiceListener_resumeWithCompletionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendCurrentReachabilityToConnection:*(a1 + 32)];
}

- (void)announceReachabilityForHomeName:(id)name reply:(id)reply
{
  replyCopy = reply;
  nameCopy = name;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeWithName:nameCopy];

  if (v8)
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForHome:v8]);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)announceReachabilityForRoomName:(id)name inHomeName:(id)homeName reply:(id)reply
{
  replyCopy = reply;
  homeNameCopy = homeName;
  nameCopy = name;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeWithName:homeNameCopy];

  v12 = [v11 hmu_roomWithName:nameCopy];

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)announceReachabilityForHomeUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v7 = +[ANHomeManager shared];
  v8 = [v7 homeForID:dCopy];

  if (v8)
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForHome:v8]);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)announceReachabilityForRoomUUID:(id)d inHomeUUID:(id)iD reply:(id)reply
{
  replyCopy = reply;
  iDCopy = iD;
  dCopy = d;
  v10 = +[ANHomeManager shared];
  v11 = [v10 homeForID:iDCopy];

  v12 = [v11 hmu_roomWithUniqueIdentifier:dCopy];

  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    replyCopy[2](replyCopy, [reachabilityManager reachabilityForRoom:v12 inHome:v11]);
  }
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [connections2 addObject:connectionCopy];

  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];

  if (!reachabilityManager)
  {
    v7 = objc_opt_new();
    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:v7];

    reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager2 setDelegate:self];
  }

  objc_sync_exit(connections);
}

- (void)_removeConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  [connections2 removeObject:connectionCopy];

  v8 = ANLogHandleAnnounceReachabilityServiceListener(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = &stru_2851BDB18;
    v17 = 2112;
    v18 = connectionCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Removed Connection: (%@)", &v15, 0x16u);
  }

  connections3 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v10 = [connections3 count] == 0;

  if (v10)
  {
    v12 = ANLogHandleAnnounceReachabilityServiceListener(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@All Reachability Connections Removed. Stopping Reachability Manager.", &v15, 0xCu);
    }

    reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager stop];

    reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
    [reachabilityManager2 setDelegate:0];

    [(ANAnnounceReachabilityServiceListener *)self setReachabilityManager:0];
  }

  objc_sync_exit(connections);
}

- (void)_sendCurrentReachabilityToConnection:(id)connection
{
  v69 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  reachabilityManager = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
  monitoredHomes = [reachabilityManager monitoredHomes];

  v43 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = monitoredHomes;
  v44 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
  if (v44)
  {
    v42 = *v54;
    *&v6 = 138413058;
    v40 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v7;
        v8 = *(*(&v53 + 1) + 8 * v7);
        reachabilityManager2 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v10 = [reachabilityManager2 reachabilityForHome:v8];

        v12 = ANLogHandleAnnounceReachabilityServiceListener(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          name = [v8 name];
          v14 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v10];
          *buf = v40;
          v58 = &stru_2851BDB18;
          v59 = 2112;
          v60 = name;
          v61 = 2112;
          v62 = v14;
          v63 = 2112;
          v64 = connectionCopy;
          _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Sending Current Home Reachability: Home = %@, Reachability = %@, Connection = %@", buf, 0x2Au);
        }

        remoteObjectProxy = [connectionCopy remoteObjectProxy];
        name2 = [v8 name];
        [remoteObjectProxy reachabilityLevel:v10 didChangeForHomeName:name2];

        remoteObjectProxy2 = [connectionCopy remoteObjectProxy];
        uniqueIdentifier = [v8 uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:v10 didChangeForHomeUUID:uniqueIdentifier];

        reachabilityManager3 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
        v20 = [reachabilityManager3 monitoredRoomsForHome:v8];

        [v43 append:{objc_msgSend(v20, "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = v20;
        v21 = [v46 countByEnumeratingWithState:&v49 objects:v67 count:16];
        if (v21)
        {
          v22 = v21;
          v47 = *v50;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v50 != v47)
              {
                objc_enumerationMutation(v46);
              }

              v24 = *(*(&v49 + 1) + 8 * i);
              reachabilityManager4 = [(ANAnnounceReachabilityServiceListener *)self reachabilityManager];
              v26 = [reachabilityManager4 reachabilityForRoom:v24 inHome:v8];

              v28 = ANLogHandleAnnounceReachabilityServiceListener(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                name3 = [v8 name];
                [v24 name];
                v31 = v30 = self;
                v32 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v26];
                *buf = 138413314;
                v58 = &stru_2851BDB18;
                v59 = 2112;
                v60 = name3;
                v61 = 2112;
                v62 = v31;
                v63 = 2112;
                v64 = v32;
                v65 = 2112;
                v66 = connectionCopy;
                _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "%@Sending Current Room Reachability: Home = %@, Room = %@, Reachability = %@, Connection = %@", buf, 0x34u);

                self = v30;
              }

              remoteObjectProxy3 = [connectionCopy remoteObjectProxy];
              name4 = [v24 name];
              name5 = [v8 name];
              [remoteObjectProxy3 reachabilityLevel:v26 didChangeForRoomName:name4 inHomeName:name5];

              remoteObjectProxy4 = [connectionCopy remoteObjectProxy];
              uniqueIdentifier2 = [v24 uniqueIdentifier];
              uniqueIdentifier3 = [v8 uniqueIdentifier];
              [remoteObjectProxy4 reachabilityLevel:v26 didChangeForRoomUUID:uniqueIdentifier2 inHomeUUID:uniqueIdentifier3];
            }

            v22 = [v46 countByEnumeratingWithState:&v49 objects:v67 count:16];
          }

          while (v22);
        }

        v7 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
    }

    while (v44);
  }

  v39 = +[ANAnalytics shared];
  [v39 recordReachableHomes:v43];
}

- (void)reachabilityLevel:(unint64_t)level didChangeForHome:(id)home
{
  v31 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = ANLogHandleAnnounceReachabilityServiceListener(homeCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    v9 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:level];
    *buf = 138412802;
    v26 = &stru_2851BDB18;
    v27 = 2112;
    v28 = name;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Reachability Changed For [Home = %@]: %@", buf, 0x20u);
  }

  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(connections);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  connections2 = [(ANAnnounceReachabilityServiceListener *)self connections];
  v12 = [connections2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(connections2);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        remoteObjectProxy = [v15 remoteObjectProxy];
        name2 = [homeCopy name];
        [remoteObjectProxy reachabilityLevel:level didChangeForHomeName:name2];

        remoteObjectProxy2 = [v15 remoteObjectProxy];
        uniqueIdentifier = [homeCopy uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:level didChangeForHomeUUID:uniqueIdentifier];
      }

      v12 = [connections2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  objc_sync_exit(connections);
}

- (void)reachabilityLevel:(unint64_t)level didChangeForRoom:(id)room inHome:(id)home
{
  v40 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  homeCopy = home;
  v10 = ANLogHandleAnnounceReachabilityServiceListener(homeCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    name2 = [roomCopy name];
    v13 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:level];
    *buf = 138413058;
    v33 = &stru_2851BDB18;
    v34 = 2112;
    v35 = name;
    v36 = 2112;
    v37 = name2;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Reachability Changed For [Home = %@, Room = %@]: %@", buf, 0x2Au);
  }

  obj = [(ANAnnounceReachabilityServiceListener *)self connections];
  objc_sync_enter(obj);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  connections = [(ANAnnounceReachabilityServiceListener *)self connections];
  v15 = [connections countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = *v28;
    v26 = connections;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v26);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        remoteObjectProxy = [v18 remoteObjectProxy];
        name3 = [roomCopy name];
        name4 = [homeCopy name];
        [remoteObjectProxy reachabilityLevel:level didChangeForRoomName:name3 inHomeName:name4];

        remoteObjectProxy2 = [v18 remoteObjectProxy];
        uniqueIdentifier = [roomCopy uniqueIdentifier];
        uniqueIdentifier2 = [homeCopy uniqueIdentifier];
        [remoteObjectProxy2 reachabilityLevel:level didChangeForRoomUUID:uniqueIdentifier inHomeUUID:uniqueIdentifier2];
      }

      connections = v26;
      v15 = [v26 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
}

@end