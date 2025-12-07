@interface ANPlaybackSessionServiceListener
- (ANPlaybackSessionServiceListener)init;
- (BOOL)_endSessionForConnection:(id)connection;
- (BOOL)isExternalPlaybackActiveForEndpointID:(id)d;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)remoteSessionsActive;
- (id)_clientForConnection:(id)connection;
- (void)_removeConnection:(id)connection;
- (void)_setTimersActive:(BOOL)active forEndPointID:(id)d;
- (void)_updateConnectionForReceivedAnnouncement:(id)announcement groupID:(id)d endpointID:(id)iD;
- (void)cleanForExit;
- (void)coordinator:(id)coordinator didReceiveAnnouncement:(id)announcement forGroupID:(id)d forEndpointID:(id)iD;
- (void)coordinator:(id)coordinator didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time forEndpointID:(id)d;
- (void)coordinator:(id)coordinator didUpdateAnnouncements:(id)announcements forGroupID:(id)d forEndpointID:(id)iD;
- (void)coordinator:(id)coordinator didUpdatePlaybackInfo:(id)info forEndpointID:(id)d;
- (void)coordinator:(id)coordinator didUpdatePlaybackState:(unint64_t)state forEndpointID:(id)d;
- (void)endSessionWithReply:(id)reply;
- (void)lastPlayedAnnouncementInfoForEndpointID:(id)d completionHandler:(id)handler;
- (void)playbackStateForEndpointID:(id)d completionHandler:(id)handler;
- (void)resumeWithEndpointID:(id)d completionHandler:(id)handler;
- (void)sendPlaybackCommand:(id)command forEndpointID:(id)d completionHandler:(id)handler;
- (void)setPlaybackStartedForAnnouncement:(id)announcement;
- (void)setPlaybackStoppedForAnnouncement:(id)announcement;
- (void)startSessionForGroupID:(id)d reply:(id)reply;
@end

@implementation ANPlaybackSessionServiceListener

- (ANPlaybackSessionServiceListener)init
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = ANPlaybackSessionServiceListener;
  v2 = [(ANPlaybackSessionServiceListener *)&v22 init];
  if (v2)
  {
    if ([MEMORY[0x277CEAB38] isAnnounceEnabled])
    {
      v3 = objc_opt_new();
      remotePlaybackClients = v2->_remotePlaybackClients;
      v2->_remotePlaybackClients = v3;

      v5 = objc_opt_new();
      localPlaybackClients = v2->_localPlaybackClients;
      v2->_localPlaybackClients = v5;

      v7 = dispatch_queue_create("com.apple.Announce.playbackClientsSerialQueue", 0);
      playbackClientsSerialQueue = v2->_playbackClientsSerialQueue;
      v2->_playbackClientsSerialQueue = v7;

      v9 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v9 addDelegate:v2 queue:0];

      v10 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v10 setRemotePlaybackStatusProvider:v2];
    }

    v11 = objc_alloc(MEMORY[0x277CCAE98]);
    v12 = [v11 initWithMachServiceName:*MEMORY[0x277CEAA48]];
    localPlaybackSessionListener = v2->_localPlaybackSessionListener;
    v2->_localPlaybackSessionListener = v12;

    [(NSXPCListener *)v2->_localPlaybackSessionListener setDelegate:v2];
    [(NSXPCListener *)v2->_localPlaybackSessionListener resume];
    v14 = objc_alloc(MEMORY[0x277CCAE98]);
    v15 = [v14 initWithMachServiceName:*MEMORY[0x277CEAA50]];
    remotePlaybackSessionListener = v2->_remotePlaybackSessionListener;
    v2->_remotePlaybackSessionListener = v15;

    [(NSXPCListener *)v2->_remotePlaybackSessionListener setDelegate:v2];
    [(NSXPCListener *)v2->_remotePlaybackSessionListener resume];
    v17 = objc_opt_new();
    appIntentConnectionListener = v2->_appIntentConnectionListener;
    v2->_appIntentConnectionListener = v17;

    v20 = ANLogHandlePlaybackSessionServiceListener(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v20, OS_LOG_TYPE_DEFAULT, "%@Playback Session Service Listeners Up!", buf, 0xCu);
    }
  }

  return v2;
}

- (void)cleanForExit
{
  localPlaybackSessionListener = [(ANPlaybackSessionServiceListener *)self localPlaybackSessionListener];
  [localPlaybackSessionListener invalidate];

  remotePlaybackSessionListener = [(ANPlaybackSessionServiceListener *)self remotePlaybackSessionListener];
  [remotePlaybackSessionListener invalidate];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v61 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = ANLogHandlePlaybackSessionServiceListener(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(connectionCopy, "processIdentifier")}];
    serviceName = [connectionCopy serviceName];
    *buf = 138412802;
    v56 = &stru_2851BDB18;
    v57 = 2112;
    v58 = v9;
    v59 = 2112;
    v60 = serviceName;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@New Playback Session Connection Request From (PID = %@) For Service: (%@)", buf, 0x20u);
  }

  isAnnounceEnabled = [MEMORY[0x277CEAB38] isAnnounceEnabled];
  if (isAnnounceEnabled)
  {
    hasAnnounceEntitlement = [connectionCopy hasAnnounceEntitlement];
    if (hasAnnounceEntitlement)
    {
      v13 = [ANPlaybackSessionClient clientWithXPCConnection:connectionCopy];
      serviceName2 = [listenerCopy serviceName];
      v40 = *MEMORY[0x277CEAA50];
      v15 = [serviceName2 isEqualToString:?];

      if (v15)
      {
        log = [MEMORY[0x277CCAE90] an_remotePlaybackSessionServiceInterface];
        an_remotePlaybackSessionServiceDelegateInterface = [MEMORY[0x277CCAE90] an_remotePlaybackSessionServiceDelegateInterface];
      }

      else
      {
        serviceName3 = [listenerCopy serviceName];
        v22 = [serviceName3 isEqualToString:*MEMORY[0x277CEAA48]];

        if (!v22)
        {
          log = ANLogHandlePlaybackSessionServiceListener(v23);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            serviceName4 = [listenerCopy serviceName];
            *buf = 138412802;
            v56 = &stru_2851BDB18;
            v57 = 2112;
            v58 = serviceName4;
            v59 = 2112;
            v60 = connectionCopy;
            _os_log_impl(&dword_23F525000, log, OS_LOG_TYPE_ERROR, "%@Unsupported Service. serviceName=%@, connection=%@", buf, 0x20u);
          }

          v20 = 0;
          goto LABEL_26;
        }

        log = [MEMORY[0x277CCAE90] an_localPlaybackSessionServiceInterface];
        an_remotePlaybackSessionServiceDelegateInterface = [MEMORY[0x277CCAE90] an_localPlaybackSessionServiceDelegateInterface];
        [log setClass:objc_opt_class() forSelector:sel_sendPlaybackCommand_forEndpointID_completionHandler_ argumentIndex:0 ofReply:0];
        v24 = MEMORY[0x277CBEB98];
        v25 = objc_opt_class();
        v26 = objc_opt_class();
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v29 = [v24 setWithObjects:{v25, v26, v27, v28, objc_opt_class(), 0}];
        [log setClasses:v29 forSelector:sel_lastPlayedAnnouncementInfoForEndpointID_completionHandler_ argumentIndex:0 ofReply:1];
      }

      [an_remotePlaybackSessionServiceDelegateInterface setClass:objc_opt_class() forSelector:sel_didReceiveAnnouncement_forGroupID_ argumentIndex:0 ofReply:0];
      [connectionCopy setExportedInterface:log];
      [connectionCopy setExportedObject:self];
      [connectionCopy setRemoteObjectInterface:an_remotePlaybackSessionServiceDelegateInterface];
      objc_initWeak(&location, self);
      objc_initWeak(&from, connectionCopy);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke;
      v50[3] = &unk_278C865F0;
      objc_copyWeak(&v51, &from);
      objc_copyWeak(&v52, &location);
      [connectionCopy setInterruptionHandler:v50];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_23;
      v47[3] = &unk_278C865F0;
      objc_copyWeak(&v48, &from);
      objc_copyWeak(&v49, &location);
      [connectionCopy setInvalidationHandler:v47];
      v30 = ANLogHandlePlaybackSessionServiceListener([connectionCopy resume]);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v56 = &stru_2851BDB18;
        v57 = 2112;
        v58 = connectionCopy;
        _os_log_impl(&dword_23F525000, v30, OS_LOG_TYPE_DEFAULT, "%@Connection Accepted: (%@)", buf, 0x16u);
      }

      serviceName5 = [listenerCopy serviceName];
      v32 = [serviceName5 isEqualToString:v40];

      if (v32)
      {
        playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_24;
        v45[3] = &unk_278C86378;
        v45[4] = self;
        v34 = &v46;
        v46 = v13;
        v35 = v45;
      }

      else
      {
        serviceName6 = [listenerCopy serviceName];
        v37 = [serviceName6 isEqualToString:*MEMORY[0x277CEAA48]];

        if (!v37)
        {
LABEL_22:
          objc_destroyWeak(&v49);
          objc_destroyWeak(&v48);
          objc_destroyWeak(&v52);
          objc_destroyWeak(&v51);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);

          v20 = 1;
LABEL_26:

          goto LABEL_27;
        }

        playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_2;
        block[3] = &unk_278C86378;
        block[4] = self;
        v34 = &v44;
        v44 = v13;
        v35 = block;
      }

      dispatch_sync(playbackClientsSerialQueue, v35);

      goto LABEL_22;
    }

    v13 = ANLogHandlePlaybackSessionServiceListener(hasAnnounceEntitlement);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = *MEMORY[0x277CEAC10];
      *buf = 138412546;
      v56 = &stru_2851BDB18;
      v57 = 2112;
      v58 = v19;
      v16 = "%@Missing Announce Entitlement: %@";
      v17 = v13;
      v18 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = ANLogHandlePlaybackSessionServiceListener(isAnnounceEnabled);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = &stru_2851BDB18;
      v16 = "%@Rejecting connection. Announce not enabled.";
      v17 = v13;
      v18 = 12;
LABEL_11:
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    }
  }

  v20 = 0;
LABEL_27:

  return v20;
}

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandlePlaybackSessionServiceListener(a1);
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

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_23(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ANLogHandlePlaybackSessionServiceListener(a1);
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

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) remotePlaybackClients];
  [v2 addObject:*(a1 + 40)];
}

void __71__ANPlaybackSessionServiceListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) localPlaybackClients];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)remoteSessionsActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ANPlaybackSessionServiceListener_remoteSessionsActive__block_invoke;
  v5[3] = &unk_278C86618;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(playbackClientsSerialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __56__ANPlaybackSessionServiceListener_remoteSessionsActive__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 count];

  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [*(a1 + 32) remotePlaybackClients];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v10 + 1) + 8 * i) groupID];

          if (v9)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  [(ANPlaybackSessionServiceListener *)self _endSessionForConnection:connectionCopy];
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ANPlaybackSessionServiceListener__removeConnection___block_invoke;
  v7[3] = &unk_278C86378;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(playbackClientsSerialQueue, v7);
}

void __54__ANPlaybackSessionServiceListener__removeConnection___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v37;
    *&v5 = 138412546;
    v30 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 connection];

        if (v10 == v11)
        {
          v12 = [*(a1 + 32) remotePlaybackClients];
          [v12 removeObject:v9];

          v14 = ANLogHandlePlaybackSessionServiceListener(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 40);
            *buf = v30;
            v42 = &stru_2851BDB18;
            v43 = 2112;
            v44 = v15;
            _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Removed Playback Info for Connection: (%@)", buf, 0x16u);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v6);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = [*(a1 + 32) localPlaybackClients];
  v17 = [v16 copy];

  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v33;
    *&v19 = 138412546;
    v31 = v19;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        v24 = *(a1 + 40);
        v25 = [v23 connection];

        if (v24 == v25)
        {
          v26 = [*(a1 + 32) localPlaybackClients];
          [v26 removeObject:v23];

          v28 = ANLogHandlePlaybackSessionServiceListener(v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 40);
            *buf = v31;
            v42 = &stru_2851BDB18;
            v43 = 2112;
            v44 = v29;
            _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "%@Removed Other Playback for Connection: (%@)", buf, 0x16u);
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }
}

- (id)_clientForConnection:(id)connection
{
  connectionCopy = connection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ANPlaybackSessionServiceListener__clientForConnection___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = connectionCopy;
  v11 = &v12;
  v6 = connectionCopy;
  dispatch_sync(playbackClientsSerialQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__ANPlaybackSessionServiceListener__clientForConnection___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 connection];

        if (v8 == v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [*(a1 + 32) localPlaybackClients];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          v16 = *(a1 + 40);
          v17 = [v15 connection];

          if (v16 == v17)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
            goto LABEL_22;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }
}

- (BOOL)_endSessionForConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:connectionCopy];
  v6 = v5;
  if (v5)
  {
    v7 = ANLogHandlePlaybackSessionServiceListener(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = &stru_2851BDB18;
      v12 = 2112;
      v13 = connectionCopy;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Ended Session For Connection: %@", &v10, 0x16u);
    }

    [v6 setGroupID:0];
  }

  v8 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:1 forEndPointID:v8];

  return v6 != 0;
}

- (void)_setTimersActive:(BOOL)active forEndPointID:(id)d
{
  activeCopy = active;
  *&v18[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = ANLogHandlePlaybackSessionServiceListener(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"IN";
    if (activeCopy)
    {
      v8 = &stru_2851BDB18;
    }

    v15 = 138412546;
    v16 = &stru_2851BDB18;
    v17 = 2112;
    *v18 = v8;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Request to set timers %@ACTIVE", &v15, 0x16u);
  }

  if (activeCopy)
  {
    if ([dCopy an_isLocalDevice])
    {
      remoteSessionsActive = [(ANPlaybackSessionServiceListener *)self remoteSessionsActive];
    }

    else
    {
      remoteSessionsActive = 0;
    }

    v11 = +[ANAnnouncementCoordinator sharedCoordinator];
    v12 = [v11 playbackStateForEndpointID:dCopy];

    v10 = ANLogHandlePlaybackSessionServiceListener(v13);
    v14 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (remoteSessionsActive || v12 == 1)
    {
      if (v14)
      {
        v15 = 138412802;
        v16 = &stru_2851BDB18;
        v17 = 1024;
        *v18 = remoteSessionsActive;
        v18[2] = 1024;
        *&v18[3] = v12 == 1;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Unable to activate timers. Remote Session Active = %d, Local Session Active = %d", &v15, 0x18u);
      }
    }

    else
    {
      if (v14)
      {
        v15 = 138412290;
        v16 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@No Active Sessions. Resuming All Timers.", &v15, 0xCu);
      }

      v10 = +[ANAnnouncementCoordinator sharedCoordinator];
      [v10 resumeAllTimersForEndpointID:dCopy];
    }
  }

  else
  {
    v10 = +[ANAnnouncementCoordinator sharedCoordinator];
    [v10 pauseAllTimersForEndpointID:dCopy];
  }
}

- (void)startSessionForGroupID:(id)d reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v8 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:0 forEndPointID:v8];

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v10 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:currentConnection];

  if (v10)
  {
    [v10 setGroupID:dCopy];
    v12 = +[ANAnnouncementCoordinator sharedCoordinator];
    v13 = +[ANAnnouncementCoordinator localDeviceIdentifier];
    v14 = [v12 announcementsForGroupID:dCopy endpointID:v13];

    v15 = [MEMORY[0x277CEAB48] contextsFrom:v14];
    connection = [v10 connection];
    remoteObjectProxy = [connection remoteObjectProxy];

    v18 = [remoteObjectProxy conformsToProtocol:&unk_2851E1B88];
    if (v18)
    {
      v18 = [remoteObjectProxy didUpdateAnnouncements:v15 forGroupID:dCopy];
    }

    v19 = ANLogHandlePlaybackSessionServiceListener(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      currentConnection2 = [MEMORY[0x277CCAE80] currentConnection];
      v23 = 138412802;
      v24 = &stru_2851BDB18;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = currentConnection2;
      _os_log_impl(&dword_23F525000, v19, OS_LOG_TYPE_DEFAULT, "%@Started remote playback session. GroupID = %@, connection = %@)", &v23, 0x20u);
    }

    replyCopy[2](replyCopy, 1);
  }

  else
  {
    v21 = ANLogHandlePlaybackSessionServiceListener(v11);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      currentConnection3 = [MEMORY[0x277CCAE80] currentConnection];
      v23 = 138412546;
      v24 = &stru_2851BDB18;
      v25 = 2112;
      v26 = currentConnection3;
      _os_log_impl(&dword_23F525000, v21, OS_LOG_TYPE_DEFAULT, "%@Failed to start remote playback session. Connection = %@", &v23, 0x16u);
    }

    replyCopy[2](replyCopy, 0);
    v14 = +[ANAnalytics shared];
    [v14 error:5001];
  }
}

- (void)endSessionWithReply:(id)reply
{
  v4 = MEMORY[0x277CCAE80];
  replyCopy = reply;
  currentConnection = [v4 currentConnection];
  v6 = [(ANPlaybackSessionServiceListener *)self _endSessionForConnection:currentConnection];

  replyCopy[2](replyCopy, v6);
}

- (void)setPlaybackStartedForAnnouncement:(id)announcement
{
  v9 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  v4 = ANLogHandlePlaybackSessionServiceListener(announcementCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Set Remote Playback Started", &v7, 0xCu);
  }

  v5 = +[ANAnnouncementCoordinator sharedCoordinator];
  v6 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [v5 setPlaybackStartedForAnnouncement:announcementCopy endpointID:v6];
}

- (void)setPlaybackStoppedForAnnouncement:(id)announcement
{
  v9 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  v4 = ANLogHandlePlaybackSessionServiceListener(announcementCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Set Remote Playback Stopped", &v7, 0xCu);
  }

  v5 = +[ANAnnouncementCoordinator sharedCoordinator];
  v6 = +[ANAnnouncementCoordinator localDeviceIdentifier];
  [v5 setPlaybackStoppedForAnnouncement:announcementCopy endpointID:v6];
}

- (void)sendPlaybackCommand:(id)command forEndpointID:(id)d completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  handlerCopy = handler;
  v10 = ANLogHandlePlaybackSessionServiceListener(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412802;
    v19 = &stru_2851BDB18;
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = commandCopy;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Received Playback Command. Endpoint ID = %@, Command = %@", &v18, 0x20u);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  clientID = [currentConnection clientID];

  [commandCopy setClientIdentifier:clientID];
  v13 = +[ANAnnouncementCoordinator sharedCoordinator];
  [v13 performPlaybackCommand:commandCopy endpointID:dCopy completionHandler:handlerCopy];

  v14 = +[ANAnalytics shared];
  operation = [commandCopy operation];
  v16 = [MEMORY[0x277CEAB48] sourceFromString:clientID];
  v17 = [ANAnalyticsContext contextWithEndpointID:dCopy];
  [v14 playbackAction:operation fromSource:v16 context:v17];
}

- (void)resumeWithEndpointID:(id)d completionHandler:(id)handler
{
  v6 = MEMORY[0x277CCAE80];
  handlerCopy = handler;
  dCopy = d;
  currentConnection = [v6 currentConnection];
  v10 = [(ANPlaybackSessionServiceListener *)self _clientForConnection:currentConnection];

  [v10 setEndpointID:dCopy];
  handlerCopy[2](handlerCopy);
}

- (void)lastPlayedAnnouncementInfoForEndpointID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v8 = [v9 lastPlayedAnnouncementInfoForEndpointID:dCopy];

  (*(handler + 2))(handlerCopy, v8);
}

- (void)playbackStateForEndpointID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v9 = +[ANAnnouncementCoordinator sharedCoordinator];
  v8 = [v9 playbackStateForEndpointID:dCopy];

  (*(handler + 2))(handlerCopy, v8);
}

- (BOOL)isExternalPlaybackActiveForEndpointID:(id)d
{
  an_isLocalDevice = [d an_isLocalDevice];
  if (an_isLocalDevice)
  {

    LOBYTE(an_isLocalDevice) = [(ANPlaybackSessionServiceListener *)self remoteSessionsActive];
  }

  return an_isLocalDevice;
}

- (void)coordinator:(id)coordinator didUpdateAnnouncements:(id)announcements forGroupID:(id)d forEndpointID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  announcementsCopy = announcements;
  dCopy = d;
  iDCopy = iD;
  v12 = ANLogHandlePlaybackSessionServiceListener(iDCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = &stru_2851BDB18;
    v23 = 2112;
    v24 = dCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Did Update Announcements for Group ID: %@", buf, 0x16u);
  }

  an_isLocalDevice = [iDCopy an_isLocalDevice];
  if (an_isLocalDevice)
  {
    v15 = [MEMORY[0x277CEAB48] contextsFrom:announcementsCopy];
    playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ANPlaybackSessionServiceListener_coordinator_didUpdateAnnouncements_forGroupID_forEndpointID___block_invoke;
    block[3] = &unk_278C86668;
    block[4] = self;
    v19 = dCopy;
    v20 = v15;
    v17 = v15;
    dispatch_async(playbackClientsSerialQueue, block);
  }

  else
  {
    v17 = ANLogHandlePlaybackSessionServiceListener(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@Skipping updates not for local device", buf, 0xCu);
    }
  }
}

void __96__ANPlaybackSessionServiceListener_coordinator_didUpdateAnnouncements_forGroupID_forEndpointID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 connection];
        v10 = [v9 remoteObjectProxy];

        v11 = [v8 groupID];
        if ([v11 isEqualToString:*(a1 + 40)])
        {
          v12 = [v10 conformsToProtocol:&unk_2851E1B88];

          if (v12)
          {
            v14 = ANLogHandlePlaybackSessionServiceListener(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = &stru_2851BDB18;
              v22 = 2112;
              v23 = v8;
              _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Notifying Connection Announcements Changed: %@", buf, 0x16u);
            }

            [v10 didUpdateAnnouncements:*(a1 + 48) forGroupID:*(a1 + 40)];
          }
        }

        else
        {
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)coordinator:(id)coordinator didReceiveAnnouncement:(id)announcement forGroupID:(id)d forEndpointID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  dCopy = d;
  iDCopy = iD;
  v12 = ANLogHandlePlaybackSessionServiceListener(iDCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [announcementCopy identifier];
    v14 = 138412802;
    v15 = &stru_2851BDB18;
    v16 = 2112;
    v17 = identifier;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Did Receive Announcement ID: %@, for Group ID: %@", &v14, 0x20u);
  }

  [(ANPlaybackSessionServiceListener *)self _updateConnectionForReceivedAnnouncement:announcementCopy groupID:dCopy endpointID:iDCopy];
}

- (void)_updateConnectionForReceivedAnnouncement:(id)announcement groupID:(id)d endpointID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v10 = MEMORY[0x277CEAB58];
  remoteSessionDictionary = [announcement remoteSessionDictionary];
  v12 = [v10 contextFromDictionary:remoteSessionDictionary];

  if ([iDCopy an_isLocalDevice])
  {
    playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke;
    block[3] = &unk_278C86668;
    block[4] = self;
    v23 = dCopy;
    v24 = v12;
    dispatch_async(playbackClientsSerialQueue, block);
  }

  playbackClientsSerialQueue2 = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke_78;
  v18[3] = &unk_278C86690;
  v18[4] = self;
  v19 = iDCopy;
  v20 = v12;
  v21 = dCopy;
  v15 = dCopy;
  v16 = v12;
  v17 = iDCopy;
  dispatch_async(playbackClientsSerialQueue2, v18);
}

void __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) remotePlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 connection];
        v10 = [v9 remoteObjectProxy];

        v11 = [v8 groupID];
        if ([v11 isEqualToString:*(a1 + 40)])
        {
          v12 = [v10 conformsToProtocol:&unk_2851DEFF8];

          if (v12)
          {
            v14 = ANLogHandlePlaybackSessionServiceListener(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = &stru_2851BDB18;
              v22 = 2112;
              v23 = v8;
              _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Notifying Remote Playback Client Announcement Received: %@", buf, 0x16u);
            }

            [v10 didReceiveAnnouncement:*(a1 + 48) forGroupID:*(a1 + 40)];
          }
        }

        else
        {
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

void __96__ANPlaybackSessionServiceListener__updateConnectionForReceivedAnnouncement_groupID_endpointID___block_invoke_78(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 endpointID];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v12 = v11;

        v13 = [v8 connection];
        v14 = [v13 remoteObjectProxy];

        if ([v12 isEqual:*(a1 + 40)])
        {
          v15 = [v14 conformsToProtocol:&unk_2851DEFF8];
          if (v15)
          {
            v16 = ANLogHandlePlaybackSessionServiceListener(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = &stru_2851BDB18;
              v24 = 2112;
              v25 = v8;
              _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Notifying Local Playback Client Announcement Received: %@", buf, 0x16u);
            }

            [v14 didReceiveAnnouncement:*(a1 + 48) forGroupID:*(a1 + 56)];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)coordinator:(id)coordinator didStartPlayingAnnouncementsAtMachAbsoluteTime:(unint64_t)time forEndpointID:(id)d
{
  dCopy = d;
  [(ANPlaybackSessionServiceListener *)self _setTimersActive:0 forEndPointID:dCopy];
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__ANPlaybackSessionServiceListener_coordinator_didStartPlayingAnnouncementsAtMachAbsoluteTime_forEndpointID___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v11 = dCopy;
  timeCopy = time;
  v9 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __109__ANPlaybackSessionServiceListener_coordinator_didStartPlayingAnnouncementsAtMachAbsoluteTime_forEndpointID___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v27 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v27)
  {
    v4 = *v29;
    v5 = 0x278C85000uLL;
    v6 = &selRef_type;
    *&v3 = 138413058;
    v24 = v3;
    v25 = v2;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 endpointID];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = [*(v5 + 2504) localDeviceIdentifier];
        }

        v12 = v11;

        v13 = [v8 connection];
        v14 = [v13 remoteObjectProxy];

        if ([v12 isEqual:*(a1 + 40)])
        {
          v15 = [v14 conformsToProtocol:v6[328]];
          if (v15)
          {
            v16 = ANLogHandlePlaybackSessionServiceListener(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = MEMORY[0x277CCABB0];
              v26 = [v8 connection];
              v18 = [v17 numberWithInt:{objc_msgSend(v26, "processIdentifier")}];
              v19 = [v8 connection];
              [v19 clientID];
              v20 = v5;
              v22 = v21 = v4;
              v23 = *(a1 + 48);
              *buf = v24;
              v33 = &stru_2851BDB18;
              v34 = 2112;
              v35 = v18;
              v36 = 2112;
              v37 = v22;
              v38 = 2048;
              v39 = v23;
              _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Notifying Local Playback Client (%@, %@) Announcement playback starting at time: %lld", buf, 0x2Au);

              v4 = v21;
              v5 = v20;
              v6 = &selRef_type;

              v2 = v25;
            }

            [v14 announcementsWillStartPlaying:*(a1 + 48)];
          }
        }
      }

      v27 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v27);
  }
}

- (void)coordinator:(id)coordinator didUpdatePlaybackState:(unint64_t)state forEndpointID:(id)d
{
  dCopy = d;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackState_forEndpointID___block_invoke;
  block[3] = &unk_278C866B8;
  block[4] = self;
  v11 = dCopy;
  stateCopy = state;
  v9 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __85__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackState_forEndpointID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 endpointID];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v11 = v10;

        v12 = [v7 connection];
        v13 = [v12 remoteObjectProxy];

        if ([v11 isEqual:*(a1 + 40)] && objc_msgSend(v13, "conformsToProtocol:", &unk_2851E1C68))
        {
          [v13 announcementsStateUpdate:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)coordinator:(id)coordinator didUpdatePlaybackInfo:(id)info forEndpointID:(id)d
{
  infoCopy = info;
  dCopy = d;
  playbackClientsSerialQueue = [(ANPlaybackSessionServiceListener *)self playbackClientsSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackInfo_forEndpointID___block_invoke;
  block[3] = &unk_278C86668;
  block[4] = self;
  v13 = dCopy;
  v14 = infoCopy;
  v10 = infoCopy;
  v11 = dCopy;
  dispatch_async(playbackClientsSerialQueue, block);
}

void __84__ANPlaybackSessionServiceListener_coordinator_didUpdatePlaybackInfo_forEndpointID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) localPlaybackClients];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 endpointID];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[ANAnnouncementCoordinator localDeviceIdentifier];
        }

        v11 = v10;

        v12 = [v7 connection];
        v13 = [v12 remoteObjectProxy];

        if ([v11 isEqual:*(a1 + 40)] && objc_msgSend(v13, "conformsToProtocol:", &unk_2851E1C68))
        {
          [v13 didUpdatePlaybackInfo:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

@end