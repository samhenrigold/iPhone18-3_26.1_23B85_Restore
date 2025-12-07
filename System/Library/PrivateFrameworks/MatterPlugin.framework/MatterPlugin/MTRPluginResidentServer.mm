@interface MTRPluginResidentServer
+ (id)sharedInstance;
- (MTRPluginResidentServer)init;
- (id)_clientSessionForSessionID:(id)d;
- (void)_checkForMaxSessionsLimit;
- (void)_deregisterForSignificantTimeChangeNotifications;
- (void)_registerForSignificantTimeChangeNotifications;
- (void)_registerSessionForSessionID:(id)d incomingNewMessage:(id)message;
- (void)_unregisterSessionForSessionID:(id)d;
- (void)messageTransport:(id)transport handleIncomingMessage:(id)message;
- (void)removeResidentClientSession:(id)session;
- (void)start;
- (void)stop;
- (void)timeZoneOrTimeChanged:(id)changed;
@end

@implementation MTRPluginResidentServer

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[MTRPluginResidentServer sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

uint64_t __41__MTRPluginResidentServer_sharedInstance__block_invoke()
{
  sharedInstance_sInstance = objc_alloc_init(MTRPluginResidentServer);

  return MEMORY[0x2821F96F8]();
}

- (MTRPluginResidentServer)init
{
  v9.receiver = self;
  v9.super_class = MTRPluginResidentServer;
  v2 = [(MTRPluginResidentServer *)&v9 init];
  if (v2)
  {
    v3 = +[MTRPluginProtobufOverModernTransport sharedInstance];
    [(MTRPluginResidentServer *)v2 setTransport:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("MTRPluginResidentServerQueue", v4);
    [(MTRPluginResidentServer *)v2 setWorkQueue:v5];

    array = [MEMORY[0x277CBEB18] array];
    [(MTRPluginResidentServer *)v2 setSessions:array];

    [(MTRPluginResidentServer *)v2 setRunning:0];
    v7 = v2;
  }

  return v2;
}

- (void)start
{
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MTRPluginResidentServer_start__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__32__MTRPluginResidentServer_start__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if ((result & 1) == 0)
  {
    v3 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting resident server to listen on incoming requests", &v10, 0xCu);
    }

    v5 = [*(a1 + 32) transport];
    v6 = *(a1 + 32);
    v7 = [v6 workQueue];
    [v5 setDelegate:v6 delegateQueue:v7];

    [*(a1 + 32) _registerForSignificantTimeChangeNotifications];
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Registering to receive new session and control channel information", &v10, 0xCu);
    }

    return [*(a1 + 32) setRunning:1];
  }

  return result;
}

- (void)stop
{
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MTRPluginResidentServer_stop__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__31__MTRPluginResidentServer_stop__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) running];
  if (result)
  {
    v3 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping resident server from listening for incoming requests", buf, 0xCu);
    }

    [*(a1 + 32) _deregisterForSignificantTimeChangeNotifications];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [*(a1 + 32) sessions];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) invalidate];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = [*(a1 + 32) sessions];
    [v10 removeAllObjects];

    v11 = [*(a1 + 32) transport];
    [v11 removeDelegate:*(a1 + 32)];

    return [*(a1 + 32) setRunning:0];
  }

  return result;
}

- (id)_clientSessionForSessionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sessions = [(MTRPluginResidentServer *)self sessions];
    v7 = [sessions countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(sessions);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          sessionID = [v10 sessionID];
          v12 = [sessionID isEqual:dCopy];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [sessions countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_registerSessionForSessionID:(id)d incomingNewMessage:(id)message
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy && messageCopy && ([messageCopy homeIdentifier], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(messageCopy, "sourceAddress"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [(MTRPluginResidentServer *)self _clientSessionForSessionID:dCopy];

    if (!v12)
    {
      v13 = [MTRPluginResidentClientSession alloc];
      transport = [(MTRPluginResidentServer *)self transport];
      workQueue2 = [(MTRPluginResidentServer *)self workQueue];
      homeIdentifier = [messageCopy homeIdentifier];
      sourceAddress = [messageCopy sourceAddress];
      v18 = [(MTRPluginResidentClientSession *)v13 initWithTransport:transport workQueue:workQueue2 sessionID:dCopy homeID:homeIdentifier peerAddress:sourceAddress];

      v19 = matterPluginLog_default;
      if (v18)
      {
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          homeIdentifier2 = [messageCopy homeIdentifier];
          homeIdentifier3 = [messageCopy homeIdentifier];
          v28 = 138413314;
          selfCopy2 = self;
          v30 = 2112;
          v31 = v18;
          v32 = 2112;
          v33 = dCopy;
          v34 = 2112;
          v35 = homeIdentifier2;
          v36 = 2112;
          v37 = homeIdentifier3;
          _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, "%@ Registered session: %@ for sessionID : %@  controllerID: %@  homeID: %@", &v28, 0x34u);
        }

        sessions = [(MTRPluginResidentServer *)self sessions];
        [sessions addObject:v18];

        [(MTRPluginResidentServer *)self _checkForMaxSessionsLimit];
      }

      else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
      {
        v25 = v19;
        homeIdentifier4 = [messageCopy homeIdentifier];
        homeIdentifier5 = [messageCopy homeIdentifier];
        v28 = 138413314;
        selfCopy2 = self;
        v30 = 2112;
        v31 = 0;
        v32 = 2112;
        v33 = dCopy;
        v34 = 2112;
        v35 = homeIdentifier4;
        v36 = 2112;
        v37 = homeIdentifier5;
        _os_log_error_impl(&dword_25830F000, v25, OS_LOG_TYPE_ERROR, "%@ ** Failed to create session: %@ for sessionID : %@  controllerID: %@  homeID: %@", &v28, 0x34u);
      }
    }
  }

  else
  {
    v24 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _registerSessionForSessionID:v24 incomingNewMessage:messageCopy];
    }
  }
}

- (void)_unregisterSessionForSessionID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (dCopy)
  {
    v6 = [(MTRPluginResidentServer *)self _clientSessionForSessionID:dCopy];
    v7 = matterPluginLog_default;
    if (v6)
    {
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412802;
        selfCopy = self;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = dCopy;
        _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Found session to remove: %@ for sessionID : %@", &v10, 0x20u);
      }

      [v6 invalidate];
      sessions = [(MTRPluginResidentServer *)self sessions];
      [sessions removeObject:v6];
    }

    else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _unregisterSessionForSessionID:dCopy, v7];
    }
  }

  else
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginResidentServer *)self _unregisterSessionForSessionID:v9];
    }
  }
}

- (void)_registerForSignificantTimeChangeNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ Registering for signification time change notifications", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_timeZoneOrTimeChanged_ name:*MEMORY[0x277CBE780] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_timeZoneOrTimeChanged_ name:*MEMORY[0x277CBE778] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, significantTimeChangedNotification, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_deregisterForSignificantTimeChangeNotifications
{
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ De-registering for signification time change notifications", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE780] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CBE778] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
}

- (void)timeZoneOrTimeChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_INFO, "%@ Received significant time changed notification, resetting all session times", buf, 0xCu);
  }

  workQueue = [(MTRPluginResidentServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MTRPluginResidentServer_timeZoneOrTimeChanged___block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __49__MTRPluginResidentServer_timeZoneOrTimeChanged___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(a1 + 32) sessions];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [*(a1 + 32) transport];
        [v8 messageTransport:v9 updateTimeOfActivity:v2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_checkForMaxSessionsLimit
{
  v37 = *MEMORY[0x277D85DE8];
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  active = MTRPluginMaxActiveClientSessions(v4, v5);
  sessions = [(MTRPluginResidentServer *)self sessions];
  v8 = [sessions count];

  v9 = v8 - active;
  if (v8 > active)
  {
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v33 = 2048;
      v34 = v8;
      v35 = 2048;
      v36 = active;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_INFO, "%@ Total sessions %lu reached above limit of %lu, removing oldest session ", buf, 0x20u);
    }

    sessions2 = [(MTRPluginResidentServer *)self sessions];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timeOfLastActivity" ascending:0];
    v30 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    [sessions2 sortUsingDescriptors:v13];

    v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v8 - 1, v9}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    sessions3 = [(MTRPluginResidentServer *)self sessions];
    v24 = v14;
    v16 = [sessions3 objectsAtIndexes:v14];

    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          v22 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            selfCopy2 = self;
            v33 = 2112;
            v34 = v21;
            _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_INFO, "%@ Invalidating session %@", buf, 0x16u);
          }

          [v21 invalidate];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    sessions4 = [(MTRPluginResidentServer *)self sessions];
    [sessions4 removeObjectsAtIndexes:v24];
  }
}

- (void)removeResidentClientSession:(id)session
{
  sessionCopy = session;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MTRPluginResidentServer_removeResidentClientSession___block_invoke;
  v7[3] = &unk_279893AC8;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(workQueue, v7);
}

void __55__MTRPluginResidentServer_removeResidentClientSession___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 sessionID];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ Removing client session with identifier: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) sessionID];
  [v7 _unregisterSessionForSessionID:v8];
}

- (void)messageTransport:(id)transport handleIncomingMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(MTRPluginResidentServer *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    sessionIdentifier = [messageCopy sessionIdentifier];
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = sessionIdentifier;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Received new session with identifier: %@", &v11, 0x16u);
  }

  sessionIdentifier2 = [messageCopy sessionIdentifier];
  [(MTRPluginResidentServer *)self _registerSessionForSessionID:sessionIdentifier2 incomingNewMessage:messageCopy];
}

- (void)_registerSessionForSessionID:(void *)a3 incomingNewMessage:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 sourceAddress];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to register session due to invalid session, controller or home ID, message source: %@", &v7, 0x16u);
}

- (void)_unregisterSessionForSessionID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = 0;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25830F000, log, OS_LOG_TYPE_ERROR, "%@ *** No session found to remove: %@ for sessionID : %@", &v3, 0x20u);
}

- (void)_unregisterSessionForSessionID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "%@ Failed to unregister session due to invalid session, controller or home ID ", &v2, 0xCu);
}

@end