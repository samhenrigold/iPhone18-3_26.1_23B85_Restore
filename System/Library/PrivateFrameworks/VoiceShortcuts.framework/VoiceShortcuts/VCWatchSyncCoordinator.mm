@interface VCWatchSyncCoordinator
- (BOOL)companionSyncServiceShouldStartSession:(id)session;
- (VCWatchSyncCoordinator)initWithSyncDataEndpoint:(id)endpoint eventHandler:(id)handler;
- (int64_t)companionSyncService:(id)service typeForSession:(id)session;
- (void)companionSyncService:(id)service didFinishSyncSession:(id)session withError:(id)error;
- (void)companionSyncService:(id)service didRejectSessionWithError:(id)error;
- (void)companionSyncService:(id)service outgoingSyncSession:(id)session didUpdateProgress:(double)progress;
- (void)companionSyncService:(id)service outgoingSyncSessionDidFinishSendingChanges:(id)changes;
- (void)dealloc;
- (void)handleDeviceDidChangeVersionNotification;
- (void)handleDidUnpairNotification:(id)notification;
- (void)requestSyncIfUnrestricted;
- (void)startObservingWatchChangeNotifications;
- (void)stopObservingWatchChangeNotifications;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
@end

@implementation VCWatchSyncCoordinator

- (void)handleDidUnpairNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D2BC40]];

  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    pairingID = [v5 pairingID];
    *buf = 136315394;
    v29 = "[VCWatchSyncCoordinator handleDidUnpairNotification:]";
    v30 = 2114;
    v31 = pairingID;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s received DidUnpair notification for pairingID=%{public}@", buf, 0x16u);
  }

  v22 = v5;
  if (v5)
  {
    v8 = [VCNRDeviceSyncService alloc];
    service = [(VCWatchSyncCoordinator *)self service];
    v10 = [(VCNRDeviceSyncService *)v8 initWithCompanionSyncService:service device:v5];
  }

  else
  {
    v10 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  syncDataEndpoint = [(VCWatchSyncCoordinator *)self syncDataEndpoint];
  syncDataHandlers = [syncDataEndpoint syncDataHandlers];

  v13 = [syncDataHandlers countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(syncDataHandlers);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        v18 = [v17 resetSyncStateForService:v10 error:&v23];
        v19 = v23;
        if ((v18 & 1) == 0)
        {
          v20 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            syncServiceIdentifier = [(VCNRDeviceSyncService *)v10 syncServiceIdentifier];
            *buf = 136315650;
            v29 = "[VCWatchSyncCoordinator handleDidUnpairNotification:]";
            v30 = 2114;
            v31 = syncServiceIdentifier;
            v32 = 2114;
            v33 = v19;
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Error removing sync state for sync service with identifier=%{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v14 = [syncDataHandlers countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)handleDeviceDidChangeVersionNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[VCWatchSyncCoordinator handleDeviceDidChangeVersionNotification]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Received PairedDeviceDidChangeVersion notification", &v4, 0xCu);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
}

- (void)stopObservingWatchChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D2BC80];
  mEMORY[0x277D2BD00] = [MEMORY[0x277D2BD00] sharedInstance];
  [defaultCenter removeObserver:self name:v3 object:mEMORY[0x277D2BD00]];

  eventHandler = [(VCWatchSyncCoordinator *)self eventHandler];
  [eventHandler removeObserver:self name:@"com.apple.nanoregistry.paireddevicedidchangeversion"];
}

- (void)startObservingWatchChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D2BC80];
  mEMORY[0x277D2BD00] = [MEMORY[0x277D2BD00] sharedInstance];
  [defaultCenter addObserver:self selector:sel_handleDidUnpairNotification_ name:v3 object:mEMORY[0x277D2BD00]];

  eventHandler = [(VCWatchSyncCoordinator *)self eventHandler];
  [eventHandler addObserver:self selector:sel_handleDeviceDidChangeVersionNotification name:@"com.apple.nanoregistry.paireddevicedidchangeversion"];
}

- (void)companionSyncService:(id)service outgoingSyncSession:(id)session didUpdateProgress:(double)progress
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:service];
  activeSyncSession = [v6 activeSyncSession];

  if (activeSyncSession)
  {
    [activeSyncSession reportProgress:progress];
    v8 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      sessionIdentifier = [activeSyncSession sessionIdentifier];
      v10 = 136315650;
      v11 = "[VCWatchSyncCoordinator companionSyncService:outgoingSyncSession:didUpdateProgress:]";
      v12 = 2048;
      progressCopy = progress;
      v14 = 2114;
      v15 = sessionIdentifier;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Reported progress %f for PairedSync session %{public}@", &v10, 0x20u);
    }
  }
}

- (void)companionSyncService:(id)service outgoingSyncSessionDidFinishSendingChanges:(id)changes
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:service];
  activeSyncSession = [v4 activeSyncSession];

  if (activeSyncSession)
  {
    [activeSyncSession syncDidCompleteSending];
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      sessionIdentifier = [activeSyncSession sessionIdentifier];
      v8 = 136315394;
      v9 = "[VCWatchSyncCoordinator companionSyncService:outgoingSyncSessionDidFinishSendingChanges:]";
      v10 = 2114;
      v11 = sessionIdentifier;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Finished sending changes for PairedSync session %{public}@", &v8, 0x16u);
    }
  }
}

- (void)companionSyncService:(id)service didRejectSessionWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  pairedSyncCoordinator = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  activeSyncSession = [pairedSyncCoordinator activeSyncSession];

  if (activeSyncSession)
  {
    if (errorCopy)
    {
      [activeSyncSession syncDidFailWithError:errorCopy];
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sessionIdentifier = [activeSyncSession sessionIdentifier];
        v14 = 136315650;
        v15 = "[VCWatchSyncCoordinator companionSyncService:didRejectSessionWithError:]";
        v16 = 2114;
        v17 = sessionIdentifier;
        v18 = 2114;
        v19 = errorCopy;
        v10 = "%s PairedSync session %{public}@ failed to start syncing with error: %{public}@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 32;
LABEL_7:
        _os_log_impl(&dword_23103C000, v11, v12, v10, &v14, v13);
      }
    }

    else
    {
      [activeSyncSession syncDidComplete];
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        sessionIdentifier = [activeSyncSession sessionIdentifier];
        v14 = 136315394;
        v15 = "[VCWatchSyncCoordinator companionSyncService:didRejectSessionWithError:]";
        v16 = 2114;
        v17 = sessionIdentifier;
        v10 = "%s Completed PairedSync session %{public}@ succesfully because no changes had to be sent";
        v11 = v8;
        v12 = OS_LOG_TYPE_INFO;
        v13 = 22;
        goto LABEL_7;
      }
    }
  }
}

- (void)companionSyncService:(id)service didFinishSyncSession:(id)session withError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  pairedSyncCoordinator = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  activeSyncSession = [pairedSyncCoordinator activeSyncSession];

  if (activeSyncSession)
  {
    if (errorCopy)
    {
      [activeSyncSession syncDidFailWithError:errorCopy];
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sessionIdentifier = [activeSyncSession sessionIdentifier];
        v15 = 136315650;
        v16 = "[VCWatchSyncCoordinator companionSyncService:didFinishSyncSession:withError:]";
        v17 = 2114;
        v18 = sessionIdentifier;
        v19 = 2114;
        v20 = errorCopy;
        v11 = "%s PairedSync session %{public}@ failed with error: %{public}@";
        v12 = v9;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 32;
LABEL_7:
        _os_log_impl(&dword_23103C000, v12, v13, v11, &v15, v14);
      }
    }

    else
    {
      [activeSyncSession syncDidComplete];
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        sessionIdentifier = [activeSyncSession sessionIdentifier];
        v15 = 136315394;
        v16 = "[VCWatchSyncCoordinator companionSyncService:didFinishSyncSession:withError:]";
        v17 = 2114;
        v18 = sessionIdentifier;
        v11 = "%s Completed PairedSync session %{public}@ succesfully";
        v12 = v9;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 22;
        goto LABEL_7;
      }
    }
  }
}

- (int64_t)companionSyncService:(id)service typeForSession:(id)session
{
  v4 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:service];
  activeSyncSession = [v4 activeSyncSession];

  if (activeSyncSession)
  {
    syncSessionType = [activeSyncSession syncSessionType];
    if (syncSessionType)
    {
      v7 = 2 * (syncSessionType == 1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)companionSyncServiceShouldStartSession:(id)session
{
  v9 = *MEMORY[0x277D85DE8];
  pairedSyncCoordinator = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  syncRestriction = [pairedSyncCoordinator syncRestriction];

  if (syncRestriction == 1)
  {
    v5 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[VCWatchSyncCoordinator companionSyncServiceShouldStartSession:]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Not syncing because of PSYSyncRestrictionLimitPush", &v7, 0xCu);
    }
  }

  return syncRestriction != 1;
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v10 = *MEMORY[0x277D85DE8];
  restrictionCopy = restriction;
  v5 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[VCWatchSyncCoordinator syncCoordinatorDidChangeSyncRestriction:]";
    v8 = 2048;
    syncRestriction = [restrictionCopy syncRestriction];
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Sync restriction changed to %lu", &v6, 0x16u);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionIdentifier = [sessionCopy sessionIdentifier];
    v10 = 136315394;
    v11 = "[VCWatchSyncCoordinator syncCoordinator:didInvalidateSyncSession:]";
    v12 = 2114;
    v13 = sessionIdentifier;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Invalidated PairedSync session %{public}@", &v10, 0x16u);
  }

  startedSessions = [(VCWatchSyncCoordinator *)self startedSessions];
  sessionIdentifier2 = [sessionCopy sessionIdentifier];
  [startedSessions removeObject:sessionIdentifier2];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    sessionIdentifier = [sessionCopy sessionIdentifier];
    v8 = 136315394;
    v9 = "[VCWatchSyncCoordinator syncCoordinator:beginSyncSession:]";
    v10 = 2114;
    v11 = sessionIdentifier;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Starting PairedSync session %{public}@", &v8, 0x16u);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
}

- (void)requestSyncIfUnrestricted
{
  v19 = *MEMORY[0x277D85DE8];
  service = [(VCWatchSyncCoordinator *)self service];
  v4 = [(VCWatchSyncCoordinator *)self companionSyncServiceShouldStartSession:service];

  if (v4)
  {
    pairedSyncCoordinator = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
    activeSyncSession = [pairedSyncCoordinator activeSyncSession];

    if (activeSyncSession)
    {
      sessionIdentifier = [activeSyncSession sessionIdentifier];
      startedSessions = [(VCWatchSyncCoordinator *)self startedSessions];
      v9 = [startedSessions containsObject:sessionIdentifier];

      if ((v9 & 1) == 0)
      {
        syncSessionType = [activeSyncSession syncSessionType];
        service2 = [(VCWatchSyncCoordinator *)self service];
        v12 = service2;
        if (syncSessionType)
        {
          [service2 requestSyncImmediately];
        }

        else
        {
          [service2 requestFullResync];
        }

        startedSessions2 = [(VCWatchSyncCoordinator *)self startedSessions];
        [startedSessions2 addObject:sessionIdentifier];

        v14 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 136315394;
          v16 = "[VCWatchSyncCoordinator requestSyncIfUnrestricted]";
          v17 = 2114;
          v18 = sessionIdentifier;
          _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Requested CompanionSync session for PairedSync session %{public}@", &v15, 0x16u);
        }
      }
    }

    else
    {
      sessionIdentifier = [(VCWatchSyncCoordinator *)self service];
      [sessionIdentifier requestSync];
    }
  }
}

- (void)dealloc
{
  [(VCWatchSyncCoordinator *)self stopObservingWatchChangeNotifications];
  v3.receiver = self;
  v3.super_class = VCWatchSyncCoordinator;
  [(VCWatchSyncCoordinator *)&v3 dealloc];
}

- (VCWatchSyncCoordinator)initWithSyncDataEndpoint:(id)endpoint eventHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v22.receiver = self;
  v22.super_class = VCWatchSyncCoordinator;
  v7 = [(VCWatchSyncCoordinator *)&v22 init];
  if (v7)
  {
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    if ([currentDevice idiom] == 1)
    {
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
        v10 = "%s Not running WatchSync on iPad";
LABEL_16:
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      }
    }

    else if (objc_opt_class())
    {
      if (objc_opt_class())
      {
        v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v9 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

        v13 = dispatch_queue_create("com.apple.VCWatchSyncCoordinator", v9);
        queue = v7->_queue;
        v7->_queue = v13;

        objc_storeStrong(&v7->_syncDataEndpoint, endpoint);
        v15 = [[VCCompanionSyncService alloc] initWithSyncDataEndpoint:endpointCopy];
        service = v7->_service;
        v7->_service = v15;

        [(VCCompanionSyncService *)v7->_service setDelegate:v7];
        if (v7->_service)
        {
          v17 = objc_opt_new();
          startedSessions = v7->_startedSessions;
          v7->_startedSessions = v17;

          v19 = [MEMORY[0x277D37C38] syncCoordinatorWithServiceName:@"com.apple.pairedsync.siriactionsd"];
          pairedSyncCoordinator = v7->_pairedSyncCoordinator;
          v7->_pairedSyncCoordinator = v19;

          [(PSYSyncCoordinator *)v7->_pairedSyncCoordinator setDelegate:v7 queue:v7->_queue];
          if (v7->_service)
          {
            [(VCWatchSyncCoordinator *)v7 startObservingWatchChangeNotifications];
          }

          v11 = v7;
          goto LABEL_18;
        }
      }

      else
      {
        v9 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v24 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
          v10 = "%s The NanoRegistry framework is not present on this device";
          goto LABEL_16;
        }
      }
    }

    else
    {
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v24 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
        v10 = "%s The PairedSync framework is not present on this device";
        goto LABEL_16;
      }
    }

    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

@end