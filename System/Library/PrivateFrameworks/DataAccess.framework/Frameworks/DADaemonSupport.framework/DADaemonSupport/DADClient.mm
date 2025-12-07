@interface DADClient
+ (BOOL)_shouldReloadAgentsForAccountChange:(id)change;
+ (id)clientsToInterrogate;
+ (unint64_t)permissionsForMessage:(id)message;
- (BOOL)_checkAccessForMessage:(id)message;
- (BOOL)_checkAccountId:(id)id;
- (BOOL)_hasCalendarAccess;
- (BOOL)_hasContactsAccess;
- (BOOL)_hasReminderAccess;
- (BOOL)_isAccountsDaemon;
- (BOOL)_isInternalTool;
- (BOOL)isMonitoringAccountID:(id)d folderID:(id)iD;
- (DADClient)initWithClientID:(id)d;
- (DADClient)initWithConnection:(id)connection clientID:(id)d;
- (NSString)clientName;
- (id)_createReplyToRequest:(id)request withProperties:(id)properties;
- (id)timersForAccountWithID:(id)d;
- (int)clientPID;
- (unint64_t)outstandingStopMonitoringAgentRequests;
- (unint64_t)watchedFolderCount;
- (void)_agentsStopped:(id)stopped;
- (void)_asPolicyKeyChanged:(id)changed;
- (void)_asyncProcessMeetingRequests:(id)requests;
- (void)_beginDownloadingAttachmentEvent:(id)event eventDict:(id)dict;
- (void)_beginMonitoringFolders:(id)folders;
- (void)_cancelCalendarAvailabilityRequest:(id)request eventDict:(id)dict;
- (void)_cancelCalendarDirectorySearch:(id)search eventDict:(id)dict;
- (void)_cancelDownloadingAttachmentEvent:(id)event eventDict:(id)dict;
- (void)_cancelDownloadingSubscribedCalendar:(id)calendar eventDict:(id)dict;
- (void)_cancelGrantedDelegatesListRequest:(id)request eventDict:(id)dict;
- (void)_cancelRestartingAgentsDueToTimeout;
- (void)_cancelServerContactsSearch:(id)search;
- (void)_checkIsOofSettingsSupported:(id)supported;
- (void)_checkSubscribedCalendarIsJunk:(id)junk eventDict:(id)dict;
- (void)_clearAllStopMonitoringAgentsTokens;
- (void)_clientDiedWithReason:(id)reason;
- (void)_dispatchMessage:(id)message;
- (void)_downloadSubscribedCalendar:(id)calendar eventDict:(id)dict;
- (void)_endAllServerSimulations;
- (void)_evaluateStopAgentsTimeout;
- (void)_fetchHolidayCalendars:(id)calendars eventDict:(id)dict;
- (void)_fetchOfficeHoursEvent:(id)event eventDict:(id)dict;
- (void)_foldersUpdated:(id)updated;
- (void)_getCurrentPolicyKey:(id)key;
- (void)_getStatusReports:(id)reports;
- (void)_handleAccountChange:(id)change;
- (void)_handleURL:(id)l;
- (void)_manageCalDAVServerSimulatorWithHostname:(id)hostname action:(id)action;
- (void)_openServerContactsSearch:(id)search;
- (void)_openServerOofSettingsRequest:(id)request;
- (void)_performCalendarDirectorySearch:(id)search eventDict:(id)dict;
- (void)_performGroupExpansion:(id)expansion eventDict:(id)dict;
- (void)_processFolderChange:(id)change;
- (void)_processMeetingRequests:(id)requests;
- (void)_removeBusyFolderIDs:(id)ds forAccountWithID:(id)d;
- (void)_removeWatchedFolderIDs:(id)ds forAccountWithID:(id)d;
- (void)_reportFolderItemsSyncResult:(id)result;
- (void)_reportSharedCalendarAsJunkEvent:(id)event eventDict:(id)dict;
- (void)_reportSubscribedCalendarAsJunk:(id)junk eventDict:(id)dict;
- (void)_requestAllFolderContentsUpdate:(id)update;
- (void)_requestAllFolderContentsUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_requestCalendarAvailability:(id)availability eventDict:(id)dict;
- (void)_requestClientStatusDump:(id)dump;
- (void)_requestFolderContentsUpdate:(id)update;
- (void)_requestFolderContentsUpdateForFolders:(id)folders accountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_requestFolderListUpdate:(id)update;
- (void)_requestFolderListUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (void)_requestGrantedDelegatesList:(id)list eventDict:(id)dict;
- (void)_requestPolicyUpdate:(id)update;
- (void)_resetCertWarnings:(id)warnings;
- (void)_resetThrottleTimers:(id)timers;
- (void)_respondToSharedCalendarEvent:(id)event eventDict:(id)dict;
- (void)_restartAgentsDueToTimeout;
- (void)_resumeMonitoringFolders:(id)folders;
- (void)_scheduleStopAgentsTimeoutAfter:(double)after;
- (void)_sendAccessDeniedReplyForMessage:(id)message;
- (void)_sendInvalidAccountIDReplyToMessage:(id)message withAccountID:(id)d;
- (void)_setFolderIdsThatExternalClientsCareAbout:(id)about;
- (void)_setOfficeHoursEvent:(id)event eventDict:(id)dict;
- (void)_setUserNameAndPasswordForSubscribedCalendar:(id)calendar eventDict:(id)dict;
- (void)_startMonitoringAgents:(id)agents;
- (void)_startMonitoringAgentsWithClientToken:(unint64_t)token completion:(id)completion;
- (void)_startMonitoringAgentsWithServerToken:(int)token completion:(id)completion;
- (void)_startTimeoutWithClientToken:(unint64_t)token;
- (void)_stopMonitoringAgents:(id)agents;
- (void)_stopMonitoringAgentsWithClientToken:(unint64_t)token completion:(id)completion;
- (void)_stopMonitoringFolders:(id)folders;
- (void)_suspendMonitoringFolders:(id)folders;
- (void)_updateGrantedDelegatePermission:(id)permission eventDict:(id)dict;
- (void)applyClientStatusReportToAggregator:(id)aggregator;
- (void)beginMonitoringPersistentFolders:(id)folders forAccount:(id)account;
- (void)dealloc;
- (void)delegateWithIDIsGoingAway:(id)away;
- (void)disable;
- (void)exitBlockingCallAndSendReplyToRequest:(id)request withStatus:(int64_t)status;
- (void)noteBlockedClientCallChange:(int)change;
- (void)noteRefreshClientCallChange:(int)change;
- (void)persistentClientCleanup;
- (void)reconnectWithConnection:(id)connection;
- (void)registerForInterrogation;
- (void)unregisterForInterrogation;
@end

@implementation DADClient

- (DADClient)initWithConnection:(id)connection clientID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dCopy = d;
  v36.receiver = self;
  v36.super_class = DADClient;
  v8 = [(DADClient *)&v36 init];
  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 134218242;
      v38 = connectionCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&dword_248524000, v9, v10, "Creating a new DADClient for Connection %p and ClientID %@", buf, 0x16u);
    }

    [(DADClient *)v8 setConn:connectionCopy];
    conn = [(DADClient *)v8 conn];
    v12 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(conn, v12);

    conn2 = [(DADClient *)v8 conn];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __41__DADClient_initWithConnection_clientID___block_invoke;
    v33 = &unk_278F1CE80;
    v34 = connectionCopy;
    v14 = v8;
    v35 = v14;
    xpc_connection_set_event_handler(conn2, &v30);

    objc_storeStrong(&v14->_clientBundleID, d);
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    clientUniqueID = v14->_clientUniqueID;
    v14->_clientUniqueID = da_newGUID;

    v14->_callAccountingLock._os_unfair_lock_opaque = 0;
    v14->_stopAgentsTimeoutLock._os_unfair_lock_opaque = 0;
    v14->_accountTimersLock._os_unfair_lock_opaque = 0;
    v17 = objc_opt_new();
    [(DADClient *)v14 setWatchedIDs:v17];

    v18 = objc_opt_new();
    [(DADClient *)v14 setBusyIDs:v18];

    v19 = objc_opt_new();
    [(DADClient *)v14 setUpdatedIDs:v19];

    v20 = objc_opt_new();
    [(DADClient *)v14 setAccountTimers:v20];

    v21 = objc_opt_new();
    [(DADClient *)v14 setActionDelegatesById:v21];

    v22 = objc_opt_new();
    [(DADClient *)v14 setAgentMonitoringTokens:v22];

    v23 = objc_opt_new();
    [(DADClient *)v14 setSimulatedCalDAVHostnames:v23];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__foldersUpdated_ name:*MEMORY[0x277D036E8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v14 selector:sel__asPolicyKeyChanged_ name:*MEMORY[0x277D038B8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v14 selector:sel__requestClientStatusDump_ name:@"DADRequestClientStatusDumpNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v14 selector:sel__agentsStopped_ name:@"DADAgentsStoppedNotification" object:0];

    conn3 = [(DADClient *)v14 conn];
    xpc_connection_resume(conn3);
  }

  return v8;
}

void __41__DADClient_initWithConnection_clientID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x24C1D1BA0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_248524000, v9, v10, "ClientDied Not Dispatching XPC Event %@ for DADClient %@", &v13, 0x16u);
    }

    [*(a1 + 40) _clientDiedWithReason:v3];
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_248524000, v5, v6, "Dispatching XPC Event %@ for DADClient %@", &v13, 0x16u);
    }

    [*(a1 + 40) _dispatchMessage:v3];
  }
}

- (DADClient)initWithClientID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v20.receiver = self;
  v20.super_class = DADClient;
  v6 = [(DADClient *)&v20 init];
  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 134218242;
      v22 = 0;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_248524000, v7, v8, "Creating a new DADClient for Connection %p and ClientID %@", buf, 0x16u);
    }

    [(DADClient *)v6 setConn:0];
    objc_storeStrong(&v6->_clientBundleID, d);
    v6->_callAccountingLock._os_unfair_lock_opaque = 0;
    v6->_stopAgentsTimeoutLock._os_unfair_lock_opaque = 0;
    v6->_accountTimersLock._os_unfair_lock_opaque = 0;
    v9 = objc_opt_new();
    [(DADClient *)v6 setWatchedIDs:v9];

    v10 = objc_opt_new();
    [(DADClient *)v6 setBusyIDs:v10];

    v11 = objc_opt_new();
    [(DADClient *)v6 setUpdatedIDs:v11];

    v12 = objc_opt_new();
    [(DADClient *)v6 setAccountTimers:v12];

    v13 = objc_opt_new();
    [(DADClient *)v6 setActionDelegatesById:v13];

    v14 = objc_opt_new();
    [(DADClient *)v6 setAgentMonitoringTokens:v14];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__foldersUpdated_ name:*MEMORY[0x277D036E8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__asPolicyKeyChanged_ name:*MEMORY[0x277D038B8] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__requestClientStatusDump_ name:@"DADRequestClientStatusDumpNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__agentsStopped_ name:@"DADAgentsStoppedNotification" object:0];
  }

  return v6;
}

- (void)reconnectWithConnection:(id)connection
{
  connectionCopy = connection;
  conn = [(DADClient *)self conn];

  if (conn)
  {
    [DADClient reconnectWithConnection:];
  }

  [(DADClient *)self setConn:connectionCopy];
  conn2 = [(DADClient *)self conn];
  v7 = dispatch_get_global_queue(2, 0);
  xpc_connection_set_target_queue(conn2, v7);

  conn3 = [(DADClient *)self conn];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__DADClient_reconnectWithConnection___block_invoke;
  handler[3] = &unk_278F1CEA8;
  handler[4] = self;
  xpc_connection_set_event_handler(conn3, handler);

  conn4 = [(DADClient *)self conn];
  xpc_connection_resume(conn4);
}

void __37__DADClient_reconnectWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MEMORY[0x24C1D1BA0]();
  if (v3 == MEMORY[0x277D86480])
  {
    [*(a1 + 32) _clientDiedWithReason:v4];
  }

  else if (v3 == MEMORY[0x277D86468])
  {
    [*(a1 + 32) _dispatchMessage:v4];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    conn = [(DADClient *)self conn];
    clientBundleID = [(DADClient *)self clientBundleID];
    *buf = 134218498;
    selfCopy = self;
    v12 = 2048;
    v13 = conn;
    v14 = 2112;
    v15 = clientBundleID;
    _os_log_impl(&dword_248524000, v3, v4, "Destroying DADClient %p for Connection %p and ClientID %@", buf, 0x20u);
  }

  mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
  [mEMORY[0x277D037B8] requestPriority:0 forClient:self dataclasses:0];

  [(DADClient *)self _cancelRestartingAgentsDueToTimeout];
  conn = self->_conn;
  if (conn)
  {
    xpc_connection_cancel(conn);
  }

  [(DADClient *)self disable];
  v9.receiver = self;
  v9.super_class = DADClient;
  [(DADClient *)&v9 dealloc];
}

- (NSString)clientName
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_clientName)
  {
    conn = [(DADClient *)self conn];

    if (conn)
    {
      memset(v8, 0, sizeof(v8));
      if (proc_name([(DADClient *)self clientPID], v8, 0x100u))
      {
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      }

      else
      {
        v4 = @"(unknown)";
      }

      clientName = self->_clientName;
      self->_clientName = &v4->isa;
    }
  }

  v6 = self->_clientName;

  return v6;
}

- (int)clientPID
{
  if (!self->_clientPID)
  {
    conn = [(DADClient *)self conn];

    if (conn)
    {
      conn2 = [(DADClient *)self conn];
      self->_clientPID = xpc_connection_get_pid(conn2);
    }
  }

  return self->_clientPID;
}

- (void)_removeBusyFolderIDs:(id)ds forAccountWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  busyIDs = [(DADClient *)self busyIDs];
  v9 = [busyIDs objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObject:{*(*(&v16 + 1) + 8 * v14++), v16}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      busyIDs2 = [(DADClient *)self busyIDs];
      [busyIDs2 removeObjectForKey:dCopy];
    }
  }
}

- (void)_removeWatchedFolderIDs:(id)ds forAccountWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  watchedIDs = [(DADClient *)self watchedIDs];
  v9 = [watchedIDs objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObject:{*(*(&v16 + 1) + 8 * v14++), v16}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    if (![v9 count])
    {
      watchedIDs2 = [(DADClient *)self watchedIDs];
      [watchedIDs2 removeObjectForKey:dCopy];
    }
  }
}

- (void)disable
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v33.receiver = self;
    v33.super_class = DADClient;
    [(DADisableableObject *)&v33 disable];
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    if (actionDelegatesById)
    {
      v4 = actionDelegatesById;
      actionDelegatesById2 = [(DADClient *)self actionDelegatesById];
      v6 = [actionDelegatesById2 count];

      if (v6)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        actionDelegatesById3 = [(DADClient *)self actionDelegatesById];
        allValues = [actionDelegatesById3 allValues];

        v9 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            v12 = 0;
            do
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v29 + 1) + 8 * v12++) disable];
            }

            while (v10 != v12);
            v10 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v10);
        }
      }
    }

    conn = [(DADClient *)self conn];

    if (conn)
    {
      conn2 = [(DADClient *)self conn];
      xpc_connection_cancel(conn2);

      [(DADClient *)self setConn:0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    os_unfair_lock_lock(&self->_accountTimersLock);
    accountTimers = [(DADClient *)self accountTimers];
    allValues2 = [accountTimers allValues];

    os_unfair_lock_unlock(&self->_accountTimersLock);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = allValues2;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v25 + 1) + 8 * v22++) killAllTimers];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v20);
    }

    [(DADClient *)self unregisterForInterrogation];
    v23 = +[DADMain sharedMain];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __20__DADClient_disable__block_invoke;
    v24[3] = &unk_278F1CDC0;
    v24[4] = self;
    [v23 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v24];

    [(DADClient *)self noteBlockedClientCallChange:2];
  }
}

void __20__DADClient_disable__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) busyIDs];
  v2 = [v1 copy];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v38 = v2;
  obj = [v2 allKeys];
  v43 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v43)
  {
    v41 = *v58;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v58 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v57 + 1) + 8 * i);
        v5 = [v38 objectForKeyedSubscript:v4];
        if ([v5 count])
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v7 = v5;
          v8 = [v7 countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v54;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v54 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v53 + 1) + 8 * j);
                if ([v7 countForObject:v12])
                {
                  v13 = 1;
                  do
                  {
                    [v6 addObject:v12];
                  }

                  while ([v7 countForObject:v12] > v13++);
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v53 objects:v67 count:16];
            }

            while (v9);
          }

          v15 = +[DADAgentManager sharedManager];
          [v15 resumeMonitoringAccountID:v4 folderIDs:v6];

          [*(a1 + 32) _removeBusyFolderIDs:v6 forAccountWithID:v4];
        }
      }

      v43 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v43);
  }

  v16 = [*(a1 + 32) watchedIDs];
  v17 = [v16 copy];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = v17;
  v35 = [v17 allKeys];
  obja = [v35 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (obja)
  {
    v36 = *v50;
    v18 = *(MEMORY[0x277D03988] + 6);
    do
    {
      v19 = 0;
      do
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v35);
        }

        v42 = v19;
        v20 = *(*(&v49 + 1) + 8 * v19);
        v21 = [v37 objectForKeyedSubscript:v20];
        v22 = [v21 allObjects];

        v23 = objc_opt_new();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v45 objects:v65 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v46;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v46 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v45 + 1) + 8 * k);
              v30 = +[DADAccessManager sharedManager];
              v31 = [v30 isAccountID:v20 folderID:v29 watchedByClientBesides:*(a1 + 32)];

              if (v31)
              {
                v32 = DALoggingwithCategory();
                if (os_log_type_enabled(v32, v18))
                {
                  *buf = 138543618;
                  v62 = v20;
                  v63 = 2112;
                  v64 = v29;
                  _os_log_impl(&dword_248524000, v32, v18, "Not stop monitoring account %{public}@ folder %@ because other clients are watching it", buf, 0x16u);
                }
              }

              else
              {
                [v23 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v45 objects:v65 count:16];
          }

          while (v26);
        }

        if ([v23 count])
        {
          v33 = +[DADAgentManager sharedManager];
          [v33 stopMonitoringAccountID:v20 folderIDs:v23];
        }

        if ([v24 count])
        {
          [*(a1 + 32) _removeWatchedFolderIDs:v24 forAccountWithID:v20];
        }

        v19 = v42 + 1;
      }

      while ((v42 + 1) != obja);
      obja = [v35 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (obja);
  }

  [*(a1 + 32) _clearAllStopMonitoringAgentsTokens];
  [*(a1 + 32) _endAllServerSimulations];
  v34 = +[DADAccessManager sharedManager];
  [v34 removeClient:*(a1 + 32)];
}

- (unint64_t)watchedFolderCount
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  watchedIDs = [(DADClient *)self watchedIDs];
  allKeys = [watchedIDs allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        watchedIDs2 = [(DADClient *)self watchedIDs];
        v12 = [watchedIDs2 objectForKeyedSubscript:v10];
        allObjects = [v12 allObjects];

        v7 += [allObjects count];
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)persistentClientCleanup
{
  v36 = *MEMORY[0x277D85DE8];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    conn2 = [(DADClient *)self conn];
    xpc_connection_cancel(conn2);

    [(DADClient *)self setConn:0];
  }

  if ([(DADisableableObject *)self isDisabled])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v5, v6, "PersistentClientCleanup called on disabled client. Will not perform any actions.", buf, 2u);
    }
  }

  else
  {
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    if (actionDelegatesById)
    {
      v8 = actionDelegatesById;
      actionDelegatesById2 = [(DADClient *)self actionDelegatesById];
      v10 = [actionDelegatesById2 count];

      if (v10)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        actionDelegatesById3 = [(DADClient *)self actionDelegatesById];
        allValues = [actionDelegatesById3 allValues];

        v13 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v30;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v29 + 1) + 8 * i) disable];
            }

            v14 = [allValues countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v14);
        }
      }
    }

    os_unfair_lock_lock(&self->_accountTimersLock);
    accountTimers = [(DADClient *)self accountTimers];
    allValues2 = [accountTimers allValues];

    os_unfair_lock_unlock(&self->_accountTimersLock);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = allValues2;
    v19 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v25 + 1) + 8 * j) killAllTimers];
        }

        v20 = [v5 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v20);
    }

    [(DADClient *)self unregisterForInterrogation];
    v23 = +[DADMain sharedMain];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __36__DADClient_persistentClientCleanup__block_invoke;
    v24[3] = &unk_278F1CDC0;
    v24[4] = self;
    [v23 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v24];

    [(DADClient *)self noteBlockedClientCallChange:2];
  }
}

void __36__DADClient_persistentClientCleanup__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) busyIDs];
  v2 = [v1 copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v2;
  obj = [v2 allKeys];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v5 = [v19 objectForKeyedSubscript:v4];
        if ([v5 count])
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v7 = v5;
          v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v22;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v22 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v21 + 1) + 8 * j);
                if ([v7 countForObject:v12])
                {
                  v13 = 1;
                  do
                  {
                    [v6 addObject:v12];
                  }

                  while ([v7 countForObject:v12] > v13++);
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v9);
          }

          v15 = +[DADAgentManager sharedManager];
          [v15 resumeMonitoringAccountID:v4 folderIDs:v6];

          [*(a1 + 32) _removeBusyFolderIDs:v6 forAccountWithID:v4];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  [*(a1 + 32) _clearAllStopMonitoringAgentsTokens];
  [*(a1 + 32) _endAllServerSimulations];
}

- (BOOL)isMonitoringAccountID:(id)d folderID:(id)iD
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  watchedIDs = [(DADClient *)self watchedIDs];
  v9 = [watchedIDs objectForKeyedSubscript:dCopy];
  allObjects = [v9 allObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if ([iDCopy isEqualToString:{*(*(&v16 + 1) + 8 * i), v16}])
        {
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

- (void)noteBlockedClientCallChange:(int)change
{
  os_unfair_lock_lock(&self->_callAccountingLock);
  switch(change)
  {
    case 0:
      if ([(DADisableableObject *)self isDisabled])
      {
        break;
      }

      v6 = [(DADClient *)self numOutstandingBlockingClientCalls]+ 1;
      selfCopy2 = self;
      goto LABEL_9;
    case 1:
      [(DADClient *)self setNumOutstandingBlockingClientCalls:[(DADClient *)self numOutstandingBlockingClientCalls]- 1];
      if ([(DADClient *)self numOutstandingBlockingClientCalls]> 0)
      {
        break;
      }

      selfCopy2 = self;
      v6 = 0;
LABEL_9:
      [(DADClient *)selfCopy2 setNumOutstandingBlockingClientCalls:v6];
      break;
    case 2:
      [(DADClient *)self setNumOutstandingBlockingClientCalls:0];
      [(DADClient *)self setNumOutstandingRefreshPriorityClientCalls:0];
      break;
  }

  if ([(DADClient *)self numOutstandingBlockingClientCalls]== 1)
  {
    mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
    [mEMORY[0x277D037B8] requestPriority:2 forClient:self dataclasses:127];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v8, v9, "DAPERF DADClient Bumped priority, someone's waiting", buf, 2u);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (![(DADClient *)self numOutstandingBlockingClientCalls])
  {
    numOutstandingRefreshPriorityClientCalls = [(DADClient *)self numOutstandingRefreshPriorityClientCalls];
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    v13 = os_log_type_enabled(v11, v12);
    if (numOutstandingRefreshPriorityClientCalls < 1)
    {
      if (v13)
      {
        *v16 = 0;
        _os_log_impl(&dword_248524000, v11, v12, "DAPERF DADClient Dropping priority, no one's waiting", v16, 2u);
      }

      mEMORY[0x277D037B8]2 = [MEMORY[0x277D037B8] sharedManager];
      v8 = mEMORY[0x277D037B8]2;
      v15 = 0;
    }

    else
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&dword_248524000, v11, v12, "DAPERF DADClient Dropping priority back to refresh", v17, 2u);
      }

      mEMORY[0x277D037B8]2 = [MEMORY[0x277D037B8] sharedManager];
      v8 = mEMORY[0x277D037B8]2;
      v15 = 1;
    }

    [mEMORY[0x277D037B8]2 requestPriority:v15 forClient:self dataclasses:127];
    goto LABEL_22;
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_callAccountingLock);
}

- (void)noteRefreshClientCallChange:(int)change
{
  os_unfair_lock_lock(&self->_callAccountingLock);
  if (change == 1)
  {
    [(DADClient *)self setNumOutstandingRefreshPriorityClientCalls:[(DADClient *)self numOutstandingRefreshPriorityClientCalls]- 1];
    if ([(DADClient *)self numOutstandingRefreshPriorityClientCalls]> 0)
    {
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_7;
  }

  if (!change && ![(DADisableableObject *)self isDisabled])
  {
    v5 = [(DADClient *)self numOutstandingRefreshPriorityClientCalls]+ 1;
LABEL_7:
    [(DADClient *)self setNumOutstandingRefreshPriorityClientCalls:v5];
  }

LABEL_8:
  if (![(DADClient *)self numOutstandingBlockingClientCalls])
  {
    if ([(DADClient *)self numOutstandingRefreshPriorityClientCalls]== 1)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v6, v7, "DAPERF DADClient Bumping priority to refresh", buf, 2u);
      }

      v8 = 1;
LABEL_17:

      mEMORY[0x277D037B8] = [MEMORY[0x277D037B8] sharedManager];
      [mEMORY[0x277D037B8] requestPriority:v8 forClient:self dataclasses:127];

      goto LABEL_18;
    }

    if (![(DADClient *)self numOutstandingRefreshPriorityClientCalls])
    {
      v6 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v6, v9))
      {
        *v11 = 0;
        _os_log_impl(&dword_248524000, v6, v9, "DAPERF DADClient Dropping priority, no one's waiting", v11, 2u);
      }

      v8 = 0;
      goto LABEL_17;
    }
  }

LABEL_18:
  os_unfair_lock_unlock(&self->_callAccountingLock);
}

+ (id)clientsToInterrogate
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  allObjects = [clientsToInterrogate allObjects];
  objc_sync_exit(v2);

  return allObjects;
}

- (void)registerForInterrogation
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = clientsToInterrogate;
  if (!clientsToInterrogate)
  {
    v4 = objc_opt_new();
    v5 = clientsToInterrogate;
    clientsToInterrogate = v4;

    v3 = clientsToInterrogate;
  }

  [v3 addObject:self];
  objc_sync_exit(obj);
}

- (void)unregisterForInterrogation
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  [clientsToInterrogate removeObject:self];
  objc_sync_exit(obj);
}

- (id)_createReplyToRequest:(id)request withProperties:(id)properties
{
  propertiesCopy = properties;
  reply = xpc_dictionary_create_reply(request);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __50__DADClient__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278F1CED0;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (void)_beginMonitoringFolders:(id)folders
{
  v56 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D08]];
  LODWORD(v8) = [v7 BOOLValue];
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v9, v11))
  {
    v12 = @"NO";
    if (v8)
    {
      v12 = @"YES";
    }

    *buf = 138412290;
    v53 = v12;
    _os_log_impl(&dword_248524000, v9, v11, "Received begin monitoring folders request with persistent flag: %@", buf, 0xCu);
  }

  v13 = objc_opt_new();
  v14 = DALoggingwithCategory();
  v15 = *(v10 + 6);
  if (os_log_type_enabled(v14, v15))
  {
    [v13 transactionId];
    v16 = v8;
    v8 = v13;
    v17 = v6;
    v18 = foldersCopy;
    v19 = v7;
    v21 = v20 = v5;
    *buf = 138543362;
    v53 = v21;
    _os_log_impl(&dword_248524000, v14, v15, "DATransaction starting, ID: %{public}@", buf, 0xCu);

    v5 = v20;
    v7 = v19;
    foldersCopy = v18;
    v6 = v17;
    v13 = v8;
    LOBYTE(v8) = v16;
    v10 = MEMORY[0x277D03988];
  }

  if (!v6)
  {
    v30 = DALoggingwithCategory();
    v31 = *(v10 + 3);
    if (os_log_type_enabled(v30, v31))
    {
      *buf = 136315394;
      v53 = "[DADClient _beginMonitoringFolders:]";
      v54 = 2112;
      v55 = v4;
      v32 = "Malformed request from client in %s: %@";
      v33 = v30;
      v34 = v31;
      v35 = 22;
LABEL_14:
      _os_log_impl(&dword_248524000, v33, v34, v32, buf, v35);
    }

LABEL_15:

    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_16;
  }

  if (!v5)
  {
    v30 = DALoggingwithCategory();
    v36 = *(v10 + 3);
    if (os_log_type_enabled(v30, v36))
    {
      *buf = 136315138;
      v53 = "[DADClient _beginMonitoringFolders:]";
      v32 = "Malformed request from client in %s: bad accountID";
      v33 = v30;
      v34 = v36;
      v35 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __37__DADClient__beginMonitoringFolders___block_invoke;
  v46[3] = &unk_278F1CEF8;
  v46[4] = self;
  v22 = v5;
  v47 = v22;
  v37 = v7;
  v23 = v5;
  v24 = v6;
  v48 = v24;
  v51 = v8;
  v25 = v13;
  v49 = v25;
  v50 = foldersCopy;
  v26 = MEMORY[0x24C1D1770](v46);
  v27 = +[DADMain sharedMain];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __37__DADClient__beginMonitoringFolders___block_invoke_46;
  v44[3] = &unk_278F1CF20;
  v44[4] = self;
  v45 = v26;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __37__DADClient__beginMonitoringFolders___block_invoke_2;
  v39[3] = &unk_278F1CF48;
  v40 = v22;
  v28 = v24;
  v5 = v23;
  v7 = v37;
  v41 = v28;
  v43 = v45;
  v42 = v25;
  v29 = v45;
  [v27 addToOperationsQueueDisabledCheckAndGoBlock:v44 wrappedBlock:v39];

LABEL_16:
}

void __37__DADClient__beginMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = [*(a1 + 32) watchedIDs];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = [*(a1 + 32) watchedIDs];
      [v6 setObject:v5 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v5 addObjectsFromArray:*(a1 + 48)];
    }
  }

  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 32) clientBundleID];

    if (v7)
    {
      if ([*(a1 + 32) watchedFolderCount])
      {
        *(*(a1 + 32) + 52) = 1;
      }

      else
      {
        v8 = DALoggingwithCategory();
        v9 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v8, v9))
        {
          v10 = [*(a1 + 56) transactionId];
          *buf = 138412290;
          v45 = v10;
          _os_log_impl(&dword_248524000, v8, v9, "No folders watched. Marking not persistent. Transaction: %@", buf, 0xCu);
        }
      }

      if (*(*(a1 + 32) + 52) == 1)
      {
        v11 = +[DADAgentManager sharedManager];
        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = [*(a1 + 32) clientBundleID];
        [v11 addPersistMonitoringAccountID:v13 folderIDs:v12 clientID:v14];
      }
    }
  }

  v42 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 10;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
  v43 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

  v18 = [*(a1 + 32) _createReplyToRequest:*(a1 + 64) withProperties:v17];
  v19 = xpc_dictionary_get_remote_connection(*(a1 + 64));
  v20 = [*(a1 + 32) conn];

  if (v20)
  {
    v21 = [*(a1 + 32) conn];

    if (v21 != v19)
    {
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v22, v23, "Remote client disconnected and reconnected while begin monitoring folders.", buf, 2u);
      }

LABEL_33:

      goto LABEL_34;
    }

    v24 = [*(a1 + 32) conn];
    xpc_connection_send_message(v24, v18);

    if (*(*(a1 + 32) + 52) == 1)
    {
      v22 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 48)];
      v25 = [*(a1 + 32) updatedIDs];
      v26 = [v25 objectForKeyedSubscript:*(a1 + 40)];

      if (v26)
      {
        [v22 intersectSet:v26];
        if ([v22 count])
        {
          v27 = DALoggingwithCategory();
          v28 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 138412290;
            v45 = v22;
            _os_log_impl(&dword_248524000, v27, v28, "Sending pending folder updates to client. Updated folders: %@", buf, 0xCu);
          }

          v29 = [v22 allObjects];
          v30 = *MEMORY[0x277D03BC0];
          v31 = *MEMORY[0x277D039D0];
          v40[0] = *MEMORY[0x277D03C88];
          v40[1] = v31;
          v32 = *(a1 + 40);
          v41[0] = v30;
          v41[1] = v32;
          v40[2] = *MEMORY[0x277D03BA8];
          v39 = v29;
          v41[2] = v29;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
          v34 = _CFXPCCreateXPCObjectFromCFObject();
          v35 = [*(a1 + 32) conn];
          xpc_connection_send_message(v35, v34);

          [v26 minusSet:v22];
          v36 = [v26 count];
          v37 = [*(a1 + 32) updatedIDs];
          v38 = v37;
          if (v36)
          {
            [v37 setObject:v26 forKey:*(a1 + 40)];
          }

          else
          {
            [v37 removeObjectForKey:*(a1 + 40)];
          }
        }
      }

      goto LABEL_33;
    }
  }

LABEL_34:
  [*(a1 + 32) noteBlockedClientCallChange:1];
}

uint64_t __37__DADClient__beginMonitoringFolders___block_invoke_46(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __37__DADClient__beginMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 startMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)beginMonitoringPersistentFolders:(id)folders forAccount:(id)account
{
  v34 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  accountCopy = account;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v9, v10, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke;
  v28[3] = &unk_278F1CF70;
  v28[4] = self;
  v12 = accountCopy;
  v29 = v12;
  v13 = foldersCopy;
  v30 = v13;
  v14 = v8;
  v31 = v14;
  v15 = MEMORY[0x24C1D1770](v28);
  v16 = +[DADMain sharedMain];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke_48;
  v26[3] = &unk_278F1CF20;
  v26[4] = self;
  v27 = v15;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke_2;
  v21[3] = &unk_278F1CF48;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v27;
  v17 = v14;
  v18 = v27;
  v19 = v13;
  v20 = v12;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v26 wrappedBlock:v21];
}

void __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) watchedIDs];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = [*(a1 + 32) watchedIDs];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v4 addObjectsFromArray:*(a1 + 48)];
    }
  }

  v6 = [*(a1 + 32) clientBundleID];

  if (v6)
  {
    if ([*(a1 + 32) watchedFolderCount])
    {
      *(*(a1 + 32) + 52) = 1;
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [*(a1 + 56) transactionId];
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_248524000, v7, v8, "No folders watched. Marking not persistent. Transaction: %@", &v14, 0xCu);
      }
    }

    if (*(*(a1 + 32) + 52) == 1)
    {
      v10 = +[DADAgentManager sharedManager];
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = [*(a1 + 32) clientBundleID];
      [v10 addPersistMonitoringAccountID:v12 folderIDs:v11 clientID:v13];
    }
  }
}

uint64_t __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke_48(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __57__DADClient_beginMonitoringPersistentFolders_forAccount___block_invoke_2(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 startMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_stopMonitoringFolders:(id)folders
{
  v41 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v38 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v38 = "[DADClient _stopMonitoringFolders:]";
      v39 = 2112;
      v40 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_248524000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v38 = "[DADClient _stopMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __36__DADClient__stopMonitoringFolders___block_invoke;
  v33[3] = &unk_278F1CF70;
  v33[4] = self;
  v13 = v7;
  v34 = v13;
  v14 = v6;
  v35 = v14;
  v36 = foldersCopy;
  v15 = MEMORY[0x24C1D1770](v33);
  v16 = +[DADMain sharedMain];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __36__DADClient__stopMonitoringFolders___block_invoke_49;
  v31[3] = &unk_278F1CF20;
  v31[4] = self;
  v32 = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __36__DADClient__stopMonitoringFolders___block_invoke_2;
  v25[3] = &unk_278F1CF98;
  v26 = v13;
  v27 = v14;
  selfCopy = self;
  v30 = v32;
  v29 = v8;
  v17 = v32;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:v25];

LABEL_12:
}

void __36__DADClient__stopMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _removeWatchedFolderIDs:*(a1 + 40) forAccountWithID:*(a1 + 48)];
  v4 = *(a1 + 32);
  if (v4[52] == 1)
  {
    if (![v4 watchedFolderCount])
    {
      *(*(a1 + 32) + 52) = 0;
    }

    v5 = [*(a1 + 32) watchedIDs];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

    if (v6 && [v6 count])
    {
      v7 = +[DADAgentManager sharedManager];
      v9 = *(a1 + 40);
      v8 = *(a1 + 48);
      v10 = [*(a1 + 32) clientBundleID];
      [v7 removePersistMonitoringAccountID:v8 folderIDs:v9 clientID:v10];
    }

    else
    {
      v7 = +[DADAgentManager sharedManager];
      v11 = *(a1 + 48);
      v10 = [*(a1 + 32) clientBundleID];
      [v7 clearPersistMonitoringAccountID:v11 clientID:v10];
    }
  }

  v22 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 10;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  v23[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  v15 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v14];
  v16 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v17 = [*(a1 + 32) conn];

  if (v17)
  {
    v18 = [*(a1 + 32) conn];

    if (v18 == v16)
    {
      v19 = [*(a1 + 32) conn];
      xpc_connection_send_message(v19, v15);
    }

    else
    {
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        *v21 = 0;
        _os_log_impl(&dword_248524000, v19, v20, "Remote client disconnected and reconnected while stopping monitoring folders.", v21, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];
}

uint64_t __36__DADClient__stopMonitoringFolders___block_invoke_49(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

void __36__DADClient__stopMonitoringFolders___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v16 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    v7 = *(MEMORY[0x277D03988] + 6);
    *&v4 = 138543618;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = +[DADAccessManager sharedManager];
        v11 = [v10 isAccountID:*(a1 + 40) folderID:v9 watchedByClientBesides:*(a1 + 48)];

        if (v11)
        {
          v12 = DALoggingwithCategory();
          if (os_log_type_enabled(v12, v7))
          {
            v13 = *(a1 + 40);
            *buf = v15;
            v22 = v13;
            v23 = 2112;
            v24 = v9;
            _os_log_impl(&dword_248524000, v12, v7, "Not stop monitoring account %{public}@ folder %@ because other clients are watching it", buf, 0x16u);
          }
        }

        else
        {
          [v16 addObject:v9];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  if ([v16 count])
  {
    v14 = +[DADAgentManager sharedManager];
    [v14 stopMonitoringAccountID:*(a1 + 40) folderIDs:v16];
  }

  (*(*(a1 + 64) + 16))();
}

- (void)_resumeMonitoringFolders:(id)folders
{
  v40 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v37 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v37 = "[DADClient _resumeMonitoringFolders:]";
      v38 = 2112;
      v39 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_248524000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v37 = "[DADClient _resumeMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __38__DADClient__resumeMonitoringFolders___block_invoke;
  v32[3] = &unk_278F1CF70;
  v32[4] = self;
  v13 = v7;
  v33 = v13;
  v14 = v6;
  v34 = v14;
  v35 = foldersCopy;
  v15 = MEMORY[0x24C1D1770](v32);
  v16 = +[DADMain sharedMain];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __38__DADClient__resumeMonitoringFolders___block_invoke_50;
  v30[3] = &unk_278F1CF20;
  v30[4] = self;
  v31 = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __38__DADClient__resumeMonitoringFolders___block_invoke_2;
  v25[3] = &unk_278F1CF48;
  v26 = v14;
  v27 = v13;
  v29 = v31;
  v28 = v8;
  v17 = v31;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v25];

LABEL_12:
}

void __38__DADClient__resumeMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _removeBusyFolderIDs:*(a1 + 40) forAccountWithID:*(a1 + 48)];
  v14 = *MEMORY[0x277D03E38];
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 10;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v7 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v6];
  v8 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v9 = [*(a1 + 32) conn];

  if (v9)
  {
    v10 = [*(a1 + 32) conn];

    if (v10 == v8)
    {
      v11 = [*(a1 + 32) conn];
      xpc_connection_send_message(v11, v7);
    }

    else
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *v13 = 0;
        _os_log_impl(&dword_248524000, v11, v12, "Remote client disconnected and reconnected while resuming monitoring folders.", v13, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];
}

uint64_t __38__DADClient__resumeMonitoringFolders___block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __38__DADClient__resumeMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 resumeMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_suspendMonitoringFolders:(id)folders
{
  v40 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v37 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  if (!v7)
  {
    v18 = DALoggingwithCategory();
    v19 = *(v10 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v37 = "[DADClient _suspendMonitoringFolders:]";
      v38 = 2112;
      v39 = v5;
      v20 = "Malformed request from client in %s: %@";
      v21 = v18;
      v22 = v19;
      v23 = 22;
LABEL_10:
      _os_log_impl(&dword_248524000, v21, v22, v20, buf, v23);
    }

LABEL_11:

    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!v6)
  {
    v18 = DALoggingwithCategory();
    v24 = *(v10 + 3);
    if (os_log_type_enabled(v18, v24))
    {
      *buf = 136315138;
      v37 = "[DADClient _suspendMonitoringFolders:]";
      v20 = "Malformed request from client in %s: bad accountID";
      v21 = v18;
      v22 = v24;
      v23 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__DADClient__suspendMonitoringFolders___block_invoke;
  v32[3] = &unk_278F1CF70;
  v32[4] = self;
  v13 = v6;
  v33 = v13;
  v14 = v7;
  v34 = v14;
  v35 = foldersCopy;
  v15 = MEMORY[0x24C1D1770](v32);
  v16 = +[DADMain sharedMain];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __39__DADClient__suspendMonitoringFolders___block_invoke_51;
  v30[3] = &unk_278F1CF20;
  v30[4] = self;
  v31 = v15;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __39__DADClient__suspendMonitoringFolders___block_invoke_2;
  v25[3] = &unk_278F1CF48;
  v26 = v13;
  v27 = v14;
  v29 = v31;
  v28 = v8;
  v17 = v31;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v25];

LABEL_12:
}

void __39__DADClient__suspendMonitoringFolders___block_invoke(uint64_t a1, int a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) busyIDs];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (!v4)
    {
      v4 = [MEMORY[0x277CCA940] set];
      v5 = [*(a1 + 32) busyIDs];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
    }

    if ([*(a1 + 48) count])
    {
      [v4 addObjectsFromArray:*(a1 + 48)];
    }

    v6 = 2;
  }

  else
  {
    v6 = 10;
  }

  v16 = *MEMORY[0x277D03E38];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v9 = [*(a1 + 32) _createReplyToRequest:*(a1 + 56) withProperties:v8];
  v10 = xpc_dictionary_get_remote_connection(*(a1 + 56));
  v11 = [*(a1 + 32) conn];

  if (v11)
  {
    v12 = [*(a1 + 32) conn];

    if (v12 == v10)
    {
      v13 = [*(a1 + 32) conn];
      xpc_connection_send_message(v13, v9);
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v14))
      {
        *v15 = 0;
        _os_log_impl(&dword_248524000, v13, v14, "Remote client disconnected and reconnected while suspending monitoring folders.", v15, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];
}

uint64_t __39__DADClient__suspendMonitoringFolders___block_invoke_51(uint64_t a1)
{
  v2 = [*(a1 + 32) isDisabled];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2 ^ 1u;
}

uint64_t __39__DADClient__suspendMonitoringFolders___block_invoke_2(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 suspendMonitoringAccountID:a1[4] folderIDs:a1[5]];

  v3 = *(a1[7] + 16);

  return v3();
}

- (void)_stopMonitoringAgentsWithClientToken:(unint64_t)token completion:(id)completion
{
  completionCopy = completion;
  v7 = +[DADAgentManager sharedManager];
  v8 = [v7 enqueueDisableMonitoringAgents:completionCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  agentMonitoringTokens = [(DADClient *)self agentMonitoringTokens];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [agentMonitoringTokens setObject:v9 forKeyedSubscript:v11];

  [(DADClient *)self _startTimeoutWithClientToken:token];
}

- (void)_startMonitoringAgentsWithClientToken:(unint64_t)token completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  agentMonitoringTokens = [(DADClient *)self agentMonitoringTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  v9 = [agentMonitoringTokens objectForKeyedSubscript:v8];

  if (v9)
  {
    intValue = [v9 intValue];
    agentMonitoringTokens2 = [(DADClient *)self agentMonitoringTokens];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
    [agentMonitoringTokens2 removeObjectForKey:v12];

    agentMonitoringTokens3 = [(DADClient *)self agentMonitoringTokens];
    v14 = [agentMonitoringTokens3 count];

    if (!v14)
    {
      [(DADClient *)self _cancelRestartingAgentsDueToTimeout];
    }
  }

  else
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v18[0] = 67109120;
      v18[1] = token;
      _os_log_impl(&dword_248524000, v15, v16, "Requested to start monitoring agents with unrecognized client token %d. Forcing a reload.", v18, 8u);
    }

    v17 = +[DADAgentManager sharedManager];
    intValue = [v17 enqueueDisableMonitoringAgents:0];
  }

  [(DADClient *)self _startMonitoringAgentsWithServerToken:intValue completion:completionCopy];
}

- (void)_startMonitoringAgentsWithServerToken:(int)token completion:(id)completion
{
  v4 = *&token;
  completionCopy = completion;
  v6 = +[DADAgentManager sharedManager];
  [v6 enqueueEnableMonitoringAgents:v4 completion:completionCopy];
}

- (void)_startTimeoutWithClientToken:(unint64_t)token
{
  os_unfair_lock_lock(&self->_stopAgentsTimeoutLock);
  if (self->_stopAgentTimeoutScheduled)
  {

    os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);
  }

  else
  {
    v4 = CalApproximateContinuousTime();
    self->_stopAgentsTimeout = CalNSTimeIntervalToContinuousInterval() + v4;
    self->_stopAgentTimeoutScheduled = 1;
    os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);

    [(DADClient *)self _scheduleStopAgentsTimeoutAfter:600.0];
  }
}

- (void)_evaluateStopAgentsTimeout
{
  os_unfair_lock_lock(&self->_stopAgentsTimeoutLock);
  if (self->_stopAgentsTimeout)
  {
    CalContinuousIntervalToNSTimeInterval();
    v4 = v3;
    CalApproximateContinuousTime();
    CalContinuousIntervalToNSTimeInterval();
    v6 = v4 - v5;
    if (v6 < 1.0)
    {
      self->_stopAgentTimeoutScheduled = 0;
      os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);

      [(DADClient *)self _restartAgentsDueToTimeout];
    }

    else
    {
      os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);

      [(DADClient *)self _scheduleStopAgentsTimeoutAfter:v6];
    }
  }

  else
  {
    self->_stopAgentTimeoutScheduled = 0;

    os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);
  }
}

- (void)_scheduleStopAgentsTimeoutAfter:(double)after
{
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, (after * 1000000000.0));
  v5 = gDADHighAvailabilityQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DADClient__scheduleStopAgentsTimeoutAfter___block_invoke;
  v6[3] = &unk_278F1CE28;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__DADClient__scheduleStopAgentsTimeoutAfter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateStopAgentsTimeout];
}

- (void)_restartAgentsDueToTimeout
{
  v26 = *MEMORY[0x277D85DE8];
  agentMonitoringTokens = [(DADClient *)self agentMonitoringTokens];
  allKeys = [agentMonitoringTokens allKeys];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    clientName = [(DADClient *)self clientName];
    *buf = 138544130;
    v19 = clientName;
    v20 = 1024;
    clientPID = [(DADClient *)self clientPID];
    v22 = 1024;
    v23 = 600;
    v24 = 2112;
    v25 = allKeys;
    _os_log_impl(&dword_248524000, v5, v6, "StopMonitoringAgents timeout reached! %{public}@ (%i) requested we stop monitoring agents but didn't tell us to resume within %i seconds of the last stop. Assuming it's broken and starting monitoring agents again anyway with client tokens: %@", buf, 0x22u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = allKeys;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        -[DADClient _startMonitoringAgentsWithClientToken:completion:](self, "_startMonitoringAgentsWithClientToken:completion:", [*(*(&v13 + 1) + 8 * i) intValue], 0);
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_cancelRestartingAgentsDueToTimeout
{
  os_unfair_lock_lock(&self->_stopAgentsTimeoutLock);
  self->_stopAgentsTimeout = 0;

  os_unfair_lock_unlock(&self->_stopAgentsTimeoutLock);
}

- (void)_clearAllStopMonitoringAgentsTokens
{
  v16 = *MEMORY[0x277D85DE8];
  agentMonitoringTokens = [(DADClient *)self agentMonitoringTokens];
  allValues = [agentMonitoringTokens allValues];

  agentMonitoringTokens2 = [(DADClient *)self agentMonitoringTokens];
  [agentMonitoringTokens2 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[DADClient _startMonitoringAgentsWithServerToken:completion:](self, "_startMonitoringAgentsWithServerToken:completion:", [*(*(&v11 + 1) + 8 * v10++) intValue], 0);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(DADClient *)self _cancelRestartingAgentsDueToTimeout];
}

- (unint64_t)outstandingStopMonitoringAgentRequests
{
  agentMonitoringTokens = [(DADClient *)self agentMonitoringTokens];
  v3 = [agentMonitoringTokens count];

  return v3;
}

- (void)_startMonitoringAgents:(id)agents
{
  v28 = *MEMORY[0x277D85DE8];
  agentsCopy = agents;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    selfCopy = transactionId;
    _os_log_impl(&dword_248524000, v6, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03A00]];
  bOOLValue = [v11 BOOLValue];

  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03A08]];
  if (BYSetupAssistantNeedsToRun())
  {
    v14 = DALoggingwithCategory();
    if (os_log_type_enabled(v14, v8))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_248524000, v14, v8, "Buddy needs to Run. Resetting Outstanding Agents and Registering for Buddy for Client %@", buf, 0xCu);
    }

    [(DADClient *)self _clearAllStopMonitoringAgentsTokens];
    v15 = +[DADAgentManager sharedManager];
    [v15 registerForBuddy];

    if (bOOLValue)
    {
      selfCopy3 = self;
      v17 = agentsCopy;
      v18 = 2;
LABEL_15:
      [(DADClient *)selfCopy3 exitBlockingCallAndSendReplyToRequest:v17 withStatus:v18];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
    v20 = DALoggingwithCategory();
    v21 = *(v7 + 3);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v20, v21, "Ignoring call to _startMonitoringAgents: with missing client token", buf, 2u);
    }

    if (bOOLValue)
    {
      selfCopy3 = self;
      v17 = agentsCopy;
      v18 = 65;
      goto LABEL_15;
    }

LABEL_17:
    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_18;
  }

  if (!bOOLValue)
  {
    -[DADClient _startMonitoringAgentsWithClientToken:completion:](self, "_startMonitoringAgentsWithClientToken:completion:", [v13 unsignedIntegerValue], 0);
    goto LABEL_17;
  }

  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __36__DADClient__startMonitoringAgents___block_invoke;
  v22[3] = &unk_278F1CFC0;
  objc_copyWeak(&v25, buf);
  v23 = agentsCopy;
  v24 = v5;
  v19 = MEMORY[0x24C1D1770](v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
  -[DADClient _startMonitoringAgentsWithClientToken:completion:](self, "_startMonitoringAgentsWithClientToken:completion:", [v13 unsignedIntegerValue], v19);

LABEL_18:
}

void __36__DADClient__startMonitoringAgents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained exitBlockingCallAndSendReplyToRequest:*(a1 + 32) withStatus:2];
}

- (void)exitBlockingCallAndSendReplyToRequest:(id)request withStatus:(int64_t)status
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277D03E38];
  v6 = MEMORY[0x277CCABB0];
  requestCopy = request;
  v8 = [v6 numberWithInteger:status];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(DADClient *)self _createReplyToRequest:requestCopy withProperties:v9];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    conn2 = [(DADClient *)self conn];
    xpc_connection_send_message(conn2, v10);
  }

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_stopMonitoringAgents:(id)agents
{
  v24 = *MEMORY[0x277D85DE8];
  agentsCopy = agents;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v23 = transactionId;
    _os_log_impl(&dword_248524000, v6, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03A00]];
  bOOLValue = [v11 BOOLValue];

  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03A08]];
  v14 = v13;
  if (!v13)
  {
    v16 = DALoggingwithCategory();
    v17 = *(v7 + 3);
    if (os_log_type_enabled(v16, v17))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v16, v17, "Ignoring call to _startMonitoringAgents: with missing client token", buf, 2u);
    }

    if (bOOLValue)
    {
      [(DADClient *)self exitBlockingCallAndSendReplyToRequest:agentsCopy withStatus:65];
      goto LABEL_12;
    }

LABEL_11:
    [(DADClient *)self noteBlockedClientCallChange:1];
    goto LABEL_12;
  }

  if (!bOOLValue)
  {
    -[DADClient _stopMonitoringAgentsWithClientToken:completion:](self, "_stopMonitoringAgentsWithClientToken:completion:", [v13 unsignedIntegerValue], 0);
    goto LABEL_11;
  }

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__DADClient__stopMonitoringAgents___block_invoke;
  v18[3] = &unk_278F1CFC0;
  objc_copyWeak(&v21, buf);
  v19 = agentsCopy;
  v20 = v5;
  v15 = MEMORY[0x24C1D1770](v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  -[DADClient _stopMonitoringAgentsWithClientToken:completion:](self, "_stopMonitoringAgentsWithClientToken:completion:", [v14 unsignedIntegerValue], v15);

LABEL_12:
}

void __35__DADClient__stopMonitoringAgents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained exitBlockingCallAndSendReplyToRequest:*(a1 + 32) withStatus:2];
}

- (void)_handleAccountChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v20 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = +[DADMain sharedMain];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__DADClient__handleAccountChange___block_invoke;
  v14[3] = &unk_278F1CFE8;
  v15 = v9;
  selfCopy = self;
  v17 = changeCopy;
  v18 = v5;
  v11 = v5;
  v12 = changeCopy;
  v13 = v9;
  [v10 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v14];
}

void __34__DADClient__handleAccountChange___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D03C28]];
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v4, v5, "Ignoring call to _handleAccountChange: with missing account change info data", buf, 2u);
    }

    v3 = 65;
  }

  v25 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v25];
  v7 = v25;
  if (v6)
  {
    if (v2)
    {
      if ([DADClient _shouldReloadAgentsForAccountChange:v6])
      {
        v8 = +[DADAgentManager sharedManager];
        v24 = [v8 disableMonitoringAgents];
      }

      else
      {
        v24 = 0;
      }

      v11 = objc_alloc_init(MEMORY[0x277CB8F48]);
      v12 = [objc_alloc(MEMORY[0x277D03730]) initWithAccountStore:v11];
      v13 = [v6 accountIdentifier];
      v14 = [v11 accountWithIdentifier:v13];

      if (v14)
      {
        [MEMORY[0x277D03728] handleAccountWillChange:v14 withChangeInfo:v6 store:v11 accountUpdater:v12];
        [MEMORY[0x277D03728] handleAccountDidChange:v14 withChangeInfo:v6 store:v11];
        v3 = 2;
      }

      else
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = [v6 accountIdentifier];
          *buf = 138543362;
          v29 = v17;
          _os_log_impl(&dword_248524000, v15, v16, "Cannot find account with identifier %{public}@", buf, 0xCu);
        }

        v3 = 65;
      }

      if (v24)
      {
        v18 = +[DADAgentManager sharedManager];
        [v18 enableMonitoringAgentsWithToken:v24];
      }
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_248524000, v9, v10, "_handleAccountChange: Failed to decode account change info: %@", buf, 0xCu);
    }

    v3 = 65;
  }

  v26 = *MEMORY[0x277D03E38];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{v3, v24}];
  v27 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v21 = [*(a1 + 40) _createReplyToRequest:*(a1 + 48) withProperties:v20];
  v22 = [*(a1 + 40) conn];

  if (v22)
  {
    v23 = [*(a1 + 40) conn];
    xpc_connection_send_message(v23, v21);
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];
}

+ (BOOL)_shouldReloadAgentsForAccountChange:(id)change
{
  changeCopy = change;
  clientName = [changeCopy clientName];
  v5 = [clientName isEqualToString:@"dataaccessd"];

  if (v5)
  {
    v6 = ([changeCopy changeType] & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_getCurrentPolicyKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v23 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__DADClient__getCurrentPolicyKey___block_invoke;
  v17[3] = &unk_278F1CFE8;
  v18 = v10;
  selfCopy = self;
  v20 = keyCopy;
  v21 = v5;
  v11 = v5;
  v12 = keyCopy;
  v13 = v10;
  v14 = MEMORY[0x24C1D1770](v17);
  v15 = +[DADMain sharedMain];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__DADClient__getCurrentPolicyKey___block_invoke_64;
  v16[3] = &unk_278F1D010;
  v16[4] = self;
  [v15 addToOperationsQueueDisabledCheckAndGoBlock:v16 wrappedBlock:v14];
}

void __34__DADClient__getCurrentPolicyKey___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 currentPolicyKeyForAccount:*(a1 + 32)];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"0";
  }

  v5 = *MEMORY[0x277D03D20];
  v10[0] = *MEMORY[0x277D03E38];
  v10[1] = v5;
  v11[0] = &unk_285AC6FE0;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [*(a1 + 40) _createReplyToRequest:*(a1 + 48) withProperties:v6];
  v8 = [*(a1 + 40) conn];

  if (v8)
  {
    v9 = [*(a1 + 40) conn];
    xpc_connection_send_message(v9, v7);
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];
}

- (void)_requestPolicyUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v20 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__DADClient__requestPolicyUpdate___block_invoke;
  v16[3] = &unk_278F1CD98;
  v17 = v10;
  v18 = v5;
  v11 = v5;
  v12 = v10;
  v13 = MEMORY[0x24C1D1770](v16);
  v14 = +[DADMain sharedMain];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__DADClient__requestPolicyUpdate___block_invoke_2;
  v15[3] = &unk_278F1D010;
  v15[4] = self;
  [v14 addToOperationsQueueDisabledCheckAndGoBlock:v15 wrappedBlock:v13];
}

void __34__DADClient__requestPolicyUpdate___block_invoke(uint64_t a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 requestPolicyUpdateForAccount:*(a1 + 32)];
}

- (id)timersForAccountWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->_accountTimersLock);
    accountTimers = [(DADClient *)self accountTimers];
    v6 = [accountTimers objectForKeyedSubscript:dCopy];

    if (!v6)
    {
      v6 = objc_opt_new();
      accountTimers2 = [(DADClient *)self accountTimers];
      [accountTimers2 setObject:v6 forKeyedSubscript:dCopy];
    }

    os_unfair_lock_unlock(&self->_accountTimersLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_requestFolderContentsUpdateForFolders:(id)folders accountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dataclassesCopy = dataclasses;
  v59 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  idCopy = id;
  v10 = objc_opt_new();
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    transactionId = [v10 transactionId];
    *buf = 138543362;
    v54 = transactionId;
    _os_log_impl(&dword_248524000, v11, v13, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v15 = DALoggingwithCategory();
  v16 = *(v12 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543874;
    v54 = idCopy;
    v55 = 2048;
    v56 = dataclassesCopy;
    v57 = 1024;
    v58 = requestedCopy;
    _os_log_impl(&dword_248524000, v15, v16, "_requestFolderContentsUpdateForFolders for account %{public}@, dataclass 0x%lx isUserRequested %d", buf, 0x1Cu);
  }

  v17 = [(DADClient *)self timersForAccountWithID:idCopy];
  v18 = [v17 clientBehaviorForFolderIds:foldersCopy];
  if (requestedCopy || (v19 = v18, (v18 & 1) != 0))
  {
    v20 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = foldersCopy;
    v23 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v49;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v49 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v17 setLastFolderContentRequestDate:v20 forFolderWithId:{*(*(&v48 + 1) + 8 * i), dataclassesCopy}];
        }

        v24 = [v22 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v24);
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __90__DADClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke;
    v42[3] = &unk_278F1D038;
    v43 = v22;
    v44 = idCopy;
    v46 = dataclassesCopy;
    v47 = requestedCopy;
    v45 = v10;
    v27 = MEMORY[0x24C1D1770](v42);
    v28 = +[DADMain sharedMain];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__DADClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_67;
    v41[3] = &unk_278F1D010;
    v41[4] = self;
    [v28 addToOperationsQueueDisabledCheckAndGoBlock:v41 wrappedBlock:v27];

    v29 = v43;
    goto LABEL_21;
  }

  v20 = DALoggingwithCategory();
  v21 = os_log_type_enabled(v20, v13);
  if ((v19 & 2) != 0)
  {
    if (v21)
    {
      *buf = 138412290;
      v54 = foldersCopy;
      _os_log_impl(&dword_248524000, v20, v13, "Deferring request to update folders %@", buf, 0xCu);
    }

    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
    [v17 deferredTimerInterval];
    v31 = v30 / 20.0;
    v32 = dispatch_time(0, (v30 * 1000000000.0));
    dispatch_source_set_timer(v20, v32, 0xFFFFFFFFFFFFFFFFLL, (v31 * 1000000000.0));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __90__DADClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_68;
    handler[3] = &unk_278F1D060;
    handler[4] = self;
    v36 = foldersCopy;
    v37 = idCopy;
    v39 = dataclassesCopy;
    v40 = requestedCopy;
    v38 = v10;
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(v20);
    [v17 setDeferredFolderContentsSource:v20];

    v29 = v36;
LABEL_21:

    goto LABEL_22;
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v20, v13, "Not forwarding request to update folders, as we already did that recently, and have a deferred request queued", buf, 2u);
  }

LABEL_22:
}

void __90__DADClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 updateContentsOfFolders:*(a1 + 32) forAccountID:*(a1 + 40) andDataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_248524000, v4, v5, "Block: request folder contents update (accounts %{public}@, folders %@): error updating folder contents", &v8, 0x16u);
    }
  }
}

void __90__DADClient__requestFolderContentsUpdateForFolders_accountId_dataclasses_isUserRequested___block_invoke_68(uint64_t a1)
{
  [*(a1 + 32) _requestFolderContentsUpdateForFolders:*(a1 + 40) accountId:*(a1 + 48) dataclasses:*(a1 + 64) isUserRequested:*(a1 + 72)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 48)];
  [v2 setDeferredFolderContentsSource:0];
}

- (void)_requestFolderContentsUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue = [v9 BOOLValue];

  if (!v8)
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      v18 = 136315394;
      v19 = "[DADClient _requestFolderContentsUpdate:]";
      v20 = 2112;
      v21 = v4;
      v13 = "Malformed request from client in %s: %@";
      v14 = v11;
      v15 = v12;
      v16 = 22;
LABEL_8:
      _os_log_impl(&dword_248524000, v14, v15, v13, &v18, v16);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
    v11 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v17))
    {
      v18 = 136315138;
      v19 = "[DADClient _requestFolderContentsUpdate:]";
      v13 = "Malformed request from client in %s: bad accountID";
      v14 = v11;
      v15 = v17;
      v16 = 12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(DADClient *)self _requestFolderContentsUpdateForFolders:v8 accountId:v5 dataclasses:intValue isUserRequested:bOOLValue];
LABEL_10:
}

- (void)_requestAllFolderContentsUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v45 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = objc_opt_new();
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v12))
  {
    transactionId = [v9 transactionId];
    *buf = 138543362;
    v40 = transactionId;
    _os_log_impl(&dword_248524000, v10, v12, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v14 = DALoggingwithCategory();
  v15 = *(v11 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138543874;
    v40 = idCopy;
    v41 = 2048;
    dataclassesCopy = dataclasses;
    v43 = 1024;
    v44 = requestedCopy;
    _os_log_impl(&dword_248524000, v14, v15, "_requestAllFolderContentsUpdateForAccountId %{public}@, dataclasses 0x%lx, isUserRequested: %d", buf, 0x1Cu);
  }

  v16 = [(DADClient *)self timersForAccountWithID:idCopy];
  clientBehaviorForFolderContents = [v16 clientBehaviorForFolderContents];
  if (requestedCopy || (v18 = clientBehaviorForFolderContents, (clientBehaviorForFolderContents & 1) != 0))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v16 setLastAllFolderContentsRequestDate:date];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __85__DADClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke;
    v33[3] = &unk_278F1D038;
    dataclassesCopy2 = dataclasses;
    v38 = requestedCopy;
    v34 = idCopy;
    selfCopy = self;
    v36 = v9;
    v22 = MEMORY[0x24C1D1770](v33);
    v23 = +[DADMain sharedMain];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__DADClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_69;
    v32[3] = &unk_278F1D010;
    v32[4] = self;
    [v23 addToOperationsQueueDisabledCheckAndGoBlock:v32 wrappedBlock:v22];

    v19 = v34;
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = os_log_type_enabled(v19, v12);
    if ((v18 & 2) != 0)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v19, v12, "Deferring request to update all folders", buf, 2u);
      }

      v19 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
      [v16 deferredTimerInterval];
      v25 = v24 / 20.0;
      v26 = dispatch_time(0, (v24 * 1000000000.0));
      dispatch_source_set_timer(v19, v26, 0xFFFFFFFFFFFFFFFFLL, (v25 * 1000000000.0));
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __85__DADClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_70;
      handler[3] = &unk_278F1D038;
      handler[4] = self;
      v28 = idCopy;
      dataclassesCopy3 = dataclasses;
      v31 = requestedCopy;
      v29 = v9;
      dispatch_source_set_event_handler(v19, handler);
      dispatch_resume(v19);
      [v16 setDeferredAllFolderContentsSource:v19];
    }

    else if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v19, v12, "Not forwarding request to update all folders, as we already did that recently, and have a deferred request queued", buf, 2u);
    }
  }
}

void __85__DADClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = +[DADAgentManager sharedManager];
    v7 = [v6 activeAgents];
    v8 = [v7 count];
    v9 = +[DADAgentManager sharedManager];
    v10 = [v9 activeAgents];
    v19 = 134218242;
    v20 = v8;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_248524000, v3, v5, "[DADAgentManager sharedManager] number of Current Agents %lu and they are %@", &v19, 0x16u);
  }

  v11 = +[DADAgentManager sharedManager];
  v12 = [v11 updateContentsOfAllFoldersForAccountID:*(a1 + 32) andDataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];

  if ((v12 & 1) == 0)
  {
    v13 = DALoggingwithCategory();
    v14 = *(v4 + 3);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(a1 + 32);
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_248524000, v13, v14, "Block: request all folder contents update (accounts %{public}@): error updating folder contents", &v19, 0xCu);
    }

    v16 = DALoggingwithCategory();
    if (os_log_type_enabled(v16, v14))
    {
      v17 = *(a1 + 40);
      v18 = [v17 conn];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_248524000, v16, v14, "Block: DADClient %@ with XPC Connection %@ is In Bad State", &v19, 0x16u);
    }
  }
}

void __85__DADClient__requestAllFolderContentsUpdateForAccountId_dataclasses_isUserRequested___block_invoke_70(uint64_t a1)
{
  [*(a1 + 32) _requestAllFolderContentsUpdateForAccountId:*(a1 + 40) dataclasses:*(a1 + 56) isUserRequested:*(a1 + 64)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 40)];
  [v2 setDeferredAllFolderContentsSource:0];
}

- (void)_requestAllFolderContentsUpdate:(id)update
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue = [v8 BOOLValue];

  if (v5)
  {
    [(DADClient *)self _requestAllFolderContentsUpdateForAccountId:v5 dataclasses:intValue isUserRequested:bOOLValue];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = 136315138;
      v13 = "[DADClient _requestAllFolderContentsUpdate:]";
      _os_log_impl(&dword_248524000, v10, v11, "Malformed request from client in %s: bad accountID", &v12, 0xCu);
    }
  }
}

- (void)_requestFolderListUpdateForAccountId:(id)id dataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v51 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = objc_opt_new();
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    transactionId = [v10 transactionId];
    *buf = 138543362;
    v46 = transactionId;
    _os_log_impl(&dword_248524000, v11, v13, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v15 = DALoggingwithCategory();
  v16 = *(v12 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543874;
    v46 = idCopy;
    v47 = 2048;
    dataclassesCopy = dataclasses;
    v49 = 1024;
    v50 = requestedCopy;
    _os_log_impl(&dword_248524000, v15, v16, "_requestFolderListUpdateForAccountId %{public}@, dataclass 0x%lx, isUserRequested %d", buf, 0x1Cu);
  }

  v17 = [(DADClient *)self timersForAccountWithID:idCopy];
  clientBehaviorForFolderList = [v17 clientBehaviorForFolderList];
  if (requestedCopy || (v19 = clientBehaviorForFolderList, (clientBehaviorForFolderList & 1) != 0))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v17 setLastFolderListRequestDate:date];

    if (foldersCopy && [v17 allowFolderWipe])
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [v17 setLastFolderWipeRequestDate:date2];

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __100__DADClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke;
    v38[3] = &unk_278F1D088;
    dataclassesCopy2 = dataclasses;
    v43 = v24;
    v44 = requestedCopy;
    v39 = idCopy;
    selfCopy = self;
    v41 = v10;
    v25 = MEMORY[0x24C1D1770](v38);
    v26 = +[DADMain sharedMain];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __100__DADClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_71;
    v37[3] = &unk_278F1D010;
    v37[4] = self;
    [v26 addToOperationsQueueDisabledCheckAndGoBlock:v37 wrappedBlock:v25];

    v20 = v39;
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = os_log_type_enabled(v20, v13);
    if ((v19 & 2) != 0)
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v20, v13, "Deferring request to update folder list", buf, 2u);
      }

      v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, gDADHighAvailabilityQueue);
      [v17 deferredTimerInterval];
      v28 = v27 / 20.0;
      v29 = dispatch_time(0, (v27 * 1000000000.0));
      dispatch_source_set_timer(v20, v29, 0xFFFFFFFFFFFFFFFFLL, (v28 * 1000000000.0));
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __100__DADClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_72;
      handler[3] = &unk_278F1D088;
      handler[4] = self;
      v32 = idCopy;
      dataclassesCopy3 = dataclasses;
      v35 = foldersCopy;
      v36 = requestedCopy;
      v33 = v10;
      dispatch_source_set_event_handler(v20, handler);
      dispatch_resume(v20);
      [v17 setDeferredFolderListSource:v20];
    }

    else if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v20, v13, "Not forwarding request to update folder list, as we already did that recently, and have a deferred request queued", buf, 2u);
    }
  }
}

void __100__DADClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 updateFolderListForAccountID:*(a1 + 32) andDataclasses:*(a1 + 56) requireChangedFolders:*(a1 + 64) isUserRequested:*(a1 + 65)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_248524000, v4, v5, "Block: request folder list update (accounts %{public}@): error updating folder contents", &v10, 0xCu);
    }

    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v5))
    {
      v8 = *(a1 + 40);
      v9 = [v8 conn];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_248524000, v7, v5, "Block: DADClient %@ with XPC Connection %@ is In Bad State", &v10, 0x16u);
    }
  }
}

void __100__DADClient__requestFolderListUpdateForAccountId_dataclasses_requireChangedFolders_isUserRequested___block_invoke_72(uint64_t a1)
{
  [*(a1 + 32) _requestFolderListUpdateForAccountId:*(a1 + 40) dataclasses:*(a1 + 56) requireChangedFolders:*(a1 + 64) isUserRequested:*(a1 + 65)];
  v2 = [*(a1 + 32) timersForAccountWithID:*(a1 + 40)];
  [v2 setDeferredFolderListSource:0];
}

- (void)_requestFolderListUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v6 intValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D90]];
  bOOLValue = [v8 BOOLValue];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C58]];
  bOOLValue2 = [v10 BOOLValue];

  if (v5)
  {
    [(DADClient *)self _requestFolderListUpdateForAccountId:v5 dataclasses:intValue requireChangedFolders:bOOLValue isUserRequested:bOOLValue2];
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = 136315138;
      v15 = "[DADClient _requestFolderListUpdate:]";
      _os_log_impl(&dword_248524000, v12, v13, "Malformed request from client in %s: bad accountID", &v14, 0xCu);
    }
  }
}

- (void)delegateWithIDIsGoingAway:(id)away
{
  awayCopy = away;
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById removeObjectForKey:awayCopy];
}

- (void)_openServerContactsSearch:(id)search
{
  v33 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v32 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03DC0]];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [DADClient _openServerContactsSearch:];
    if (v12)
    {
      goto LABEL_5;
    }
  }

  [DADClient _openServerContactsSearch:];
LABEL_5:
  v13 = [[DADClientContactsSearchDelegate alloc] initWithAccountID:v10 queryDictionary:v12 client:self];
  delegateID = [(DADClientDelegate *)v13 delegateID];
  if (delegateID)
  {
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    [actionDelegatesById setObject:v13 forKeyedSubscript:delegateID];

    v29 = *MEMORY[0x277D03DB8];
    v30 = delegateID;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  }

  else
  {
    v16 = MEMORY[0x277CBEC10];
  }

  searchCopy = [(DADClient *)self _createReplyToRequest:searchCopy withProperties:v16, searchCopy];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    conn2 = [(DADClient *)self conn];
    xpc_connection_send_message(conn2, searchCopy);
  }

  v20 = +[DADMain sharedMain];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __39__DADClient__openServerContactsSearch___block_invoke;
  v27[3] = &unk_278F1D010;
  v28 = v13;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __39__DADClient__openServerContactsSearch___block_invoke_2;
  v24[3] = &unk_278F1CD98;
  v25 = v28;
  v26 = v5;
  v21 = v5;
  v22 = v28;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v27 wrappedBlock:v24];
}

- (void)_cancelServerContactsSearch:(id)search
{
  v24 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v23 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[DADMain sharedMain];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__DADClient__cancelServerContactsSearch___block_invoke;
  v20[3] = &unk_278F1D010;
  v21 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__DADClient__cancelServerContactsSearch___block_invoke_2;
  v16[3] = &unk_278F1D0B0;
  v17 = v21;
  selfCopy = self;
  v19 = v5;
  v14 = v5;
  v15 = v21;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v20 wrappedBlock:v16];
}

uint64_t __41__DADClient__cancelServerContactsSearch___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) userRequestsCancel];
  v2 = *(a1 + 40);

  return [v2 noteBlockedClientCallChange:1];
}

- (void)_processMeetingRequests:(id)requests
{
  v51 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    [v5 transactionId];
    v10 = v9 = v5;
    *buf = 138543362;
    v48 = v10;
    _os_log_impl(&dword_248524000, v6, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);

    v5 = v9;
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D03C70]];
  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277D03C78]];
  v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D03C80]];
  v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v17 = v16;
  if (v12)
  {
    v18 = (v13 | v14 | v15) == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v16 == 0)
  {
    v33 = v12;
    v34 = v5;
    v31 = requestsCopy;
    v20 = DALoggingwithCategory();
    v21 = *(v7 + 3);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 136315394;
      v48 = "[DADClient _processMeetingRequests:]";
      v49 = 2112;
      v50 = v11;
      _os_log_impl(&dword_248524000, v20, v21, "Malformed request from client in %s: %@", buf, 0x16u);
    }

    v45 = *MEMORY[0x277D03E38];
    v46 = &unk_285AC6FF8;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v22 = [(DADClient *)self _createReplyToRequest:v31 withProperties:v32];
    conn = [(DADClient *)self conn];

    if (conn)
    {
      conn2 = [(DADClient *)self conn];
      xpc_connection_send_message(conn2, v22);
    }

    [(DADClient *)self noteBlockedClientCallChange:1];

    v28 = v33;
    v30 = v34;
  }

  else
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __37__DADClient__processMeetingRequests___block_invoke;
    v36[3] = &unk_278F1D100;
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v40 = v17;
    v41 = v12;
    selfCopy = self;
    v43 = requestsCopy;
    v44 = v5;
    v25 = MEMORY[0x24C1D1770](v36);
    v26 = +[DADMain sharedMain];
    selfCopy2 = self;
    v28 = v12;
    v29 = v26;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __37__DADClient__processMeetingRequests___block_invoke_82;
    v35[3] = &unk_278F1D010;
    v35[4] = selfCopy2;
    [v26 addToOperationsQueueDisabledCheckAndGoBlock:v35 wrappedBlock:v25];

    v30 = v5;
    v31 = requestsCopy;
    v32 = v37;
  }
}

void __37__DADClient__processMeetingRequests___block_invoke(uint64_t a1)
{
  v2 = +[DADAgentManager sharedManager];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__DADClient__processMeetingRequests___block_invoke_2;
  v9[3] = &unk_278F1D0D8;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v9[4] = *(a1 + 72);
  v10 = v8;
  v11 = *(a1 + 88);
  [v2 processMeetingRequestDatas:v3 deliveryIdsToClear:v4 deliveryIdsToSoftClear:v5 inFolderWithId:v6 forAccountWithId:v7 callback:v9];
}

void __37__DADClient__processMeetingRequests___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_248524000, v4, v5, "%@: error processing meeting ", buf, 0xCu);
    }

    v3 = 10;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{v3, *MEMORY[0x277D03E38]}];
  v16 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v9 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v8];
  v10 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v11 = [*(a1 + 32) conn];

  if (v11)
  {
    v12 = [*(a1 + 32) conn];

    if (v12 == v10)
    {
      v13 = [*(a1 + 32) conn];
      xpc_connection_send_message(v13, v9);
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v13, v14, "Remote client disconnected and reconnected while processing meeting request.", buf, 2u);
      }
    }
  }

  [*(a1 + 32) noteBlockedClientCallChange:1];
}

- (void)_asyncProcessMeetingRequests:(id)requests
{
  v36 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v6, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C70]];
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C78]];
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03C80]];
  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v16 = v15;
  if (v11)
  {
    v17 = (v12 | v13 | v14) == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 == 0)
  {
    v19 = DALoggingwithCategory();
    v20 = *(v7 + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 136315394;
      v33 = "[DADClient _asyncProcessMeetingRequests:]";
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_248524000, v19, v20, "Malformed request from client in %s: %@", buf, 0x16u);
    }

    [(DADClient *)self noteBlockedClientCallChange:1];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__DADClient__asyncProcessMeetingRequests___block_invoke;
    v24[3] = &unk_278F1D150;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v16;
    v29 = v11;
    selfCopy = self;
    v31 = v5;
    v21 = MEMORY[0x24C1D1770](v24);
    v22 = +[DADMain sharedMain];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__DADClient__asyncProcessMeetingRequests___block_invoke_3;
    v23[3] = &unk_278F1D010;
    v23[4] = self;
    [v22 addToOperationsQueueDisabledCheckAndGoBlock:v23 wrappedBlock:v21];
  }
}

void __42__DADClient__asyncProcessMeetingRequests___block_invoke(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__DADClient__asyncProcessMeetingRequests___block_invoke_2;
  v9[3] = &unk_278F1D128;
  v7 = a1[8];
  v8 = a1[10];
  v9[4] = a1[9];
  v10 = v8;
  [v2 processMeetingRequestDatas:v3 deliveryIdsToClear:v4 deliveryIdsToSoftClear:v5 inFolderWithId:v6 forAccountWithId:v7 callback:v9];
}

- (void)_resetCertWarnings:(id)warnings
{
  v29 = *MEMORY[0x277D85DE8];
  warningsCopy = warnings;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v26 = transactionId;
    _os_log_impl(&dword_248524000, v6, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = _CFXPCCreateCFObjectFromXPCObject();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D03B08]];
  intValue = [v12 intValue];

  v14 = DALoggingwithCategory();
  v15 = *(v7 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138543618;
    v26 = v11;
    v27 = 2048;
    v28 = intValue;
    _os_log_impl(&dword_248524000, v14, v15, "_resetCertWarningsForAccountWithId %{public}@ dataclasses %lx", buf, 0x16u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __32__DADClient__resetCertWarnings___block_invoke;
  v21[3] = &unk_278F1D178;
  v23 = v5;
  v24 = intValue;
  v22 = v11;
  v16 = v5;
  v17 = v11;
  v18 = MEMORY[0x24C1D1770](v21);
  v19 = +[DADMain sharedMain];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __32__DADClient__resetCertWarnings___block_invoke_83;
  v20[3] = &unk_278F1D010;
  v20[4] = self;
  [v19 addToOperationsQueueDisabledCheckAndGoBlock:v20 wrappedBlock:v18];
}

void __32__DADClient__resetCertWarnings___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 resetCertWarningsForAccountWithId:*(a1 + 32) andDataclasses:*(a1 + 48)];

  if ((v3 & 1) == 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_248524000, v4, v5, "error resetting cert warnings account ID %{public}@ dataclasses 0x%lx", &v8, 0x16u);
    }
  }
}

- (void)_setFolderIdsThatExternalClientsCareAbout:(id)about
{
  v33 = *MEMORY[0x277D85DE8];
  aboutCopy = about;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v32 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03C90]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03C98]];
  v13 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CA0]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__DADClient__setFolderIdsThatExternalClientsCareAbout___block_invoke;
  v23[3] = &unk_278F1D150;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v10;
  selfCopy = self;
  v29 = aboutCopy;
  v30 = v5;
  v14 = v5;
  v15 = aboutCopy;
  v16 = v10;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = MEMORY[0x24C1D1770](v23);
  v21 = +[DADMain sharedMain];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__DADClient__setFolderIdsThatExternalClientsCareAbout___block_invoke_2;
  v22[3] = &unk_278F1D010;
  v22[4] = self;
  [v21 addToOperationsQueueDisabledCheckAndGoBlock:v22 wrappedBlock:v20];
}

void __55__DADClient__setFolderIdsThatExternalClientsCareAbout___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[DADAgentManager sharedManager];
  [v2 setFolderIdsThatExternalClientsCareAboutAdded:*(a1 + 32) deleted:*(a1 + 40) foldersTag:*(a1 + 48) forAccountID:*(a1 + 56)];

  v7 = *MEMORY[0x277D03E38];
  v8[0] = &unk_285AC6FE0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [*(a1 + 64) _createReplyToRequest:*(a1 + 72) withProperties:v3];
  v5 = [*(a1 + 64) conn];

  if (v5)
  {
    v6 = [*(a1 + 64) conn];
    xpc_connection_send_message(v6, v4);
  }

  [*(a1 + 64) noteBlockedClientCallChange:1];
}

- (void)_reportFolderItemsSyncResult:(id)result
{
  v30 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v29 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03BB8]];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  intValue = [v14 intValue];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__DADClient__reportFolderItemsSyncResult___block_invoke;
  v22[3] = &unk_278F1D1A0;
  v26 = intValue;
  v27 = unsignedIntegerValue;
  v23 = v11;
  v24 = v10;
  v25 = v5;
  v16 = v5;
  v17 = v10;
  v18 = v11;
  v19 = MEMORY[0x24C1D1770](v22);
  v20 = +[DADMain sharedMain];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__DADClient__reportFolderItemsSyncResult___block_invoke_2;
  v21[3] = &unk_278F1D010;
  v21[4] = self;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v21 wrappedBlock:v19];
}

void __42__DADClient__reportFolderItemsSyncResult___block_invoke(void *a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 reportFolderItemsSyncSuccess:a1[7] == 2 forFolderWithID:a1[4] withItemsCount:a1[8] andAccountWithID:a1[5]];
}

- (void)_handleURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v20 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03E98]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __24__DADClient__handleURL___block_invoke;
  v16[3] = &unk_278F1CD98;
  v17 = v10;
  v18 = v5;
  v11 = v5;
  v12 = v10;
  v13 = MEMORY[0x24C1D1770](v16);
  v14 = +[DADMain sharedMain];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __24__DADClient__handleURL___block_invoke_2;
  v15[3] = &unk_278F1D010;
  v15[4] = self;
  [v14 addToOperationsQueueDisabledCheckAndGoBlock:v15 wrappedBlock:v13];
}

void __24__DADClient__handleURL___block_invoke(uint64_t a1)
{
  v2 = +[DADAgentManager sharedManager];
  [v2 handleURLString:*(a1 + 32)];
}

- (void)_processFolderChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _processFolderChange__taskId++;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138543362;
    v26 = transactionId;
    _os_log_impl(&dword_248524000, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __34__DADClient__processFolderChange___block_invoke;
  v23[3] = &unk_278F1D1C8;
  v24 = v5;
  v23[4] = self;
  v10 = MEMORY[0x24C1D1770](v23);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__DADClient__processFolderChange___block_invoke_2;
  v17[3] = &unk_278F1D1F0;
  v22 = v5;
  v18 = changeCopy;
  selfCopy = self;
  v20 = v6;
  v21 = v10;
  v11 = v6;
  v12 = v10;
  v13 = changeCopy;
  v14 = MEMORY[0x24C1D1770](v17);
  v15 = +[DADMain sharedMain];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__DADClient__processFolderChange___block_invoke_91;
  v16[3] = &unk_278F1D010;
  v16[4] = self;
  [v15 addToOperationsQueueDisabledCheckAndGoBlock:v16 wrappedBlock:v14];
}

void __34__DADClient__processFolderChange___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x277CBEB38]);
  v12 = *MEMORY[0x277D03B98];
  v13 = *MEMORY[0x277D03C88];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v15 = *MEMORY[0x277D03E38];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v17 = [v11 initWithObjectsAndKeys:{v12, v13, v14, v15, v16, *MEMORY[0x277D03E88], 0}];

  if (v10)
  {
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277D03B40]];
  }

  if (v21)
  {
    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277D03BA0]];
  }

  if (v9)
  {
    [v17 setObject:v9 forKeyedSubscript:*MEMORY[0x277D03BB0]];
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  v20 = [*(a1 + 32) conn];
  xpc_connection_send_message(v20, v19);
}

void __34__DADClient__processFolderChange___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03B90]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (v3)
  {
    v19 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v19];
    v6 = v19;
    if (!v5)
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_248524000, v7, v8, "Unable to read data to decode folder change: %@", buf, 0xCu);
      }
    }

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"root"];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[DADAgentManager sharedManager];
  v11 = [v10 processFolderChange:v9 forAccountWithID:v4 completionBlock:*(a1 + 56)];

  v20 = *MEMORY[0x277D03E88];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 64)];
  v21 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v14 = [*(a1 + 40) _createReplyToRequest:*(a1 + 32) withProperties:v13];
  v15 = [*(a1 + 40) conn];

  if (v15)
  {
    v16 = [*(a1 + 40) conn];
    xpc_connection_send_message(v16, v14);
  }

  if ((v11 & 1) == 0)
  {
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
    (*(v17 + 16))(v17, 0, 0, 10, v18);
  }

  [*(a1 + 40) noteBlockedClientCallChange:1];
}

- (void)_getStatusReports:(id)reports
{
  v19 = *MEMORY[0x277D85DE8];
  reportsCopy = reports;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v18 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__DADClient__getStatusReports___block_invoke;
  v14[3] = &unk_278F1D0B0;
  v14[4] = self;
  v15 = reportsCopy;
  v16 = v5;
  v9 = v5;
  v10 = reportsCopy;
  v11 = MEMORY[0x24C1D1770](v14);
  v12 = +[DADMain sharedMain];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__DADClient__getStatusReports___block_invoke_93;
  v13[3] = &unk_278F1D010;
  v13[4] = self;
  [v12 addToOperationsQueueDisabledCheckAndGoBlock:v13 wrappedBlock:v11];
}

void __31__DADClient__getStatusReports___block_invoke(uint64_t a1)
{
  v2 = +[DADAgentManager sharedManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__DADClient__getStatusReports___block_invoke_2;
  v4[3] = &unk_278F1D218;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 getStatusReportDictsWithCompletionBlock:v4];
}

void __31__DADClient__getStatusReports___block_invoke_2(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      *v11 = 0;
      _os_log_impl(&dword_248524000, v4, v5, "No status reports available", v11, 2u);
    }

    v3 = MEMORY[0x277CBEBF8];
  }

  v6 = *MEMORY[0x277D03E40];
  v12[0] = *MEMORY[0x277D03E38];
  v12[1] = v6;
  v13[0] = &unk_285AC6FE0;
  v13[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v7];
  v9 = [*(a1 + 32) conn];

  if (v9)
  {
    v10 = [*(a1 + 32) conn];
    xpc_connection_send_message(v10, v8);
  }

  [*(a1 + 32) noteRefreshClientCallChange:1];
}

- (void)_resetThrottleTimers:(id)timers
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_248524000, v6, v7, "_resetThrottleTimersForAccountWithId %{public}@", &v11, 0xCu);
  }

  os_unfair_lock_lock(&self->_accountTimersLock);
  if (v5)
  {
    accountTimers = [(DADClient *)self accountTimers];
    v9 = [accountTimers objectForKeyedSubscript:v5];

    if (v9)
    {
      [v9 killAllTimers];
      accountTimers2 = [(DADClient *)self accountTimers];
      [accountTimers2 removeObjectForKey:v5];
    }
  }

  os_unfair_lock_unlock(&self->_accountTimersLock);
}

- (void)_beginDownloadingAttachmentEvent:(id)event eventDict:(id)dict
{
  v38 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v35 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A38]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];

  if (v14)
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [DADClient _beginDownloadingAttachmentEvent:eventDict:];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  [DADClient _beginDownloadingAttachmentEvent:eventDict:];
LABEL_5:
  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543618;
    v35 = v13;
    v36 = 2114;
    v37 = v14;
    _os_log_impl(&dword_248524000, v15, v16, "_beginDownloadingAttachment UUID: %{public}@, accountID: %{public}@", buf, 0x16u);
  }

  v17 = [[DADClientAttachmentDownloadDelegate alloc] initWithAccountID:v14 attachmentUUID:v13 client:self];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  delegateID = [(DADClientDelegate *)v17 delegateID];
  [actionDelegatesById setObject:v17 forKeyedSubscript:delegateID];

  v20 = +[DADMain sharedMain];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__DADClient__beginDownloadingAttachmentEvent_eventDict___block_invoke;
  v30[3] = &unk_278F1D010;
  v31 = v17;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__DADClient__beginDownloadingAttachmentEvent_eventDict___block_invoke_2;
  v27[3] = &unk_278F1CD98;
  v28 = v31;
  v29 = v8;
  v21 = v8;
  v22 = v31;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v27];

  v32 = *MEMORY[0x277D03A20];
  delegateID2 = [(DADClientDelegate *)v22 delegateID];
  v33 = delegateID2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v25 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_cancelDownloadingAttachmentEvent:(id)event eventDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D03A20];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A20]];

  if (!v14)
  {
    [DADClient _cancelDownloadingAttachmentEvent:eventDict:];
  }

  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&dword_248524000, v15, v16, "_cancelDownloadingAttachmentEvent downloadID: %@", buf, 0xCu);
  }

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v18 = [actionDelegatesById objectForKeyedSubscript:v14];

  if (v18)
  {
    v19 = +[DADMain sharedMain];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__DADClient__cancelDownloadingAttachmentEvent_eventDict___block_invoke;
    v30[3] = &unk_278F1D010;
    v31 = v18;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__DADClient__cancelDownloadingAttachmentEvent_eventDict___block_invoke_2;
    v27[3] = &unk_278F1CD98;
    v28 = v31;
    v29 = v8;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v27];

    v20 = v31;
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(v10 + 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_248524000, v20, v21, "Received a cancel for download %@, but that download doesn't exist any more", buf, 0xCu);
    }
  }

  delegateID = [v18 delegateID];
  v23 = objc_opt_new();
  v24 = v23;
  if (delegateID)
  {
    [v23 setObject:delegateID forKey:v13];
  }

  v25 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_respondToSharedCalendarEvent:(id)event eventDict:(id)dict
{
  v46 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v41 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E20]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E18]];

  intValue = [v15 intValue];
  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_10:
    [DADClient _respondToSharedCalendarEvent:eventDict:];
    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [DADClient _respondToSharedCalendarEvent:eventDict:];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_11:
  [DADClient _respondToSharedCalendarEvent:eventDict:];
LABEL_6:
  v17 = intValue;
  v18 = DALoggingwithCategory();
  v19 = *(v10 + 7);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138412802;
    v41 = v14;
    v42 = 2048;
    v43 = v17;
    v44 = 2114;
    v45 = v13;
    _os_log_impl(&dword_248524000, v18, v19, "_respondToSharedCalendar UUID: %@, response: %ld, accountID: %{public}@", buf, 0x20u);
  }

  v20 = [[DADClientShareResponseDelegate alloc] initWithAccountID:v13 client:self calendarID:v14];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  delegateID = [(DADClientDelegate *)v20 delegateID];
  [actionDelegatesById setObject:v20 forKeyedSubscript:delegateID];

  v23 = +[DADMain sharedMain];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __53__DADClient__respondToSharedCalendarEvent_eventDict___block_invoke;
  v37[3] = &unk_278F1D010;
  v37[4] = self;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __53__DADClient__respondToSharedCalendarEvent_eventDict___block_invoke_2;
  v33 = &unk_278F1D178;
  v35 = v8;
  v36 = v17;
  v34 = v20;
  v24 = v8;
  v25 = v20;
  [v23 addToOperationsQueueDisabledCheckAndGoBlock:v37 wrappedBlock:&v30];

  v38 = *MEMORY[0x277D03E10];
  v26 = [(DADClientDelegate *)v25 delegateID:v30];
  v39 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];

  v28 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v27];
  v29 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v29, v28);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_reportSharedCalendarAsJunkEvent:(id)event eventDict:(id)dict
{
  v37 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v34 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E20]];

  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [DADClient _reportSharedCalendarAsJunkEvent:eventDict:];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  [DADClient _reportSharedCalendarAsJunkEvent:eventDict:];
LABEL_5:
  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412546;
    v34 = v14;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&dword_248524000, v15, v16, "_reportSharedCalendarAsJunk UUID: %@, accountID: %{public}@", buf, 0x16u);
  }

  v17 = [[DADClientShareResponseDelegate alloc] initWithAccountID:v13 client:self calendarID:v14];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  delegateID = [(DADClientDelegate *)v17 delegateID];
  [actionDelegatesById setObject:v17 forKeyedSubscript:delegateID];

  v20 = +[DADMain sharedMain];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__DADClient__reportSharedCalendarAsJunkEvent_eventDict___block_invoke;
  v30[3] = &unk_278F1D010;
  v30[4] = self;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__DADClient__reportSharedCalendarAsJunkEvent_eventDict___block_invoke_2;
  v27[3] = &unk_278F1CD98;
  v28 = v17;
  v29 = v8;
  v21 = v8;
  v22 = v17;
  [v20 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v27];

  v31 = *MEMORY[0x277D03E10];
  delegateID2 = [(DADClientDelegate *)v22 delegateID];
  v32 = delegateID2;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];

  v25 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_fetchOfficeHoursEvent:(id)event eventDict:(id)dict
{
  v35 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v34 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];

  v14 = DALoggingwithCategory();
  v15 = *(v10 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&dword_248524000, v14, v15, "_fetchOfficeHours accountID: %{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v16 = [(DADClientDelegate *)[DADClientOfficeHoursRequestDelegate alloc] initWithAccountID:v13 client:self];
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    delegateID = [(DADClientDelegate *)v16 delegateID];
    [actionDelegatesById setObject:v16 forKeyedSubscript:delegateID];

    v19 = +[DADMain sharedMain];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __46__DADClient__fetchOfficeHoursEvent_eventDict___block_invoke;
    v28[3] = &unk_278F1D010;
    v28[4] = self;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46__DADClient__fetchOfficeHoursEvent_eventDict___block_invoke_2;
    v25[3] = &unk_278F1CD98;
    v26 = v16;
    v27 = v8;
    v20 = v16;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v28 wrappedBlock:v25];

    v29[0] = *MEMORY[0x277D03CB8];
    delegateID2 = [(DADClientDelegate *)v20 delegateID];
    v29[1] = *MEMORY[0x277D03E38];
    v30[0] = delegateID2;
    v30[1] = &unk_285AC6FE0;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v31 = *MEMORY[0x277D03E38];
    v32 = &unk_285AC7010;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  }

  v23 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v22];
  v24 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v24, v23);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_setOfficeHoursEvent:(id)event eventDict:(id)dict
{
  v41 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  eventCopy = event;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v40 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03CA8]];

  if (v14)
  {
    v15 = [MEMORY[0x277D03900] officeHoursFromData:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = DALoggingwithCategory();
  v17 = *(v10 + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 138543362;
    v40 = v13;
    _os_log_impl(&dword_248524000, v16, v17, "_setOfficeHours accountID: %{public}@", buf, 0xCu);
  }

  if (v13 && v15)
  {
    v18 = [(DADClientDelegate *)[DADClientOfficeHoursRequestDelegate alloc] initWithAccountID:v13 client:self];
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    delegateID = [(DADClientDelegate *)v18 delegateID];
    [actionDelegatesById setObject:v18 forKeyedSubscript:delegateID];

    v21 = +[DADMain sharedMain];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __44__DADClient__setOfficeHoursEvent_eventDict___block_invoke;
    v34[3] = &unk_278F1D010;
    v34[4] = self;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __44__DADClient__setOfficeHoursEvent_eventDict___block_invoke_2;
    v30 = &unk_278F1D0B0;
    v31 = v18;
    v32 = v15;
    v33 = v8;
    v22 = v18;
    [v21 addToOperationsQueueDisabledCheckAndGoBlock:v34 wrappedBlock:&v27];

    v35[0] = *MEMORY[0x277D03CB8];
    v23 = [(DADClientDelegate *)v22 delegateID:v27];
    v35[1] = *MEMORY[0x277D03E38];
    v36[0] = v23;
    v36[1] = &unk_285AC6FE0;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v37 = *MEMORY[0x277D03E38];
    v38 = &unk_285AC7010;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  }

  v25 = [(DADClient *)self _createReplyToRequest:eventCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(eventCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_reportSubscribedCalendarAsJunk:(id)junk eventDict:(id)dict
{
  v38 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  junkCopy = junk;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v37 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E98]];

  v14 = DALoggingwithCategory();
  v15 = *(v10 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v14, v15, "_markSubscribedCalendarAsJunk", buf, 2u);
  }

  if (v13)
  {
    v16 = [(DADClientDelegate *)[DADClientSubscribedCalendarJunkReportDelegate alloc] initWithAccountID:0 client:self];
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    delegateID = [(DADClientDelegate *)v16 delegateID];
    [actionDelegatesById setObject:v16 forKeyedSubscript:delegateID];

    v19 = +[DADMain sharedMain];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __55__DADClient__reportSubscribedCalendarAsJunk_eventDict___block_invoke;
    v31[3] = &unk_278F1D010;
    v31[4] = self;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __55__DADClient__reportSubscribedCalendarAsJunk_eventDict___block_invoke_2;
    v27 = &unk_278F1D0B0;
    v28 = v13;
    v29 = v16;
    v30 = v8;
    v20 = v16;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v31 wrappedBlock:&v24];

    v32 = *MEMORY[0x277D03E38];
    v33 = &unk_285AC6FE0;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:{1, v24, v25, v26, v27}];
  }

  else
  {
    v34 = *MEMORY[0x277D03E38];
    v35 = &unk_285AC7010;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  }

  v22 = [(DADClient *)self _createReplyToRequest:junkCopy withProperties:v21];
  v23 = xpc_dictionary_get_remote_connection(junkCopy);

  xpc_connection_send_message(v23, v22);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

void __55__DADClient__reportSubscribedCalendarAsJunk_eventDict___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [*(a1 + 40) reportSubscribedCalendarAsJunk:v2];
}

- (void)_checkSubscribedCalendarIsJunk:(id)junk eventDict:(id)dict
{
  v41 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  junkCopy = junk;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v40 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E98]];

  v14 = DALoggingwithCategory();
  v15 = *(v10 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v14, v15, "_checkSubscribedCalendarIsJunk", buf, 2u);
  }

  if (v13)
  {
    v16 = [(DADClientDelegate *)[DADClientSubscribedCalendarJunkCheckDelegate alloc] initWithAccountID:0 client:self];
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    delegateID = [(DADClientDelegate *)v16 delegateID];
    [actionDelegatesById setObject:v16 forKeyedSubscript:delegateID];

    v19 = +[DADMain sharedMain];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__DADClient__checkSubscribedCalendarIsJunk_eventDict___block_invoke;
    v34[3] = &unk_278F1D010;
    v34[4] = self;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __54__DADClient__checkSubscribedCalendarIsJunk_eventDict___block_invoke_2;
    v30 = &unk_278F1D0B0;
    v31 = v13;
    v32 = v16;
    v33 = v8;
    v20 = v16;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v34 wrappedBlock:&v27];

    v21 = *MEMORY[0x277D03E38];
    v36[0] = &unk_285AC6FE0;
    v22 = *MEMORY[0x277D03AF8];
    v35[0] = v21;
    v35[1] = v22;
    v23 = [(DADClientDelegate *)v20 delegateID:v27];
    v36[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  }

  else
  {
    v37 = *MEMORY[0x277D03E38];
    v38 = &unk_285AC7010;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  }

  v25 = [(DADClient *)self _createReplyToRequest:junkCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(junkCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

void __54__DADClient__checkSubscribedCalendarIsJunk_eventDict___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [*(a1 + 40) checkSubscribedCalendarJunkStatus:v2];
}

- (void)_fetchHolidayCalendars:(id)calendars eventDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    transactionId = [v6 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v7, v9, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v11 = DALoggingwithCategory();
  v12 = *(v8 + 7);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v11, v12, "_fetchHolidayCalendars", buf, 2u);
  }

  v13 = [(DADClientDelegate *)[DADClientHolidayCalendarFetchDelegate alloc] initWithAccountID:0 client:self];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  delegateID = [(DADClientDelegate *)v13 delegateID];
  [actionDelegatesById setObject:v13 forKeyedSubscript:delegateID];

  v16 = +[DADMain sharedMain];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__DADClient__fetchHolidayCalendars_eventDict___block_invoke;
  v29[3] = &unk_278F1D010;
  v29[4] = self;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __46__DADClient__fetchHolidayCalendars_eventDict___block_invoke_2;
  v27 = &unk_278F1CDC0;
  v28 = v13;
  v17 = v13;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v29 wrappedBlock:&v24];

  v18 = *MEMORY[0x277D03E38];
  v31[0] = &unk_285AC6FE0;
  v19 = *MEMORY[0x277D03B58];
  v30[0] = v18;
  v30[1] = v19;
  v20 = [(DADClientDelegate *)v17 delegateID:v24];
  v31[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v22 = [(DADClient *)self _createReplyToRequest:calendarsCopy withProperties:v21];
  v23 = xpc_dictionary_get_remote_connection(calendarsCopy);

  xpc_connection_send_message(v23, v22);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_openServerOofSettingsRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v35 = transactionId;
    _os_log_impl(&dword_248524000, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = _CFXPCCreateCFObjectFromXPCObject();
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CE0]];
  v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03CC0]];
  v13 = v12;
  if (v12)
  {
    bOOLValue = [v12 BOOLValue];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    bOOLValue = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  [DADClient _openServerOofSettingsRequest:];
LABEL_5:
  v25 = v11;
  v15 = [[DADClientSettingsDelegate alloc] initWithAccountID:v10 requestDictionary:v11 forUpdate:bOOLValue client:self];
  delegateID = [(DADClientDelegate *)v15 delegateID];
  if (delegateID)
  {
    actionDelegatesById = [(DADClient *)self actionDelegatesById];
    [actionDelegatesById setObject:v15 forKeyedSubscript:delegateID];

    v32 = *MEMORY[0x277D03CC8];
    v33 = delegateID;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v26 = requestCopy;
  v19 = [(DADClient *)self _createReplyToRequest:requestCopy withProperties:v18];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    conn2 = [(DADClient *)self conn];
    xpc_connection_send_message(conn2, v19);
  }

  v22 = +[DADMain sharedMain];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__DADClient__openServerOofSettingsRequest___block_invoke;
  v30[3] = &unk_278F1D010;
  v31 = v15;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __43__DADClient__openServerOofSettingsRequest___block_invoke_2;
  v27[3] = &unk_278F1CD98;
  v28 = v31;
  v29 = v5;
  v23 = v5;
  v24 = v31;
  [v22 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v27];
}

- (void)_checkIsOofSettingsSupported:(id)supported
{
  v15[1] = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (!v6)
  {
    [DADClient _checkIsOofSettingsSupported:];
  }

  v7 = [[DADClientSettingsDelegate alloc] initWithAccountID:v6 requestDictionary:0 forUpdate:0 client:self];
  isOofSupported = [(DADClientSettingsDelegate *)v7 isOofSupported];
  v14 = *MEMORY[0x277D03C50];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:isOofSupported];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v11 = [(DADClient *)self _createReplyToRequest:supportedCopy withProperties:v10];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    conn2 = [(DADClient *)self conn];
    xpc_connection_send_message(conn2, v11);
  }
}

- (void)_downloadSubscribedCalendar:(id)calendar eventDict:(id)dict
{
  v31 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  calendarCopy = calendar;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v30 = transactionId;
    _os_log_impl(&dword_248524000, v9, v10, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v12 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E68]];

  v13 = [[DADClientSubscribedCalendarDownloadDelegate alloc] initWithURL:v12 client:self];
  delegateID = [(DADClientDelegate *)v13 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v13 forKeyedSubscript:delegateID];

  v16 = +[DADMain sharedMain];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__DADClient__downloadSubscribedCalendar_eventDict___block_invoke;
  v25[3] = &unk_278F1D010;
  v26 = v13;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__DADClient__downloadSubscribedCalendar_eventDict___block_invoke_2;
  v22[3] = &unk_278F1CD98;
  v23 = v26;
  v24 = v8;
  v17 = v8;
  v18 = v26;
  [v16 addToOperationsQueueDisabledCheckAndGoBlock:v25 wrappedBlock:v22];

  v27 = *MEMORY[0x277D03E58];
  v28 = delegateID;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v20 = [(DADClient *)self _createReplyToRequest:calendarCopy withProperties:v19];
  v21 = xpc_dictionary_get_remote_connection(calendarCopy);

  xpc_connection_send_message(v21, v20);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_cancelDownloadingSubscribedCalendar:(id)calendar eventDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  calendarCopy = calendar;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D03E58];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E58]];

  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138412290;
    v33 = v14;
    _os_log_impl(&dword_248524000, v15, v16, "_cancelDownloadingSubscribedCalendar downloadID: %@", buf, 0xCu);
  }

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v18 = [actionDelegatesById objectForKeyedSubscript:v14];

  if (v18)
  {
    v19 = +[DADMain sharedMain];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __60__DADClient__cancelDownloadingSubscribedCalendar_eventDict___block_invoke;
    v30[3] = &unk_278F1D010;
    v31 = v18;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __60__DADClient__cancelDownloadingSubscribedCalendar_eventDict___block_invoke_2;
    v27[3] = &unk_278F1CD98;
    v28 = v31;
    v29 = v8;
    [v19 addToOperationsQueueDisabledCheckAndGoBlock:v30 wrappedBlock:v27];

    v20 = v31;
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(v10 + 4);
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_248524000, v20, v21, "Received a cancel for subcal download %@, but that download doesn't exist any more", buf, 0xCu);
    }
  }

  delegateID = [v18 delegateID];
  v23 = objc_opt_new();
  v24 = v23;
  if (delegateID)
  {
    [v23 setObject:delegateID forKey:v13];
  }

  v25 = [(DADClient *)self _createReplyToRequest:calendarCopy withProperties:v24];
  v26 = xpc_dictionary_get_remote_connection(calendarCopy);

  xpc_connection_send_message(v26, v25);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_setUserNameAndPasswordForSubscribedCalendar:(id)calendar eventDict:(id)dict
{
  v44 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  calendarCopy = calendar;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v43 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D03E58];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E58]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E78]];
  v30 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E70]];

  v16 = DALoggingwithCategory();
  v17 = *(v10 + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 138412290;
    v43 = v14;
    _os_log_impl(&dword_248524000, v16, v17, "_cancelDownloadingSubscribedCalendar downloadID: %@", buf, 0xCu);
  }

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v19 = [actionDelegatesById objectForKeyedSubscript:v14];

  if (v19)
  {
    v20 = +[DADMain sharedMain];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __68__DADClient__setUserNameAndPasswordForSubscribedCalendar_eventDict___block_invoke;
    v40[3] = &unk_278F1D010;
    v41 = v19;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __68__DADClient__setUserNameAndPasswordForSubscribedCalendar_eventDict___block_invoke_2;
    v35 = &unk_278F1CFE8;
    v36 = v41;
    v21 = v15;
    v37 = v15;
    v38 = v30;
    v22 = v8;
    v39 = v8;
    [v20 addToOperationsQueueDisabledCheckAndGoBlock:v40 wrappedBlock:&v32];

    v23 = v41;
  }

  else
  {
    v21 = v15;
    v22 = v8;
    v23 = DALoggingwithCategory();
    v24 = *(v10 + 4);
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 138412290;
      v43 = v14;
      _os_log_impl(&dword_248524000, v23, v24, "Received a password for subcal download %@, but that download doesn't exist any more", buf, 0xCu);
    }
  }

  delegateID = [v19 delegateID];
  v26 = objc_opt_new();
  v27 = v26;
  if (delegateID)
  {
    [v26 setObject:delegateID forKey:v13];
  }

  v28 = [(DADClient *)self _createReplyToRequest:calendarCopy withProperties:v27, v30, v32, v33, v34, v35];
  v29 = xpc_dictionary_get_remote_connection(calendarCopy);

  xpc_connection_send_message(v29, v28);
  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_requestCalendarAvailability:(id)availability eventDict:(id)dict
{
  v48 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  availabilityCopy = availability;
  v7 = objc_opt_new();
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    transactionId = [v7 transactionId];
    *buf = 138543362;
    v39 = transactionId;
    _os_log_impl(&dword_248524000, v8, v10, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v12 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03E28]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03B38]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039F8]];
  v16 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03C38]];

  if (v12)
  {
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    [DADClient _requestCalendarAvailability:eventDict:];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [DADClient _requestCalendarAvailability:eventDict:];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
  [DADClient _requestCalendarAvailability:eventDict:];
LABEL_6:
  v29 = v7;
  v17 = DALoggingwithCategory();
  v18 = *(v9 + 7);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 138544386;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v16;
    v46 = 2112;
    v47 = v15;
    _os_log_impl(&dword_248524000, v17, v18, "Starting calendar availability request with accountID: [%{public}@], startDate: [%@], endDate: [%@], ignoredEventID: [%@], addresses: [%@]", buf, 0x34u);
  }

  v19 = [[DADClientCalendarAvailabilityResponseDelegate alloc] initWithAccountID:v12 client:self startDate:v13 endDate:v14 ignoredEventID:v16 addresses:v15];
  delegateID = [(DADClientDelegate *)v19 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v19 forKeyedSubscript:delegateID];

  v36 = *MEMORY[0x277D03A58];
  v37 = delegateID;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v22 = v28 = v15;
  v23 = [(DADClient *)self _createReplyToRequest:availabilityCopy withProperties:v22];
  v24 = xpc_dictionary_get_remote_connection(availabilityCopy);

  xpc_connection_send_message(v24, v23);
  v25 = +[DADMain sharedMain];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __52__DADClient__requestCalendarAvailability_eventDict___block_invoke;
  v34[3] = &unk_278F1D010;
  v35 = v19;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __52__DADClient__requestCalendarAvailability_eventDict___block_invoke_2;
  v31[3] = &unk_278F1CD98;
  v32 = v35;
  v33 = v29;
  v26 = v29;
  v27 = v35;
  [v25 addToOperationsQueueDisabledCheckAndGoBlock:v34 wrappedBlock:v31];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_cancelCalendarAvailabilityRequest:(id)request eventDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138543362;
    v22 = transactionId;
    _os_log_impl(&dword_248524000, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A58]];

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[DADMain sharedMain];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__DADClient__cancelCalendarAvailabilityRequest_eventDict___block_invoke;
  v19[3] = &unk_278F1D010;
  v20 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__DADClient__cancelCalendarAvailabilityRequest_eventDict___block_invoke_2;
  v16[3] = &unk_278F1CD98;
  v17 = v20;
  v18 = v6;
  v14 = v6;
  v15 = v20;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v19 wrappedBlock:v16];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_requestGrantedDelegatesList:(id)list eventDict:(id)dict
{
  v34 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  listCopy = list;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v33 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];

  if (!v13)
  {
    [DADClient _requestGrantedDelegatesList:eventDict:];
  }

  v14 = DALoggingwithCategory();
  v15 = *(v10 + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138543362;
    v33 = v13;
    _os_log_impl(&dword_248524000, v14, v15, "Starting granted delegates list request with accountID: [%{public}@]", buf, 0xCu);
  }

  v16 = [(DADClientDelegate *)[DADClientGrantedDelegatesListResponseDelegate alloc] initWithAccountID:v13 client:self];
  delegateID = [(DADClientDelegate *)v16 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v16 forKeyedSubscript:delegateID];

  v30 = *MEMORY[0x277D03BF8];
  v31 = delegateID;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v20 = [(DADClient *)self _createReplyToRequest:listCopy withProperties:v19];
  v21 = xpc_dictionary_get_remote_connection(listCopy);

  xpc_connection_send_message(v21, v20);
  v22 = +[DADMain sharedMain];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__DADClient__requestGrantedDelegatesList_eventDict___block_invoke;
  v28[3] = &unk_278F1D010;
  v29 = v16;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__DADClient__requestGrantedDelegatesList_eventDict___block_invoke_2;
  v25[3] = &unk_278F1CD98;
  v26 = v29;
  v27 = v8;
  v23 = v8;
  v24 = v29;
  [v22 addToOperationsQueueDisabledCheckAndGoBlock:v28 wrappedBlock:v25];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_cancelGrantedDelegatesListRequest:(id)request eventDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138543362;
    v22 = transactionId;
    _os_log_impl(&dword_248524000, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03BF8]];

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[DADMain sharedMain];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__DADClient__cancelGrantedDelegatesListRequest_eventDict___block_invoke;
  v19[3] = &unk_278F1D010;
  v20 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__DADClient__cancelGrantedDelegatesListRequest_eventDict___block_invoke_2;
  v16[3] = &unk_278F1CD98;
  v17 = v20;
  v18 = v6;
  v14 = v6;
  v15 = v20;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v19 wrappedBlock:v16];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_updateGrantedDelegatePermission:(id)permission eventDict:(id)dict
{
  v41 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  permissionCopy = permission;
  v9 = objc_opt_new();
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v12))
  {
    transactionId = [v9 transactionId];
    *buf = 138543362;
    v40 = transactionId;
    _os_log_impl(&dword_248524000, v10, v12, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03BE8]];

  if (v14)
  {
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [DADClient _updateGrantedDelegatePermission:eventDict:];
    if (v15)
    {
      goto LABEL_5;
    }
  }

  [DADClient _updateGrantedDelegatePermission:eventDict:];
LABEL_5:
  v36 = 0;
  v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v36];
  v17 = v36;
  if (!v16)
  {
    [(DADClient *)a2 _updateGrantedDelegatePermission:v17 eventDict:?];
  }

  v29 = v17;
  v30 = v9;
  v18 = DALoggingwithCategory();
  v19 = *(v11 + 7);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138543362;
    v40 = v14;
    _os_log_impl(&dword_248524000, v18, v19, "Starting update-granted-delegate-permission request with accountID: [%{public}@]", buf, 0xCu);
  }

  v20 = [[DADClientUpdateGrantedDelegatePermissionResponseDelegate alloc] initWithAccountID:v14 client:self grantedDelegate:v16];
  delegateID = [(DADClientDelegate *)v20 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v20 forKeyedSubscript:delegateID];

  v37 = *MEMORY[0x277D03EB0];
  v38 = delegateID;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v24 = [(DADClient *)self _createReplyToRequest:permissionCopy withProperties:v23];
  v25 = xpc_dictionary_get_remote_connection(permissionCopy);

  xpc_connection_send_message(v25, v24);
  v26 = +[DADMain sharedMain];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __56__DADClient__updateGrantedDelegatePermission_eventDict___block_invoke;
  v34[3] = &unk_278F1D010;
  v35 = v20;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__DADClient__updateGrantedDelegatePermission_eventDict___block_invoke_2;
  v31[3] = &unk_278F1CD98;
  v32 = v35;
  v33 = v30;
  v27 = v30;
  v28 = v35;
  [v26 addToOperationsQueueDisabledCheckAndGoBlock:v34 wrappedBlock:v31];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_performCalendarDirectorySearch:(id)search eventDict:(id)dict
{
  v52 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  searchCopy = search;
  v7 = objc_opt_new();
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    transactionId = [v7 transactionId];
    *buf = 138543362;
    v45 = transactionId;
    _os_log_impl(&dword_248524000, v8, v10, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v12 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03AA8]];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A88]];
  v33 = v15;
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A90]];
  v32 = v17;
  if (v17)
  {
    unsignedIntegerValue = [v17 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v35 = v13;
  if (!v12)
  {
    [DADClient _performCalendarDirectorySearch:eventDict:];
  }

  v34 = v7;
  v19 = DALoggingwithCategory();
  v20 = *(v9 + 7);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138544130;
    v45 = v12;
    v46 = 2112;
    v47 = v16;
    v48 = 2048;
    v49 = unsignedIntegerValue;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&dword_248524000, v19, v20, "Starting calendar directory search with accountID: [%{public}@] recordTypes: [%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
  }

  v21 = [[DADClientCalendarDirectorySearchResponseDelegate alloc] initWithAccountID:v12 client:self terms:v14 recordTypes:v16 resultLimit:unsignedIntegerValue];
  delegateID = [(DADClientDelegate *)v21 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v21 forKeyedSubscript:delegateID];

  v42 = *MEMORY[0x277D03A80];
  v43 = delegateID;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v25 = [(DADClient *)self _createReplyToRequest:searchCopy withProperties:v24];
  xpc_dictionary_get_remote_connection(searchCopy);
  v31 = v12;
  v27 = v26 = v14;

  xpc_connection_send_message(v27, v25);
  v28 = +[DADMain sharedMain];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __55__DADClient__performCalendarDirectorySearch_eventDict___block_invoke;
  v40[3] = &unk_278F1D010;
  v41 = v21;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__DADClient__performCalendarDirectorySearch_eventDict___block_invoke_2;
  v37[3] = &unk_278F1CD98;
  v38 = v41;
  v39 = v34;
  v29 = v34;
  v30 = v41;
  [v28 addToOperationsQueueDisabledCheckAndGoBlock:v40 wrappedBlock:v37];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_cancelCalendarDirectorySearch:(id)search eventDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = objc_opt_new();
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    transactionId = [v6 transactionId];
    *buf = 138543362;
    v22 = transactionId;
    _os_log_impl(&dword_248524000, v7, v8, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v10 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03A80]];

  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  v12 = [actionDelegatesById objectForKeyedSubscript:v10];

  v13 = +[DADMain sharedMain];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__DADClient__cancelCalendarDirectorySearch_eventDict___block_invoke;
  v19[3] = &unk_278F1D010;
  v20 = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__DADClient__cancelCalendarDirectorySearch_eventDict___block_invoke_2;
  v16[3] = &unk_278F1CD98;
  v17 = v20;
  v18 = v6;
  v14 = v6;
  v15 = v20;
  [v13 addToOperationsQueueDisabledCheckAndGoBlock:v19 wrappedBlock:v16];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_performGroupExpansion:(id)expansion eventDict:(id)dict
{
  v37 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  expansionCopy = expansion;
  v8 = objc_opt_new();
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    transactionId = [v8 transactionId];
    *buf = 138543362;
    v34 = transactionId;
    _os_log_impl(&dword_248524000, v9, v11, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v13 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v14 = [dictCopy objectForKeyedSubscript:*MEMORY[0x277D03C18]];

  if (v13)
  {
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [DADClient _performGroupExpansion:eventDict:];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  [DADClient _performGroupExpansion:eventDict:];
LABEL_5:
  v15 = DALoggingwithCategory();
  v16 = *(v10 + 7);
  if (os_log_type_enabled(v15, v16))
  {
    *buf = 138543618;
    v34 = v13;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_248524000, v15, v16, "Starting groupExpansion accountID: [%{public}@] principalPath: [%@]", buf, 0x16u);
  }

  v17 = [[DADClientGroupExpansionResponseDelegate alloc] initWithAccountID:v13 client:self principalPath:v14];
  delegateID = [(DADClientDelegate *)v17 delegateID];
  actionDelegatesById = [(DADClient *)self actionDelegatesById];
  [actionDelegatesById setObject:v17 forKeyedSubscript:delegateID];

  v31 = *MEMORY[0x277D03C10];
  v32 = delegateID;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v21 = [(DADClient *)self _createReplyToRequest:expansionCopy withProperties:v20];
  v22 = xpc_dictionary_get_remote_connection(expansionCopy);

  xpc_connection_send_message(v22, v21);
  v23 = +[DADMain sharedMain];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__DADClient__performGroupExpansion_eventDict___block_invoke;
  v29[3] = &unk_278F1D010;
  v30 = v17;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46__DADClient__performGroupExpansion_eventDict___block_invoke_2;
  v26[3] = &unk_278F1CD98;
  v27 = v30;
  v28 = v8;
  v24 = v8;
  v25 = v30;
  [v23 addToOperationsQueueDisabledCheckAndGoBlock:v29 wrappedBlock:v26];

  [(DADClient *)self noteBlockedClientCallChange:1];
}

- (void)_asPolicyKeyChanged:(id)changed
{
  v23[3] = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  conn = [(DADClient *)self conn];

  if (conn)
  {
    object = [changedCopy object];
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D038B0]];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &stru_285AC0920;
    }

    userInfo2 = [changedCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D038A8]];

    if (object)
    {
      v12 = *MEMORY[0x277D03D18];
      v13 = *MEMORY[0x277D039D0];
      if (v11)
      {
        v20[0] = *MEMORY[0x277D03C88];
        v20[1] = v13;
        v21[0] = v12;
        v21[1] = object;
        v14 = *MEMORY[0x277D03D20];
        v21[2] = v9;
        v15 = *MEMORY[0x277D03D10];
        v20[2] = v14;
        v20[3] = v15;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "code")}];
        v21[3] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];
      }

      else
      {
        v22[0] = *MEMORY[0x277D03C88];
        v22[1] = v13;
        v23[0] = v12;
        v23[1] = object;
        v22[2] = *MEMORY[0x277D03D20];
        v23[2] = v9;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
      }

      v18 = _CFXPCCreateXPCObjectFromCFObject();
      conn2 = [(DADClient *)self conn];
      xpc_connection_send_message(conn2, v18);
    }
  }
}

- (void)_requestClientStatusDump:(id)dump
{
  v9[1] = *MEMORY[0x277D85DE8];
  conn = [(DADClient *)self conn];

  if (conn)
  {
    v8 = *MEMORY[0x277D03C88];
    v9[0] = *MEMORY[0x277D03C60];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    conn2 = [(DADClient *)self conn];
    xpc_connection_send_message(conn2, v6);
  }
}

- (void)_foldersUpdated:(id)updated
{
  v33[3] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  object = [updatedCopy object];
  accountID = [object accountID];

  userInfo = [updatedCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D038D0]];

  if (v8)
  {
    watchedIDs = [(DADClient *)self watchedIDs];
    v10 = [watchedIDs objectForKeyedSubscript:accountID];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEB58] setWithArray:v8];
      [v11 intersectSet:v10];
      allObjects = [v11 allObjects];

      if (allObjects)
      {
        conn = [(DADClient *)self conn];

        if (conn)
        {
          v14 = *MEMORY[0x277D03BC0];
          v15 = *MEMORY[0x277D039D0];
          v32[0] = *MEMORY[0x277D03C88];
          v32[1] = v15;
          v33[0] = v14;
          v33[1] = accountID;
          v32[2] = *MEMORY[0x277D03BA8];
          v33[2] = allObjects;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
          v17 = _CFXPCCreateXPCObjectFromCFObject();
          conn2 = [(DADClient *)self conn];
          xpc_connection_send_message(conn2, v17);
        }

        else
        {
          v16 = [MEMORY[0x277CBEB58] setWithArray:allObjects];
          updatedIDs = [(DADClient *)self updatedIDs];
          v17 = [updatedIDs objectForKeyedSubscript:accountID];

          if (v17)
          {
            [v16 unionSet:v17];
          }

          updatedIDs2 = [(DADClient *)self updatedIDs];
          [updatedIDs2 setObject:v16 forKey:accountID];

          v21 = DALoggingwithCategory();
          v22 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v21, v22))
          {
            clientBundleID = [(DADClient *)self clientBundleID];
            *buf = 138412290;
            v31 = clientBundleID;
            _os_log_impl(&dword_248524000, v21, v22, "Launching %@", buf, 0xCu);
          }

          v28 = *MEMORY[0x277D0ABF0];
          v29 = MEMORY[0x277CBEC38];
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          mEMORY[0x277D0AE18] = [MEMORY[0x277D0AE18] sharedService];
          clientBundleID2 = [(DADClient *)self clientBundleID];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __29__DADClient__foldersUpdated___block_invoke;
          v27[3] = &unk_278F1D240;
          v27[4] = self;
          [mEMORY[0x277D0AE18] openApplication:clientBundleID2 options:v24 withResult:v27];
        }
      }
    }

    else
    {
    }
  }
}

void __29__DADClient__foldersUpdated___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [*(a1 + 32) clientBundleID];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_248524000, v4, v5, "Failed to launch %@: %@", &v7, 0x16u);
    }
  }
}

- (void)_agentsStopped:(id)stopped
{
  os_unfair_lock_lock(&self->_accountTimersLock);
  accountTimers = [(DADClient *)self accountTimers];
  [accountTimers removeAllObjects];

  os_unfair_lock_unlock(&self->_accountTimersLock);
}

- (void)applyClientStatusReportToAggregator:(id)aggregator
{
  v13[1] = *MEMORY[0x277D85DE8];
  aggregatorCopy = aggregator;
  if (applyClientStatusReportToAggregator__once != -1)
  {
    [DADClient applyClientStatusReportToAggregator:];
  }

  conn = [(DADClient *)self conn];

  if (conn)
  {
    v12 = *MEMORY[0x277D03C88];
    v13[0] = *MEMORY[0x277D03BE0];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = _CFXPCCreateXPCObjectFromCFObject();
    conn2 = [(DADClient *)self conn];
    v9 = applyClientStatusReportToAggregator__aggregatorQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__DADClient_applyClientStatusReportToAggregator___block_invoke_2;
    v10[3] = &unk_278F1CEA8;
    v11 = aggregatorCopy;
    xpc_connection_send_message_with_reply(conn2, v7, v9, v10);
  }

  else
  {
    [aggregatorCopy noteAdditionalReportDicts:0];
  }
}

uint64_t __49__DADClient_applyClientStatusReportToAggregator___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.dataaccess.statusreportaggregator", 0);
  v1 = applyClientStatusReportToAggregator__aggregatorQueue;
  applyClientStatusReportToAggregator__aggregatorQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __49__DADClient_applyClientStatusReportToAggregator___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (MEMORY[0x24C1D1BA0]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D03E40]];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  [*(a1 + 32) noteAdditionalReportDicts:v4];
}

- (void)_manageCalDAVServerSimulatorWithHostname:(id)hostname action:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  actionCopy = action;
  v8 = actionCopy;
  if (!hostnameCopy)
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v14))
    {
      LOWORD(v23) = 0;
      v15 = "_manageCalDAVServerSimulatorWithHostname called with nil hostname";
      v16 = v13;
      v17 = v14;
      v18 = 2;
LABEL_12:
      _os_log_impl(&dword_248524000, v16, v17, v15, &v23, v18);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ([actionCopy isEqualToString:*MEMORY[0x277D03DD8]])
  {
    simulatedCalDAVHostnames = [(DADClient *)self simulatedCalDAVHostnames];
    [simulatedCalDAVHostnames addObject:hostnameCopy];

    simulatedCalDAVHostnames2 = [(DADClient *)self simulatedCalDAVHostnames];
    v11 = [simulatedCalDAVHostnames2 countForObject:hostnameCopy];

    if (v11 == 1)
    {
      v12 = [MEMORY[0x277CB8000] beginSimulationWithHostname:hostnameCopy];
    }

    goto LABEL_14;
  }

  if (![v8 isEqualToString:*MEMORY[0x277D03DE0]])
  {
    v13 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v22))
    {
      v23 = 138412290;
      v24 = v8;
      v15 = "_manageCalDAVServerSimulatorWithHostname called with unrecognized action: %@";
      v16 = v13;
      v17 = v22;
      v18 = 12;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  simulatedCalDAVHostnames3 = [(DADClient *)self simulatedCalDAVHostnames];
  [simulatedCalDAVHostnames3 removeObject:hostnameCopy];

  simulatedCalDAVHostnames4 = [(DADClient *)self simulatedCalDAVHostnames];
  v21 = [simulatedCalDAVHostnames4 countForObject:hostnameCopy];

  if (!v21)
  {
    [MEMORY[0x277CB8000] endSimulationWithHostname:hostnameCopy];
  }

LABEL_14:
}

- (void)_endAllServerSimulations
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  simulatedCalDAVHostnames = [(DADClient *)self simulatedCalDAVHostnames];
  allObjects = [simulatedCalDAVHostnames allObjects];

  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        [MEMORY[0x277CB8000] endSimulationWithHostname:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)_checkAccountId:(id)id
{
  idCopy = id;
  v4 = idCopy;
  if (idCopy && [idCopy length])
  {
    v5 = +[DADAgentManager sharedManager];
    v6 = [v5 accountWithAccountID:v4];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_sendInvalidAccountIDReplyToMessage:(id)message withAccountID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D03C40];
  v13[0] = d;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  messageCopy = message;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [(DADClient *)self _createReplyToRequest:messageCopy withProperties:v9];
  v11 = xpc_dictionary_get_remote_connection(messageCopy);

  xpc_connection_send_message(v11, v10);
}

- (void)_clientDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = MEMORY[0x277D863F0];
  v6 = DALoggingwithCategory();
  v7 = v6;
  if (reasonCopy == v5 || reasonCopy == MEMORY[0x277D863F8])
  {
    v11 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v11))
    {
      v15 = 0;
      v9 = "Client of DADClient died, cleaning up.";
      v10 = &v15;
LABEL_10:
      _os_log_impl(&dword_248524000, v7, v11, v9, v10, 2u);
    }
  }

  else
  {
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v11))
    {
      LOWORD(v14) = 0;
      v9 = "LOOK AT ME!!!! Got an unknown error, the client messed with our connection in a way we weren't expecting.  If you're seeing this, get ready for some pain";
      v10 = &v14;
      goto LABEL_10;
    }
  }

  if ([(DADClient *)self persistent]&& ([(DADClient *)self clientBundleID], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    [(DADClient *)self persistentClientCleanup];
  }

  else
  {
    [(DADClient *)self disable];
  }
}

- (void)_dispatchMessage:(id)message
{
  v236 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(DADisableableObject *)self isDisabled])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03C88]];
    v68 = [v5 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
    v7 = objc_opt_new();
    v8 = DALoggingwithCategory();
    v9 = MEMORY[0x277D03988];
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v10))
    {
      transactionId = [v7 transactionId];
      *buf = 138543362;
      v231 = transactionId;
      _os_log_impl(&dword_248524000, v8, v10, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    v12 = DALoggingwithCategory();
    v13 = *(v9 + 7);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v231 = v6;
      _os_log_impl(&dword_248524000, v12, v13, "Received xpc message %@", buf, 0xCu);
    }

    if (![(DADClient *)self _checkAccessForMessage:v6])
    {
      clientPID = [(DADClient *)self clientPID];
      v18 = DALoggingwithCategory();
      v19 = *(v9 + 3);
      if (os_log_type_enabled(v18, v19))
      {
        clientName = [(DADClient *)self clientName];
        *buf = 138412802;
        v231 = clientName;
        v232 = 1024;
        v233 = clientPID;
        v234 = 2112;
        v235 = v6;
        _os_log_impl(&dword_248524000, v18, v19, "Client %@ (%i) is not authorized to send message %@", buf, 0x1Cu);
      }

      [(DADClient *)self _sendAccessDeniedReplyForMessage:messageCopy];
      goto LABEL_13;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03A48]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v14 = gDADHighAvailabilityQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __30__DADClient__dispatchMessage___block_invoke;
      block[3] = &unk_278F1CFE8;
      block[4] = self;
      v15 = v68;
      v227 = v68;
      v228 = messageCopy;
      v229 = v7;
      dispatch_async(v14, block);

      v16 = v227;
LABEL_20:

      goto LABEL_21;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03E50]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v21 = gDADHighAvailabilityQueue;
      v222[0] = MEMORY[0x277D85DD0];
      v222[1] = 3221225472;
      v222[2] = __30__DADClient__dispatchMessage___block_invoke_2;
      v222[3] = &unk_278F1CFE8;
      v222[4] = self;
      v15 = v68;
      v223 = v68;
      v224 = messageCopy;
      v225 = v7;
      dispatch_async(v21, v222);

      v16 = v223;
      goto LABEL_20;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03DB0]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v22 = gDADHighAvailabilityQueue;
      v218[0] = MEMORY[0x277D85DD0];
      v218[1] = 3221225472;
      v218[2] = __30__DADClient__dispatchMessage___block_invoke_3;
      v218[3] = &unk_278F1CFE8;
      v218[4] = self;
      v15 = v68;
      v219 = v68;
      v220 = messageCopy;
      v221 = v7;
      dispatch_async(v22, v218);

      v16 = v219;
      goto LABEL_20;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03E80]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v23 = gDADHighAvailabilityQueue;
      v214[0] = MEMORY[0x277D85DD0];
      v214[1] = 3221225472;
      v214[2] = __30__DADClient__dispatchMessage___block_invoke_4;
      v214[3] = &unk_278F1CFE8;
      v214[4] = self;
      v15 = v68;
      v215 = v68;
      v216 = messageCopy;
      v217 = v7;
      dispatch_async(v23, v214);

      v16 = v215;
      goto LABEL_20;
    }

    if ([v6 isEqualToString:*MEMORY[0x277D03E30]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v24 = gDADHighAvailabilityQueue;
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = __30__DADClient__dispatchMessage___block_invoke_5;
      v211[3] = &unk_278F1D0B0;
      v211[4] = self;
      v212 = messageCopy;
      v213 = v7;
      dispatch_async(v24, v211);

      v25 = v212;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03E48]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v26 = gDADHighAvailabilityQueue;
      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 3221225472;
      v208[2] = __30__DADClient__dispatchMessage___block_invoke_6;
      v208[3] = &unk_278F1D0B0;
      v208[4] = self;
      v209 = messageCopy;
      v210 = v7;
      dispatch_async(v26, v208);

      v25 = v209;
    }

    else if ([v6 isEqualToString:*MEMORY[0x277D03C20]])
    {
      [(DADClient *)self noteBlockedClientCallChange:0];
      v27 = gDADHighAvailabilityQueue;
      v205[0] = MEMORY[0x277D85DD0];
      v205[1] = 3221225472;
      v205[2] = __30__DADClient__dispatchMessage___block_invoke_7;
      v205[3] = &unk_278F1D0B0;
      v205[4] = self;
      v206 = messageCopy;
      v207 = v7;
      dispatch_async(v27, v205);

      v25 = v206;
    }

    else
    {
      if ([v6 isEqualToString:*MEMORY[0x277D03BD0]])
      {
        [(DADClient *)self noteBlockedClientCallChange:0];
        v28 = gDADHighAvailabilityQueue;
        v201[0] = MEMORY[0x277D85DD0];
        v201[1] = 3221225472;
        v201[2] = __30__DADClient__dispatchMessage___block_invoke_8;
        v201[3] = &unk_278F1CFE8;
        v201[4] = self;
        v15 = v68;
        v202 = v68;
        v203 = messageCopy;
        v204 = v7;
        dispatch_async(v28, v201);

        v16 = v202;
        goto LABEL_20;
      }

      if ([v6 isEqualToString:*MEMORY[0x277D03D88]])
      {
        v29 = gDADHighAvailabilityQueue;
        v197[0] = MEMORY[0x277D85DD0];
        v197[1] = 3221225472;
        v197[2] = __30__DADClient__dispatchMessage___block_invoke_9;
        v197[3] = &unk_278F1CFE8;
        v197[4] = self;
        v15 = v68;
        v198 = v68;
        v199 = messageCopy;
        v200 = v7;
        dispatch_async(v29, v197);

        v16 = v198;
        goto LABEL_20;
      }

      if ([v6 isEqualToString:*MEMORY[0x277D03D70]])
      {
        v30 = gDADHighAvailabilityQueue;
        v194[0] = MEMORY[0x277D85DD0];
        v194[1] = 3221225472;
        v194[2] = __30__DADClient__dispatchMessage___block_invoke_10;
        v194[3] = &unk_278F1D0B0;
        v194[4] = self;
        v195 = messageCopy;
        v196 = v7;
        dispatch_async(v30, v194);

        v25 = v195;
      }

      else if ([v6 isEqualToString:*MEMORY[0x277D03D60]])
      {
        v31 = gDADHighAvailabilityQueue;
        v191[0] = MEMORY[0x277D85DD0];
        v191[1] = 3221225472;
        v191[2] = __30__DADClient__dispatchMessage___block_invoke_11;
        v191[3] = &unk_278F1D0B0;
        v191[4] = self;
        v192 = messageCopy;
        v193 = v7;
        dispatch_async(v31, v191);

        v25 = v192;
      }

      else if ([v6 isEqualToString:*MEMORY[0x277D03D78]])
      {
        v32 = gDADHighAvailabilityQueue;
        v188[0] = MEMORY[0x277D85DD0];
        v188[1] = 3221225472;
        v188[2] = __30__DADClient__dispatchMessage___block_invoke_12;
        v188[3] = &unk_278F1D0B0;
        v188[4] = self;
        v189 = messageCopy;
        v190 = v7;
        dispatch_async(v32, v188);

        v25 = v189;
      }

      else
      {
        if ([v6 isEqualToString:*MEMORY[0x277D03CF0]])
        {
          [(DADClient *)self noteBlockedClientCallChange:0];
          v33 = gDADHighAvailabilityQueue;
          v184[0] = MEMORY[0x277D85DD0];
          v184[1] = 3221225472;
          v184[2] = __30__DADClient__dispatchMessage___block_invoke_13;
          v184[3] = &unk_278F1CFE8;
          v184[4] = self;
          v15 = v68;
          v185 = v68;
          v186 = messageCopy;
          v187 = v7;
          dispatch_async(v33, v184);

          v16 = v185;
          goto LABEL_20;
        }

        if ([v6 isEqualToString:*MEMORY[0x277D03AE0]])
        {
          v34 = gDADHighAvailabilityQueue;
          v181[0] = MEMORY[0x277D85DD0];
          v181[1] = 3221225472;
          v181[2] = __30__DADClient__dispatchMessage___block_invoke_14;
          v181[3] = &unk_278F1D0B0;
          v181[4] = self;
          v182 = messageCopy;
          v183 = v7;
          dispatch_async(v34, v181);

          v25 = v182;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03D30]])
        {
          [(DADClient *)self noteBlockedClientCallChange:0];
          v35 = gDADHighAvailabilityQueue;
          v178[0] = MEMORY[0x277D85DD0];
          v178[1] = 3221225472;
          v178[2] = __30__DADClient__dispatchMessage___block_invoke_15;
          v178[3] = &unk_278F1D0B0;
          v178[4] = self;
          v179 = messageCopy;
          v180 = v7;
          dispatch_async(v35, v178);

          v25 = v179;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03A10]])
        {
          [(DADClient *)self noteBlockedClientCallChange:0];
          v36 = gDADHighAvailabilityQueue;
          v175[0] = MEMORY[0x277D85DD0];
          v175[1] = 3221225472;
          v175[2] = __30__DADClient__dispatchMessage___block_invoke_16;
          v175[3] = &unk_278F1D0B0;
          v175[4] = self;
          v176 = messageCopy;
          v177 = v7;
          dispatch_async(v36, v175);

          v25 = v176;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03D98]])
        {
          v37 = gDADHighAvailabilityQueue;
          v172[0] = MEMORY[0x277D85DD0];
          v172[1] = 3221225472;
          v172[2] = __30__DADClient__dispatchMessage___block_invoke_17;
          v172[3] = &unk_278F1D0B0;
          v172[4] = self;
          v173 = messageCopy;
          v174 = v7;
          dispatch_async(v37, v172);

          v25 = v173;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03DF8]])
        {
          [(DADClient *)self noteBlockedClientCallChange:0];
          v38 = gDADHighAvailabilityQueue;
          v169[0] = MEMORY[0x277D85DD0];
          v169[1] = 3221225472;
          v169[2] = __30__DADClient__dispatchMessage___block_invoke_18;
          v169[3] = &unk_278F1D0B0;
          v169[4] = self;
          v170 = messageCopy;
          v171 = v7;
          dispatch_async(v38, v169);

          v25 = v170;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03D40]])
        {
          v39 = gDADHighAvailabilityQueue;
          v166[0] = MEMORY[0x277D85DD0];
          v166[1] = 3221225472;
          v166[2] = __30__DADClient__dispatchMessage___block_invoke_19;
          v166[3] = &unk_278F1D0B0;
          v166[4] = self;
          v167 = messageCopy;
          v168 = v7;
          dispatch_async(v39, v166);

          v25 = v167;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03C30]])
        {
          v40 = gDADHighAvailabilityQueue;
          v163[0] = MEMORY[0x277D85DD0];
          v163[1] = 3221225472;
          v163[2] = __30__DADClient__dispatchMessage___block_invoke_20;
          v163[3] = &unk_278F1D0B0;
          v163[4] = self;
          v164 = messageCopy;
          v165 = v7;
          dispatch_async(v40, v163);

          v25 = v164;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03D28]])
        {
          [(DADClient *)self noteBlockedClientCallChange:0];
          v41 = gDADHighAvailabilityQueue;
          v160[0] = MEMORY[0x277D85DD0];
          v160[1] = 3221225472;
          v160[2] = __30__DADClient__dispatchMessage___block_invoke_21;
          v160[3] = &unk_278F1D0B0;
          v160[4] = self;
          v161 = messageCopy;
          v162 = v7;
          dispatch_async(v41, v160);

          v25 = v161;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03BD8]])
        {
          [(DADClient *)self noteRefreshClientCallChange:0];
          v42 = gDADHighAvailabilityQueue;
          v157[0] = MEMORY[0x277D85DD0];
          v157[1] = 3221225472;
          v157[2] = __30__DADClient__dispatchMessage___block_invoke_22;
          v157[3] = &unk_278F1D0B0;
          v157[4] = self;
          v158 = messageCopy;
          v159 = v7;
          dispatch_async(v42, v157);

          v25 = v158;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03D38]])
        {
          v43 = gDADHighAvailabilityQueue;
          v154[0] = MEMORY[0x277D85DD0];
          v154[1] = 3221225472;
          v154[2] = __30__DADClient__dispatchMessage___block_invoke_23;
          v154[3] = &unk_278F1D0B0;
          v154[4] = self;
          v155 = messageCopy;
          v156 = v7;
          dispatch_async(v43, v154);

          v25 = v155;
        }

        else if ([v6 isEqualToString:*MEMORY[0x277D03DA0]])
        {
          v44 = gDADHighAvailabilityQueue;
          v151[0] = MEMORY[0x277D85DD0];
          v151[1] = 3221225472;
          v151[2] = __30__DADClient__dispatchMessage___block_invoke_24;
          v151[3] = &unk_278F1D0B0;
          v151[4] = self;
          v152 = messageCopy;
          v153 = v7;
          dispatch_async(v44, v151);

          v25 = v152;
        }

        else
        {
          if ([v6 isEqualToString:*MEMORY[0x277D03A40]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v45 = gDADHighAvailabilityQueue;
            v146[0] = MEMORY[0x277D85DD0];
            v146[1] = 3221225472;
            v146[2] = __30__DADClient__dispatchMessage___block_invoke_25;
            v146[3] = &unk_278F1D268;
            v146[4] = self;
            v15 = v68;
            v147 = v68;
            v148 = messageCopy;
            v149 = v5;
            v150 = v7;
            dispatch_async(v45, v146);

            v16 = v147;
            goto LABEL_20;
          }

          if ([v6 isEqualToString:*MEMORY[0x277D03AD0]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v46 = gDADHighAvailabilityQueue;
            v142[0] = MEMORY[0x277D85DD0];
            v142[1] = 3221225472;
            v142[2] = __30__DADClient__dispatchMessage___block_invoke_26;
            v142[3] = &unk_278F1CFE8;
            v142[4] = self;
            v143 = messageCopy;
            v144 = v5;
            v145 = v7;
            dispatch_async(v46, v142);

            v25 = v143;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03DA8]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v47 = gDADHighAvailabilityQueue;
            v138[0] = MEMORY[0x277D85DD0];
            v138[1] = 3221225472;
            v138[2] = __30__DADClient__dispatchMessage___block_invoke_27;
            v138[3] = &unk_278F1CFE8;
            v138[4] = self;
            v139 = messageCopy;
            v140 = v5;
            v141 = v7;
            dispatch_async(v47, v138);

            v25 = v139;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03D48]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v48 = gDADHighAvailabilityQueue;
            v134[0] = MEMORY[0x277D85DD0];
            v134[1] = 3221225472;
            v134[2] = __30__DADClient__dispatchMessage___block_invoke_28;
            v134[3] = &unk_278F1CFE8;
            v134[4] = self;
            v135 = messageCopy;
            v136 = v5;
            v137 = v7;
            dispatch_async(v48, v134);

            v25 = v135;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03B80]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v49 = gDADHighAvailabilityQueue;
            v130[0] = MEMORY[0x277D85DD0];
            v130[1] = 3221225472;
            v130[2] = __30__DADClient__dispatchMessage___block_invoke_29;
            v130[3] = &unk_278F1CFE8;
            v130[4] = self;
            v131 = messageCopy;
            v132 = v5;
            v133 = v7;
            dispatch_async(v49, v130);

            v25 = v131;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03E00]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v50 = gDADHighAvailabilityQueue;
            v126[0] = MEMORY[0x277D85DD0];
            v126[1] = 3221225472;
            v126[2] = __30__DADClient__dispatchMessage___block_invoke_30;
            v126[3] = &unk_278F1CFE8;
            v126[4] = self;
            v127 = messageCopy;
            v128 = v5;
            v129 = v7;
            dispatch_async(v50, v126);

            v25 = v127;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03CD0]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v51 = gDADHighAvailabilityQueue;
            v123[0] = MEMORY[0x277D85DD0];
            v123[1] = 3221225472;
            v123[2] = __30__DADClient__dispatchMessage___block_invoke_31;
            v123[3] = &unk_278F1D0B0;
            v123[4] = self;
            v124 = messageCopy;
            v125 = v7;
            dispatch_async(v51, v123);

            v25 = v124;
          }

          else if ([v6 isEqualToString:*MEMORY[0x277D03C48]])
          {
            [(DADClient *)self noteBlockedClientCallChange:0];
            v52 = gDADHighAvailabilityQueue;
            v120[0] = MEMORY[0x277D85DD0];
            v120[1] = 3221225472;
            v120[2] = __30__DADClient__dispatchMessage___block_invoke_32;
            v120[3] = &unk_278F1D0B0;
            v120[4] = self;
            v121 = messageCopy;
            v122 = v7;
            dispatch_async(v52, v120);

            v25 = v121;
          }

          else
          {
            if ([v6 isEqualToString:*MEMORY[0x277D03D68]])
            {
              [(DADClient *)self noteBlockedClientCallChange:0];
              v53 = gDADHighAvailabilityQueue;
              v115[0] = MEMORY[0x277D85DD0];
              v115[1] = 3221225472;
              v115[2] = __30__DADClient__dispatchMessage___block_invoke_33;
              v115[3] = &unk_278F1D268;
              v115[4] = self;
              v15 = v68;
              v116 = v68;
              v117 = messageCopy;
              v118 = v5;
              v119 = v7;
              dispatch_async(v53, v115);

              v16 = v116;
              goto LABEL_20;
            }

            if ([v6 isEqualToString:*MEMORY[0x277D03AB8]])
            {
              [(DADClient *)self noteBlockedClientCallChange:0];
              v54 = gDADHighAvailabilityQueue;
              v111[0] = MEMORY[0x277D85DD0];
              v111[1] = 3221225472;
              v111[2] = __30__DADClient__dispatchMessage___block_invoke_34;
              v111[3] = &unk_278F1CFE8;
              v111[4] = self;
              v112 = messageCopy;
              v113 = v5;
              v114 = v7;
              dispatch_async(v54, v111);

              v25 = v112;
            }

            else
            {
              if ([v6 isEqualToString:*MEMORY[0x277D03D80]])
              {
                [(DADClient *)self noteBlockedClientCallChange:0];
                v55 = gDADHighAvailabilityQueue;
                v106[0] = MEMORY[0x277D85DD0];
                v106[1] = 3221225472;
                v106[2] = __30__DADClient__dispatchMessage___block_invoke_35;
                v106[3] = &unk_278F1D268;
                v106[4] = self;
                v15 = v68;
                v107 = v68;
                v108 = messageCopy;
                v109 = v5;
                v110 = v7;
                dispatch_async(v55, v106);

                v16 = v107;
                goto LABEL_20;
              }

              if (![v6 isEqualToString:*MEMORY[0x277D03AD8]])
              {
                if ([v6 isEqualToString:*MEMORY[0x277D03EA0]])
                {
                  [(DADClient *)self noteBlockedClientCallChange:0];
                  v57 = gDADHighAvailabilityQueue;
                  v97[0] = MEMORY[0x277D85DD0];
                  v97[1] = 3221225472;
                  v97[2] = __30__DADClient__dispatchMessage___block_invoke_37;
                  v97[3] = &unk_278F1D268;
                  v97[4] = self;
                  v15 = v68;
                  v98 = v68;
                  v99 = messageCopy;
                  v100 = v5;
                  v101 = v7;
                  dispatch_async(v57, v97);

                  v16 = v98;
                  goto LABEL_20;
                }

                if ([v6 isEqualToString:*MEMORY[0x277D03CF8]])
                {
                  [(DADClient *)self noteBlockedClientCallChange:0];
                  if ([(DADClient *)self _checkAccountId:v68])
                  {
                    [(DADClient *)self _performCalendarDirectorySearch:messageCopy eventDict:v5];
                    goto LABEL_13;
                  }
                }

                else
                {
                  if ([v6 isEqualToString:*MEMORY[0x277D03AC0]])
                  {
                    [(DADClient *)self noteBlockedClientCallChange:0];
                    [(DADClient *)self _cancelCalendarDirectorySearch:messageCopy eventDict:v5];
                    goto LABEL_13;
                  }

                  if (![v6 isEqualToString:*MEMORY[0x277D03D00]])
                  {
                    if ([v6 isEqualToString:*MEMORY[0x277D03B10]])
                    {
                      [(DADClient *)self noteBlockedClientCallChange:0];
                      v58 = gDADHighAvailabilityQueue;
                      v93[0] = MEMORY[0x277D85DD0];
                      v93[1] = 3221225472;
                      v93[2] = __30__DADClient__dispatchMessage___block_invoke_38;
                      v93[3] = &unk_278F1CFE8;
                      v93[4] = self;
                      v94 = messageCopy;
                      v95 = v5;
                      v96 = v7;
                      dispatch_async(v58, v93);

                      v25 = v94;
                    }

                    else if ([v6 isEqualToString:*MEMORY[0x277D03AC8]])
                    {
                      [(DADClient *)self noteBlockedClientCallChange:0];
                      v59 = gDADHighAvailabilityQueue;
                      v89[0] = MEMORY[0x277D85DD0];
                      v89[1] = 3221225472;
                      v89[2] = __30__DADClient__dispatchMessage___block_invoke_39;
                      v89[3] = &unk_278F1CFE8;
                      v89[4] = self;
                      v90 = messageCopy;
                      v91 = v5;
                      v92 = v7;
                      dispatch_async(v59, v89);

                      v25 = v90;
                    }

                    else if ([v6 isEqualToString:*MEMORY[0x277D03E08]])
                    {
                      [(DADClient *)self noteBlockedClientCallChange:0];
                      v60 = gDADHighAvailabilityQueue;
                      v85[0] = MEMORY[0x277D85DD0];
                      v85[1] = 3221225472;
                      v85[2] = __30__DADClient__dispatchMessage___block_invoke_40;
                      v85[3] = &unk_278F1CFE8;
                      v85[4] = self;
                      v86 = messageCopy;
                      v87 = v5;
                      v88 = v7;
                      dispatch_async(v60, v85);

                      v25 = v86;
                    }

                    else if ([v6 isEqualToString:*MEMORY[0x277D03C68]])
                    {
                      v61 = gDADHighAvailabilityQueue;
                      v81[0] = MEMORY[0x277D85DD0];
                      v81[1] = 3221225472;
                      v81[2] = __30__DADClient__dispatchMessage___block_invoke_41;
                      v81[3] = &unk_278F1D0B0;
                      v82 = v5;
                      selfCopy = self;
                      v84 = v7;
                      dispatch_async(v61, v81);

                      v25 = v82;
                    }

                    else if ([v6 isEqualToString:*MEMORY[0x277D03D50]])
                    {
                      v62 = gDADHighAvailabilityQueue;
                      v77[0] = MEMORY[0x277D85DD0];
                      v77[1] = 3221225472;
                      v77[2] = __30__DADClient__dispatchMessage___block_invoke_42;
                      v77[3] = &unk_278F1CFE8;
                      v77[4] = self;
                      v78 = messageCopy;
                      v79 = v5;
                      v80 = v7;
                      dispatch_async(v62, v77);

                      v25 = v78;
                    }

                    else if ([v6 isEqualToString:*MEMORY[0x277D03AE8]])
                    {
                      v63 = gDADHighAvailabilityQueue;
                      v73[0] = MEMORY[0x277D85DD0];
                      v73[1] = 3221225472;
                      v73[2] = __30__DADClient__dispatchMessage___block_invoke_43;
                      v73[3] = &unk_278F1CFE8;
                      v73[4] = self;
                      v74 = messageCopy;
                      v75 = v5;
                      v76 = v7;
                      dispatch_async(v63, v73);

                      v25 = v74;
                    }

                    else
                    {
                      if (![v6 isEqualToString:*MEMORY[0x277D03B48]])
                      {
                        v65 = DALoggingwithCategory();
                        v66 = *(v9 + 3);
                        if (os_log_type_enabled(v65, v66))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_248524000, v65, v66, "unknown request sent to client.", buf, 2u);
                        }

                        v67 = DALoggingwithCategory();
                        if (os_log_type_enabled(v67, v66))
                        {
                          *buf = 138412290;
                          v231 = v5;
                          _os_log_impl(&dword_248524000, v67, v66, "request: %@", buf, 0xCu);
                        }

                        goto LABEL_13;
                      }

                      v64 = gDADHighAvailabilityQueue;
                      v69[0] = MEMORY[0x277D85DD0];
                      v69[1] = 3221225472;
                      v69[2] = __30__DADClient__dispatchMessage___block_invoke_44;
                      v69[3] = &unk_278F1CFE8;
                      v69[4] = self;
                      v70 = messageCopy;
                      v71 = v5;
                      v72 = v7;
                      dispatch_async(v64, v69);

                      v25 = v70;
                    }

                    goto LABEL_29;
                  }

                  [(DADClient *)self noteBlockedClientCallChange:0];
                  if ([(DADClient *)self _checkAccountId:v68])
                  {
                    [(DADClient *)self _performGroupExpansion:messageCopy eventDict:v5];
                    goto LABEL_13;
                  }
                }

                v15 = v68;
                [(DADClient *)self _sendInvalidAccountIDReplyToMessage:messageCopy withAccountID:v68];
                [(DADClient *)self noteBlockedClientCallChange:1];
                goto LABEL_21;
              }

              [(DADClient *)self noteBlockedClientCallChange:0];
              v56 = gDADHighAvailabilityQueue;
              v102[0] = MEMORY[0x277D85DD0];
              v102[1] = 3221225472;
              v102[2] = __30__DADClient__dispatchMessage___block_invoke_36;
              v102[3] = &unk_278F1CFE8;
              v102[4] = self;
              v103 = messageCopy;
              v104 = v5;
              v105 = v7;
              dispatch_async(v56, v102);

              v25 = v103;
            }
          }
        }
      }
    }

LABEL_29:

LABEL_13:
    v15 = v68;
LABEL_21:

    goto LABEL_22;
  }

  v5 = xpc_dictionary_get_remote_connection(messageCopy);
  xpc_connection_cancel(v5);
LABEL_22:
}

uint64_t __30__DADClient__dispatchMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _beginMonitoringFolders:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _stopMonitoringFolders:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _resumeMonitoringFolders:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _suspendMonitoringFolders:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _getCurrentPolicyKey:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _requestPolicyUpdate:v4];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:v6];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {

    return [v3 _openServerContactsSearch:v4];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v6 = *(a1 + 32);

    return [v6 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_25(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = *(a1 + 56);

    return [v3 _beginDownloadingAttachmentEvent:v4 eventDict:v5];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v7 = *(a1 + 32);

    return [v7 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_33(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = *(a1 + 56);

    return [v3 _requestCalendarAvailability:v4 eventDict:v5];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v7 = *(a1 + 32);

    return [v7 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_35(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = *(a1 + 56);

    return [v3 _requestGrantedDelegatesList:v4 eventDict:v5];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v7 = *(a1 + 32);

    return [v7 noteBlockedClientCallChange:1];
  }
}

uint64_t __30__DADClient__dispatchMessage___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkAccountId:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = *(a1 + 56);

    return [v3 _updateGrantedDelegatePermission:v4 eventDict:v5];
  }

  else
  {
    [v3 _sendInvalidAccountIDReplyToMessage:v4 withAccountID:*(a1 + 40)];
    v7 = *(a1 + 32);

    return [v7 noteBlockedClientCallChange:1];
  }
}

void __30__DADClient__dispatchMessage___block_invoke_41(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D03DF0]];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D03DE8]];
  [*(a1 + 40) _manageCalDAVServerSimulatorWithHostname:v3 action:v2];
}

- (BOOL)_checkAccessForMessage:(id)message
{
  v13 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [DADClient permissionsForMessage:messageCopy];
  v6 = 1;
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4:
        _hasContactsAccess = [(DADClient *)self _hasContactsAccess];
        goto LABEL_19;
      case 5:
        _hasContactsAccess = [(DADClient *)self _isInternalTool];
        goto LABEL_19;
      case 6:
        _hasContactsAccess = [(DADClient *)self _isAccountsDaemon];
        goto LABEL_19;
    }
  }

  else if (v5)
  {
    if (v5 == 2)
    {
      _hasContactsAccess = [(DADClient *)self _hasCalendarAccess];
      goto LABEL_19;
    }

    if (v5 == 3 && !self->_hasCalendarAccess && !self->_hasReminderAccess && ![(DADClient *)self _hasCalendarAccess])
    {
      _hasContactsAccess = [(DADClient *)self _hasReminderAccess];
LABEL_19:
      v6 = _hasContactsAccess;
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 138412290;
      v12 = messageCopy;
      _os_log_impl(&dword_248524000, v8, v9, "Unknown message: %@", &v11, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_sendAccessDeniedReplyForMessage:(id)message
{
  messageCopy = message;
  reply = xpc_dictionary_create_reply(messageCopy);
  if (reply)
  {
    xpc_dictionary_set_int64(reply, [*MEMORY[0x277D03E38] UTF8String], 6);
    conn = [(DADClient *)self conn];
    v7 = xpc_dictionary_get_remote_connection(messageCopy);

    if (conn == v7)
    {
      conn2 = [(DADClient *)self conn];
      xpc_connection_send_message(conn2, reply);
    }

    else
    {
      conn2 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(conn2, v9))
      {
        *v10 = 0;
        _os_log_impl(&dword_248524000, conn2, v9, "Remote client disconnected and reconnected while sending a message it was not authorized to send.", v10, 2u);
      }
    }
  }
}

- (BOOL)_hasCalendarAccess
{
  if (self->_hasCalendarAccess)
  {
    return 1;
  }

  xpc_connection_get_audit_token();
  result = TCCAccessCheckAuditToken() != 0;
  self->_hasCalendarAccess = result;
  return result;
}

- (BOOL)_hasReminderAccess
{
  if (self->_hasReminderAccess)
  {
    return 1;
  }

  xpc_connection_get_audit_token();
  result = TCCAccessCheckAuditToken() != 0;
  self->_hasReminderAccess = result;
  return result;
}

- (BOOL)_hasContactsAccess
{
  if (self->_hasContactsAccess)
  {
    return 1;
  }

  xpc_connection_get_audit_token();
  result = TCCAccessCheckAuditToken() != 0;
  self->_hasContactsAccess = result;
  return result;
}

- (BOOL)_isInternalTool
{
  if (self->_isInternalTool)
  {
    return 1;
  }

  else
  {
    v4 = xpc_connection_copy_entitlement_value();
    v5 = v4;
    if (v4)
    {
      value = xpc_BOOL_get_value(v4);
      self->_isInternalTool = value;
    }

    else
    {
      value = self->_isInternalTool;
    }
  }

  return value;
}

- (BOOL)_isAccountsDaemon
{
  if (self->_isAccountsDaemon)
  {
    return 1;
  }

  else
  {
    v4 = xpc_connection_copy_entitlement_value();
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x24C1D1BA0](v4) == MEMORY[0x277D864C0])
      {
        string_ptr = xpc_string_get_string_ptr(v5);
        if (string_ptr)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string_ptr];
          self->_isAccountsDaemon = [v7 isEqualToString:@"AAACCOUNTS.com.apple.accountsd"];
        }
      }
    }

    isAccountsDaemon = self->_isAccountsDaemon;
  }

  return isAccountsDaemon;
}

+ (unint64_t)permissionsForMessage:(id)message
{
  v3 = permissionsForMessage__onceToken;
  messageCopy = message;
  if (v3 != -1)
  {
    +[DADClient permissionsForMessage:];
  }

  v5 = [permissionsForMessage__permissions objectForKeyedSubscript:messageCopy];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

void __35__DADClient_permissionsForMessage___block_invoke()
{
  v27[48] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D03E50];
  v26[0] = *MEMORY[0x277D03A48];
  v26[1] = v0;
  v27[0] = &unk_285AC7028;
  v27[1] = &unk_285AC7028;
  v1 = *MEMORY[0x277D03E80];
  v26[2] = *MEMORY[0x277D03DB0];
  v26[3] = v1;
  v27[2] = &unk_285AC7028;
  v27[3] = &unk_285AC7028;
  v2 = *MEMORY[0x277D03E48];
  v26[4] = *MEMORY[0x277D03E30];
  v26[5] = v2;
  v27[4] = &unk_285AC7028;
  v27[5] = &unk_285AC7028;
  v3 = *MEMORY[0x277D03D88];
  v26[6] = *MEMORY[0x277D03BD0];
  v26[7] = v3;
  v27[6] = &unk_285AC7028;
  v27[7] = &unk_285AC7028;
  v4 = *MEMORY[0x277D03D60];
  v26[8] = *MEMORY[0x277D03D70];
  v26[9] = v4;
  v27[8] = &unk_285AC7028;
  v27[9] = &unk_285AC7028;
  v5 = *MEMORY[0x277D03CF0];
  v26[10] = *MEMORY[0x277D03D78];
  v26[11] = v5;
  v27[10] = &unk_285AC7028;
  v27[11] = &unk_285AC7040;
  v6 = *MEMORY[0x277D03D30];
  v26[12] = *MEMORY[0x277D03AE0];
  v26[13] = v6;
  v27[12] = &unk_285AC7040;
  v27[13] = &unk_285AC7058;
  v7 = *MEMORY[0x277D03D98];
  v26[14] = *MEMORY[0x277D03A10];
  v26[15] = v7;
  v27[14] = &unk_285AC7058;
  v27[15] = &unk_285AC7028;
  v8 = *MEMORY[0x277D03D40];
  v26[16] = *MEMORY[0x277D03DF8];
  v26[17] = v8;
  v27[16] = &unk_285AC7028;
  v27[17] = &unk_285AC7028;
  v9 = *MEMORY[0x277D03D28];
  v26[18] = *MEMORY[0x277D03C30];
  v26[19] = v9;
  v27[18] = &unk_285AC7058;
  v27[19] = &unk_285AC7028;
  v10 = *MEMORY[0x277D03D38];
  v26[20] = *MEMORY[0x277D03BD8];
  v26[21] = v10;
  v27[20] = &unk_285AC7070;
  v27[21] = &unk_285AC7028;
  v11 = *MEMORY[0x277D03A40];
  v26[22] = *MEMORY[0x277D03DA0];
  v26[23] = v11;
  v27[22] = &unk_285AC7028;
  v27[23] = &unk_285AC7028;
  v12 = *MEMORY[0x277D03DA8];
  v26[24] = *MEMORY[0x277D03AD0];
  v26[25] = v12;
  v27[24] = &unk_285AC7028;
  v27[25] = &unk_285AC7088;
  v13 = *MEMORY[0x277D03B80];
  v26[26] = *MEMORY[0x277D03D48];
  v26[27] = v13;
  v27[26] = &unk_285AC7088;
  v27[27] = &unk_285AC7058;
  v14 = *MEMORY[0x277D03B88];
  v26[28] = *MEMORY[0x277D03E00];
  v26[29] = v14;
  v27[28] = &unk_285AC7058;
  v27[29] = &unk_285AC7028;
  v15 = *MEMORY[0x277D03CD0];
  v26[30] = *MEMORY[0x277D03BC8];
  v26[31] = v15;
  v27[30] = &unk_285AC7028;
  v27[31] = &unk_285AC7028;
  v16 = *MEMORY[0x277D03D68];
  v26[32] = *MEMORY[0x277D03C48];
  v26[33] = v16;
  v27[32] = &unk_285AC7028;
  v27[33] = &unk_285AC7058;
  v17 = *MEMORY[0x277D03D80];
  v26[34] = *MEMORY[0x277D03AB8];
  v26[35] = v17;
  v27[34] = &unk_285AC7058;
  v27[35] = &unk_285AC7058;
  v18 = *MEMORY[0x277D03EA0];
  v26[36] = *MEMORY[0x277D03AD8];
  v26[37] = v18;
  v27[36] = &unk_285AC7058;
  v27[37] = &unk_285AC7058;
  v19 = *MEMORY[0x277D03AC0];
  v26[38] = *MEMORY[0x277D03CF8];
  v26[39] = v19;
  v27[38] = &unk_285AC7058;
  v27[39] = &unk_285AC7058;
  v20 = *MEMORY[0x277D03B10];
  v26[40] = *MEMORY[0x277D03D00];
  v26[41] = v20;
  v27[40] = &unk_285AC7058;
  v27[41] = &unk_285AC7058;
  v21 = *MEMORY[0x277D03E08];
  v26[42] = *MEMORY[0x277D03AC8];
  v26[43] = v21;
  v27[42] = &unk_285AC7058;
  v27[43] = &unk_285AC7058;
  v22 = *MEMORY[0x277D03D50];
  v26[44] = *MEMORY[0x277D03C20];
  v26[45] = v22;
  v27[44] = &unk_285AC70A0;
  v27[45] = &unk_285AC7058;
  v23 = *MEMORY[0x277D03B48];
  v26[46] = *MEMORY[0x277D03AE8];
  v26[47] = v23;
  v27[46] = &unk_285AC7058;
  v27[47] = &unk_285AC7058;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:48];
  v25 = permissionsForMessage__permissions;
  permissionsForMessage__permissions = v24;
}

- (void)reconnectWithConnection:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [v1 clientBundleID];
  [v3 handleFailureInMethod:v0 object:v1 file:@"DADClient.m" lineNumber:231 description:{@"DADClient already has a connection. Client bundle ID is: %@", v2}];
}

- (void)_openServerContactsSearch:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_openServerContactsSearch:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_beginDownloadingAttachmentEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_beginDownloadingAttachmentEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_cancelDownloadingAttachmentEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_respondToSharedCalendarEvent:eventDict:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_reportSharedCalendarAsJunkEvent:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_reportSharedCalendarAsJunkEvent:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_openServerOofSettingsRequest:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkIsOofSettingsSupported:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestCalendarAvailability:eventDict:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_requestGrantedDelegatesList:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateGrantedDelegatePermission:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateGrantedDelegatePermission:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateGrantedDelegatePermission:(uint64_t)a3 eventDict:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DADClient.m" lineNumber:2612 description:{@"Failed to unarchive granted delegate: %@", a3}];
}

- (void)_performCalendarDirectorySearch:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_performGroupExpansion:eventDict:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_performGroupExpansion:eventDict:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end