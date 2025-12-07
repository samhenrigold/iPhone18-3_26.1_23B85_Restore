@interface VCCompanionSyncService
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (VCCompanionSyncService)initWithSyncDataEndpoint:(id)endpoint;
- (VCCompanionSyncServiceDelegate)delegate;
- (void)companionSyncSession:(id)session didFinishWithError:(id)error;
- (void)companionSyncSession:(id)session didUpdateProgress:(double)progress;
- (void)companionSyncSessionDidFinishSendingChanges:(id)changes;
- (void)configureReasonForUnderlyingSession:(id)session withSession:(id)withSession;
- (void)dealloc;
- (void)requestFullResync;
- (void)requestSync;
- (void)requestSyncImmediately;
- (void)resetSession;
- (void)resumeServiceIfNecessary;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)service:(id)service encounteredError:(id)error context:(id)context;
- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)setCurrentSyncService:(id)service;
- (void)updateCurrentSyncServiceIfNecessary;
- (void)updateSyncDataHandlers;
@end

@implementation VCCompanionSyncService

- (VCCompanionSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)companionSyncSession:(id)session didUpdateProgress:(double)progress
{
  sessionCopy = session;
  delegate = [(VCCompanionSyncService *)self delegate];
  [delegate companionSyncService:self outgoingSyncSession:sessionCopy didUpdateProgress:progress];
}

- (void)companionSyncSessionDidFinishSendingChanges:(id)changes
{
  changesCopy = changes;
  delegate = [(VCCompanionSyncService *)self delegate];
  [delegate companionSyncService:self outgoingSyncSessionDidFinishSendingChanges:changesCopy];
}

- (void)companionSyncSession:(id)session didFinishWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  direction = [objc_opt_class() direction];
  v9 = @"Outgoing";
  if (direction == 1)
  {
    v9 = @"Incoming";
  }

  v10 = v9;
  v11 = getWFWatchSyncLogObject();
  v12 = v11;
  if (errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v24 = "[VCCompanionSyncService companionSyncSession:didFinishWithError:]";
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = sessionCopy;
      v29 = 2114;
      v30 = errorCopy;
      v13 = "%s %{public}@ session=%{public}@ finished with error: %{public}@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 42;
LABEL_8:
      _os_log_impl(&dword_23103C000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[VCCompanionSyncService companionSyncSession:didFinishWithError:]";
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = sessionCopy;
    v13 = "%s %{public}@ session=%{public}@ finished successfully";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 32;
    goto LABEL_8;
  }

  queue = [(VCCompanionSyncService *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VCCompanionSyncService_companionSyncSession_didFinishWithError___block_invoke;
  block[3] = &unk_2789000F8;
  block[4] = self;
  v21 = sessionCopy;
  v22 = errorCopy;
  v18 = errorCopy;
  v19 = sessionCopy;
  dispatch_async(queue, block);
}

void __66__VCCompanionSyncService_companionSyncSession_didFinishWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetSession];
  v2 = [*(a1 + 32) delegate];
  [v2 companionSyncService:*(a1 + 32) didFinishSyncSession:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 136315650;
    v14 = "[VCCompanionSyncService service:didSwitchFromPairingID:toPairingID:]";
    v15 = 2114;
    v16 = dCopy;
    v17 = 2114;
    v18 = iDCopy;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s CompanionSync did switch from %{public}@ to %{public}@", &v13, 0x20u);
  }

  if (iDCopy && ([MEMORY[0x277D2BD00] sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "deviceForPairingID:", iDCopy), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [[VCNRDeviceSyncService alloc] initWithCompanionSyncService:self device:v11];
    [(VCCompanionSyncService *)self setCurrentSyncService:v12];
  }

  else
  {
    [(VCCompanionSyncService *)self setCurrentSyncService:0];
  }

  [(VCCompanionSyncService *)self requestSyncImmediately];
}

- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[VCCompanionSyncService service:willSwitchFromPairingID:toPairingID:]";
    v12 = 2114;
    v13 = dCopy;
    v14 = 2114;
    v15 = iDCopy;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s CompanionSync will switch from %{public}@ to %{public}@", &v10, 0x20u);
  }

  [(VCCompanionSyncService *)self resetSession];
}

- (void)service:(id)service encounteredError:(id)error context:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[VCCompanionSyncService service:encounteredError:context:]";
    v9 = 2114;
    v10 = errorCopy;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s CompanionSync service encountered error: %{public}@", &v7, 0x16u);
  }
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  [(VCCompanionSyncService *)self resetSession];
  isRunningOnWatch = [(VCCompanionSyncService *)self isRunningOnWatch];
  if (isRunningOnWatch == [sessionCopy isSending])
  {
    isRunningOnWatch2 = [(VCCompanionSyncService *)self isRunningOnWatch];
    v11 = getWFWatchSyncLogObject();
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isRunningOnWatch2)
    {
      if (v21)
      {
        *buf = 136315138;
        v89 = "[VCCompanionSyncService service:startSession:error:]";
        v22 = "%s Ignoring sending session from watch; we have nothing to send";
LABEL_11:
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else if (v21)
    {
      *buf = 136315138;
      v89 = "[VCCompanionSyncService service:startSession:error:]";
      v22 = "%s Ignoring receiving session from phone; we have nothing to receive";
      goto LABEL_11;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  [(VCCompanionSyncService *)self updateCurrentSyncServiceIfNecessary];
  [(VCCompanionSyncService *)self updateSyncDataHandlers];
  currentSyncService = [(VCCompanionSyncService *)self currentSyncService];
  if (!currentSyncService)
  {
    v23 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v89 = "[VCCompanionSyncService service:startSession:error:]";
      _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_FAULT, "%s Not starting sync because the target device is unknown", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_18;
  }

  v11 = currentSyncService;
  delegate = [(VCCompanionSyncService *)self delegate];
  v13 = [delegate companionSyncServiceShouldStartSession:self];

  if ((v13 & 1) == 0)
  {
    v24 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      delegate2 = [(VCCompanionSyncService *)self delegate];
      *buf = 136315394;
      v89 = "[VCCompanionSyncService service:startSession:error:]";
      v90 = 2114;
      v91 = delegate2;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Not starting sync the %{public}@ returned NO", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (![(VCCompanionSyncService *)self isRunningOnWatch])
  {
    v70 = a2;
    errorCopy = error;
    v72 = sessionCopy;
    selfCopy = self;
    if ([sessionCopy isResetSync])
    {
      v27 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v89 = "[VCCompanionSyncService service:startSession:error:]";
        v90 = 2114;
        v91 = v11;
        _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_DEFAULT, "%s Clearing sync state for service %{public}@", buf, 0x16u);
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      currentDataHandlers = [(VCCompanionSyncService *)self currentDataHandlers];
      v29 = [currentDataHandlers countByEnumeratingWithState:&v84 objects:v95 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v85;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v85 != v31)
            {
              objc_enumerationMutation(currentDataHandlers);
            }

            v33 = *(*(&v84 + 1) + 8 * i);
            v83 = 0;
            v34 = [v33 resetSyncStateForService:v11 error:&v83];
            v35 = v83;
            if ((v34 & 1) == 0)
            {
              v36 = getWFWatchSyncLogObject();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v89 = "[VCCompanionSyncService service:startSession:error:]";
                v90 = 2112;
                v91 = v35;
                _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_FAULT, "%s Error removing sync state: %@", buf, 0x16u);
              }
            }
          }

          v30 = [currentDataHandlers countByEnumeratingWithState:&v84 objects:v95 count:16];
        }

        while (v30);
      }
    }

    v75 = objc_opt_new();
    v76 = objc_opt_new();
    v74 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    currentDataHandlers2 = [(VCCompanionSyncService *)self currentDataHandlers];
    v38 = [currentDataHandlers2 countByEnumeratingWithState:&v79 objects:v94 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v80;
      do
      {
        v41 = 0;
        do
        {
          if (*v80 != v40)
          {
            objc_enumerationMutation(currentDataHandlers2);
          }

          v42 = *(*(&v79 + 1) + 8 * v41);
          v77 = 0;
          v78 = 0;
          v43 = [v42 unsyncedChangesForSyncService:v11 metadata:&v78 error:&v77];
          v44 = v78;
          v45 = v77;
          v46 = v45;
          if (v44)
          {
            if ([MEMORY[0x277CCAC58] propertyList:v44 isValidForFormat:200])
            {
              if (!v46)
              {
                goto LABEL_43;
              }
            }

            else
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v70 object:selfCopy file:@"VCCompanionSyncService.m" lineNumber:244 description:@"Metadata dictionary must be serializable to a property list file"];

              if (!v46)
              {
LABEL_43:
                v47 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType")}];
                [v75 setObject:v44 forKey:v47];

LABEL_48:
                if (v43)
                {
                  [v74 addObjectsFromArray:v43];
                }

                goto LABEL_50;
              }
            }
          }

          else if (!v45)
          {
            goto LABEL_48;
          }

          v48 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            *buf = 136315650;
            v89 = "[VCCompanionSyncService service:startSession:error:]";
            v90 = 2114;
            v91 = v50;
            v92 = 2112;
            v93 = v46;
            _os_log_impl(&dword_23103C000, v48, OS_LOG_TYPE_FAULT, "%s Error getting unsynced changes from %{public}@: %@", buf, 0x20u);
          }

          [v76 addObject:v46];
LABEL_50:

          ++v41;
        }

        while (v39 != v41);
        v52 = [currentDataHandlers2 countByEnumeratingWithState:&v79 objects:v94 count:16];
        v39 = v52;
      }

      while (v52);
    }

    v53 = [v74 count];
    v19 = v53 != 0;
    if (v53)
    {
      v54 = getWFWatchSyncLogObject();
      sessionCopy = v72;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [v74 count];
        *buf = 136315394;
        v89 = "[VCCompanionSyncService service:startSession:error:]";
        v90 = 2048;
        v91 = v55;
        _os_log_impl(&dword_23103C000, v54, OS_LOG_TYPE_DEFAULT, "%s Got %lu changes to send", buf, 0x16u);
      }

      v56 = [VCCompanionSyncOutgoingSession alloc];
      currentDataHandlers3 = [(VCCompanionSyncService *)selfCopy currentDataHandlers];
      v58 = v75;
      v59 = [(VCCompanionSyncOutgoingSession *)v56 initWithSYSession:v72 service:v11 syncDataHandlers:currentDataHandlers3 changeSet:v74 metadata:v75];
      [(VCCompanionSyncService *)selfCopy setCurrentSession:v59];

      currentSession = [(VCCompanionSyncService *)selfCopy currentSession];
      [currentSession setDelegate:selfCopy];

      currentSession2 = [(VCCompanionSyncService *)selfCopy currentSession];
      [(VCCompanionSyncService *)selfCopy configureReasonForUnderlyingSession:v72 withSession:currentSession2];
LABEL_67:

      goto LABEL_19;
    }

    currentSession2 = [v76 firstObject];
    v62 = getWFWatchSyncLogObject();
    v63 = v62;
    sessionCopy = v72;
    if (currentSession2)
    {
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_65;
      }

      *buf = 136315394;
      v89 = "[VCCompanionSyncService service:startSession:error:]";
      v90 = 2112;
      v91 = currentSession2;
      v64 = "%s Error getting any changes to sync: %@";
      v65 = v63;
      v66 = OS_LOG_TYPE_FAULT;
      v67 = 22;
    }

    else
    {
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 136315138;
      v89 = "[VCCompanionSyncService service:startSession:error:]";
      v64 = "%s No changes to sync";
      v65 = v63;
      v66 = OS_LOG_TYPE_DEFAULT;
      v67 = 12;
    }

    _os_log_impl(&dword_23103C000, v65, v66, v64, buf, v67);
LABEL_65:

    delegate3 = [(VCCompanionSyncService *)selfCopy delegate];
    [delegate3 companionSyncService:selfCopy didRejectSessionWithError:currentSession2];

    v58 = v75;
    if (errorCopy)
    {
      v69 = currentSession2;
      *errorCopy = currentSession2;
    }

    goto LABEL_67;
  }

  v14 = [VCCompanionSyncIncomingSession alloc];
  currentDataHandlers4 = [(VCCompanionSyncService *)self currentDataHandlers];
  v16 = [(VCCompanionSyncSession *)v14 initWithSYSession:sessionCopy service:v11 syncDataHandlers:currentDataHandlers4];
  [(VCCompanionSyncService *)self setCurrentSession:v16];

  currentSession3 = [(VCCompanionSyncService *)self currentSession];
  [currentSession3 setDelegate:self];

  currentSession4 = [(VCCompanionSyncService *)self currentSession];
  [(VCCompanionSyncService *)self configureReasonForUnderlyingSession:sessionCopy withSession:currentSession4];

  v19 = 1;
LABEL_19:

  return v19;
}

- (void)configureReasonForUnderlyingSession:(id)session withSession:(id)withSession
{
  sessionCopy = session;
  withSessionCopy = withSession;
  delegate = [(VCCompanionSyncService *)self delegate];
  v8 = [delegate companionSyncService:self typeForSession:withSessionCopy];

  if (v8 == 1)
  {
    v9 = MEMORY[0x277CFBAB8];
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_6;
    }

    v9 = MEMORY[0x277CFBAC0];
  }

  [sessionCopy setReason:*v9];
LABEL_6:
}

- (void)setCurrentSyncService:(id)service
{
  v29 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  p_currentSyncService = &self->_currentSyncService;
  v7 = [(VCNRDeviceSyncService *)self->_currentSyncService isEqual:serviceCopy];
  if (!v7 && *p_currentSyncService)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    currentDataHandlers = [(VCCompanionSyncService *)self currentDataHandlers];
    v9 = [currentDataHandlers countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(currentDataHandlers);
          }

          [*(*(&v23 + 1) + 8 * i) deregisterSyncService:*p_currentSyncService];
        }

        v10 = [currentDataHandlers countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }
  }

  objc_storeStrong(&self->_currentSyncService, service);
  if (serviceCopy)
  {
    v13 = v7;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    currentDataHandlers2 = [(VCCompanionSyncService *)self currentDataHandlers];
    v15 = [currentDataHandlers2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(currentDataHandlers2);
          }

          [*(*(&v19 + 1) + 8 * j) registerSyncService:serviceCopy];
        }

        v16 = [currentDataHandlers2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (void)updateCurrentSyncServiceIfNecessary
{
  currentSyncService = [(VCCompanionSyncService *)self currentSyncService];

  if (!currentSyncService)
  {
    mEMORY[0x277D2BD00] = [MEMORY[0x277D2BD00] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BD00] getActivePairedDevice];

    if (getActivePairedDevice)
    {
      v5 = [[VCNRDeviceSyncService alloc] initWithCompanionSyncService:self device:getActivePairedDevice];
      [(VCCompanionSyncService *)self setCurrentSyncService:v5];
    }
  }
}

- (void)updateSyncDataHandlers
{
  v29 = *MEMORY[0x277D85DE8];
  currentDataHandlers = [(VCCompanionSyncService *)self currentDataHandlers];
  syncDataEndpoint = [(VCCompanionSyncService *)self syncDataEndpoint];
  syncDataHandlers = [syncDataEndpoint syncDataHandlers];

  currentSyncService = [(VCCompanionSyncService *)self currentSyncService];
  if (currentSyncService)
  {
    v7 = [syncDataHandlers mutableCopy];
    [v7 minusSet:currentDataHandlers];
    v8 = [currentDataHandlers mutableCopy];
    [v8 minusSet:syncDataHandlers];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v23 + 1) + 8 * v13++) registerSyncService:currentSyncService];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) deregisterSyncService:{currentSyncService, v19}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }

  [(VCCompanionSyncService *)self setCurrentDataHandlers:syncDataHandlers, v19];
}

- (void)resetSession
{
  currentSession = [(VCCompanionSyncService *)self currentSession];
  [currentSession setDelegate:0];

  [(VCCompanionSyncService *)self setCurrentSession:0];
}

- (void)requestFullResync
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[VCCompanionSyncService requestFullResync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Requesting a full resync", &v5, 0xCu);
  }

  [(VCCompanionSyncService *)self resumeServiceIfNecessary];
  service = [(VCCompanionSyncService *)self service];
  [service setNeedsResetSync];
}

- (void)requestSyncImmediately
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[VCCompanionSyncService requestSyncImmediately]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Requesting a sync", &v5, 0xCu);
  }

  [(VCCompanionSyncService *)self resumeServiceIfNecessary];
  service = [(VCCompanionSyncService *)self service];
  [service setHasChangesAvailable];
}

- (void)resumeServiceIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  service = [(VCCompanionSyncService *)self service];
  v13 = 0;
  v3 = [service resume:&v13];
  v4 = v13;

  domain = [v4 domain];
  if ([domain isEqualToString:*MEMORY[0x277CFBAA8]])
  {
    code = [v4 code];

    if (code == 2002)
    {
      v7 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[VCCompanionSyncService resumeServiceIfNecessary]";
        v8 = "%s SYService is already running";
LABEL_9:
        v10 = v7;
        v11 = OS_LOG_TYPE_INFO;
        v12 = 12;
LABEL_12:
        _os_log_impl(&dword_23103C000, v10, v11, v8, buf, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = getWFWatchSyncLogObject();
  v7 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[VCCompanionSyncService resumeServiceIfNecessary]";
      v8 = "%s Successfully resumed SYService";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[VCCompanionSyncService resumeServiceIfNecessary]";
    v16 = 2114;
    v17 = v4;
    v8 = "%s Error resuming SYService: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)requestSync
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[VCCompanionSyncService requestSync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Poking the debouncer to request a sync", &v5, 0xCu);
  }

  debouncer = [(VCCompanionSyncService *)self debouncer];
  [debouncer poke];
}

- (void)dealloc
{
  service = [(VCCompanionSyncService *)self service];
  [service suspend];

  [(VCCompanionSyncService *)self setCurrentSyncService:0];
  v4.receiver = self;
  v4.super_class = VCCompanionSyncService;
  [(VCCompanionSyncService *)&v4 dealloc];
}

- (VCCompanionSyncService)initWithSyncDataEndpoint:(id)endpoint
{
  v30 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  v25.receiver = self;
  v25.super_class = VCCompanionSyncService;
  v6 = [(VCCompanionSyncService *)&v25 init];
  if (v6)
  {
    if (objc_opt_class())
    {
      if (objc_opt_class())
      {
        v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

        v9 = dispatch_queue_create("com.apple.shortcuts.VCCompanionSyncService", v8);
        queue = v6->_queue;
        v6->_queue = v9;

        objc_storeStrong(&v6->_syncDataEndpoint, endpoint);
        syncDataHandlers = [endpointCopy syncDataHandlers];
        currentDataHandlers = v6->_currentDataHandlers;
        v6->_currentDataHandlers = syncDataHandlers;

        v13 = [objc_alloc(MEMORY[0x277D79F00]) initWithDelay:v6->_queue maximumDelay:2.0 queue:10.0];
        debouncer = v6->_debouncer;
        v6->_debouncer = v13;

        [(WFDebouncer *)v6->_debouncer addTarget:v6 action:sel_requestSyncImmediately];
        v26 = *MEMORY[0x277CFBAB0];
        v27 = &unk_2845ED170;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v16 = [objc_alloc(MEMORY[0x277CFBA98]) initWithService:@"com.apple.private.alloy.siri.voiceshortcuts" priority:0 asMasterStore:-[VCCompanionSyncService isRunningOnWatch](v6 options:{"isRunningOnWatch") ^ 1, v15}];
        service = v6->_service;
        v6->_service = v16;

        [(SYService *)v6->_service setDelegate:v6 queue:v6->_queue];
        [(VCCompanionSyncService *)v6 resumeServiceIfNecessary];
        v18 = v6->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__VCCompanionSyncService_initWithSyncDataEndpoint___block_invoke;
        block[3] = &unk_278900148;
        v19 = v6;
        v24 = v19;
        dispatch_async(v18, block);
        v20 = v19;

LABEL_12:
        goto LABEL_13;
      }

      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[VCCompanionSyncService initWithSyncDataEndpoint:]";
        v21 = "%s The NanoRegistry framework is not present on this device";
        goto LABEL_10;
      }
    }

    else
    {
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[VCCompanionSyncService initWithSyncDataEndpoint:]";
        v21 = "%s The CompanionSync framework is not present on this device";
LABEL_10:
        _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_12;
  }

  v20 = 0;
LABEL_13:

  return v20;
}

@end