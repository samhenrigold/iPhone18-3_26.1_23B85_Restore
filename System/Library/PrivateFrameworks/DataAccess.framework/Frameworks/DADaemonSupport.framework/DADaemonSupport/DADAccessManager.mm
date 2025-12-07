@interface DADAccessManager
+ (id)sharedManager;
- (BOOL)isAccountID:(id)d folderID:(id)iD watchedByClientBesides:(id)besides;
- (DADAccessManager)init;
- (id)_init;
- (id)stateString;
- (void)_setupServerConnection;
- (void)addPersistentClientWithAccountID:(id)d clientID:(id)iD watchedIDs:(id)ds;
- (void)dealloc;
- (void)removeClient:(id)client;
@end

@implementation DADAccessManager

- (void)_setupServerConnection
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *MEMORY[0x277D03988];
  if (os_log_type_enabled(v3, *MEMORY[0x277D03988]))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_248524000, v3, v4, "Couldn't checkin with our port. Aborting.\nIf running from the command line make sure you don't already have %@ registered with launchd.", &v5, 0xCu);
  }

  abort();
}

void __42__DADAccessManager__setupServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C1D1BA0]() != MEMORY[0x277D86450])
  {
    goto LABEL_52;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained isDisabled];

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v6, v7, "DADAccessManager is Disabled. Cancelling Connection", buf, 2u);
    }

    xpc_connection_cancel(v3);
    goto LABEL_52;
  }

  v8 = xpc_connection_copy_entitlement_value();
  v45 = v8;
  v48 = a1;
  if (v8)
  {
    v9 = v8;
    if (MEMORY[0x24C1D1BA0]() == MEMORY[0x277D864C0])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v9)];
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_248524000, v12, v13, "DADAccessManager event %@ clientName %@ is Entitled", buf, 0x16u);
      }

      v47 = 0;
      goto LABEL_25;
    }

    v47 = 0;
  }

  else
  {
    pid = xpc_connection_get_pid(v3);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    memset(buf, 0, sizeof(buf));
    if (proc_name(pid, buf, 0x100u))
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
    }

    else
    {
      v47 = 0;
    }

    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *v54 = 138412546;
      v55 = v3;
      v56 = 2112;
      v57 = v47;
      _os_log_impl(&dword_248524000, v14, v15, "DADAccessManager event %@ clientName %@ is NOT Entitled", v54, 0x16u);
    }

    v16 = DALoggingwithCategory();
    if (os_log_type_enabled(v16, v15))
    {
      *v54 = 138412546;
      v55 = v3;
      v56 = 2112;
      v57 = v47;
      _os_log_impl(&dword_248524000, v16, v15, "DADAccessManager Received connection event %@ for clientName %@", v54, 0x16u);
    }

    v17 = *(a1 + 32);
    objc_sync_enter(v17);
    v18 = DALoggingwithCategory();
    if (os_log_type_enabled(v18, v15))
    {
      v19 = [*(a1 + 32) clients];
      v20 = [v19 count];
      v21 = [*(a1 + 32) clients];
      *v54 = 134218242;
      v55 = v20;
      v56 = 2112;
      v57 = v21;
      _os_log_impl(&dword_248524000, v18, v15, "DADAccessManager number of Current Clients %lu and they are %@", v54, 0x16u);
    }

    objc_sync_exit(v17);
    v22 = DALoggingwithCategory();
    if (os_log_type_enabled(v22, v15))
    {
      *v54 = 138412290;
      v55 = v47;
      _os_log_impl(&dword_248524000, v22, v15, "Could not get client ID through xpc_connection_copy_entitlement_value(), the client name is: %@", v54, 0xCu);
    }
  }

  v11 = 0;
LABEL_25:
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!v11)
  {
    goto LABEL_40;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = [*(a1 + 32) clients];
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v24)
  {
    goto LABEL_39;
  }

  v25 = *v50;
  v26 = *(MEMORY[0x277D03988] + 3);
  while (2)
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v50 != v25)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v49 + 1) + 8 * i);
      v29 = [v28 clientBundleID];
      v30 = [v29 isEqualToString:v11];

      if (v30)
      {
        v31 = [v28 rawConnection];
        v32 = v31 == 0;

        if (v32)
        {
          v40 = DALoggingwithCategory();
          v41 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v40, v41))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_248524000, v40, v41, "Found an existing DADClient with the same bundle id and with NULL xpc connection, using this DADClient and reconnecting. The client ID is: 1%@", buf, 0xCu);
          }
        }

        else
        {
          v33 = [v28 rawConnection];
          v34 = v33 == v3;

          if (v34)
          {
            v35 = DALoggingwithCategory();
            if (os_log_type_enabled(v35, v26))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_248524000, v35, v26, "Found an existing DADClient with the same bundle id with same xpc connection. The client ID is: %@", buf, 0xCu);
            }

            continue;
          }

          v42 = DALoggingwithCategory();
          v43 = *(MEMORY[0x277D03988] + 4);
          if (os_log_type_enabled(v42, v43))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_248524000, v42, v43, "Found an existing DADClient with the same bundle id and non-NULL xpc connection. Clean it up then reuse this DADClient and reconnect. The client ID is: %@", buf, 0xCu);
          }

          [v28 persistentClientCleanup];
        }

        [v28 reconnectWithConnection:v3];

        v38 = DALoggingwithCategory();
        v44 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v38, v44))
        {
          *buf = 138412546;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&dword_248524000, v38, v44, "DADAccessManager No New Clients For Event %@ clientName %@", buf, 0x16u);
        }

        goto LABEL_51;
      }
    }

    v24 = [v23 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_39:

LABEL_40:
  v36 = DALoggingwithCategory();
  v37 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v36, v37))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v47;
    _os_log_impl(&dword_248524000, v36, v37, "DADAccessManager Adding New Client for %@ for clientName %@", buf, 0x16u);
  }

  v38 = [*(v48 + 32) clients];
  v39 = [[DADClient alloc] initWithConnection:v3 clientID:v11];
  [v38 addObject:v39];

LABEL_51:
  objc_sync_exit(obj);

LABEL_52:
}

- (DADAccessManager)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADAccessManager.  Use +sharedManager instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "DADAccessManager Initializing", buf, 2u);
  }

  v8.receiver = self;
  v8.super_class = DADAccessManager;
  v5 = [(DADAccessManager *)&v8 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(DADAccessManager *)v5 setClients:v6];

    [(DADAccessManager *)v5 _setupServerConnection];
  }

  return v5;
}

+ (id)sharedManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!gManager)
  {
    _init = [[selfCopy alloc] _init];
    v4 = gManager;
    gManager = _init;
  }

  objc_sync_exit(selfCopy);

  v5 = gManager;

  return v5;
}

- (void)dealloc
{
  v3 = gManager;
  gManager = 0;

  v4.receiver = self;
  v4.super_class = DADAccessManager;
  [(DADAccessManager *)&v4 dealloc];
}

- (void)removeClient:(id)client
{
  v14 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    clients = [(DADAccessManager *)selfCopy clients];
    v10 = 138412546;
    v11 = clientCopy;
    v12 = 2112;
    v13 = clients;
    _os_log_impl(&dword_248524000, v6, v7, "DADAccessManager REMOVING client %@ from Current Clients %@", &v10, 0x16u);
  }

  if (clientCopy)
  {
    clients2 = [(DADAccessManager *)selfCopy clients];
    [clients2 removeObject:clientCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addPersistentClientWithAccountID:(id)d clientID:(id)iD watchedIDs:(id)ds
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (iDCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    clients = [(DADAccessManager *)selfCopy clients];
    v13 = [clients countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(clients);
          }

          clientBundleID = [*(*(&v23 + 1) + 8 * i) clientBundleID];
          v17 = [clientBundleID isEqualToString:iDCopy];

          if (v17)
          {
            v21 = DALoggingwithCategory();
            v22 = *(MEMORY[0x277D03988] + 4);
            if (os_log_type_enabled(v21, v22))
            {
              *buf = 138412290;
              v28 = iDCopy;
              _os_log_impl(&dword_248524000, v21, v22, "Found an existing DADClient with the same bundle id, not changing the folder list. The client ID is: %@", buf, 0xCu);
            }

            v20 = 0;
            goto LABEL_17;
          }
        }

        v13 = [clients countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138412290;
    v28 = iDCopy;
    _os_log_impl(&dword_248524000, v18, v19, "Add DADClient for client %@", buf, 0xCu);
  }

  v20 = [[DADClient alloc] initWithClientID:iDCopy];
  clients = [(DADAccessManager *)selfCopy clients];
  [clients addObject:v20];
LABEL_17:

  objc_sync_exit(selfCopy);
  if (v20)
  {
    [(DADClient *)v20 beginMonitoringPersistentFolders:dsCopy forAccount:dCopy];
  }
}

- (BOOL)isAccountID:(id)d folderID:(id)iD watchedByClientBesides:(id)besides
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  besidesCopy = besides;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = selfCopy;
  clients = [(DADAccessManager *)selfCopy clients];
  v12 = [clients countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(clients);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        clientUniqueID = [v15 clientUniqueID];
        clientUniqueID2 = [besidesCopy clientUniqueID];
        v18 = [clientUniqueID isEqualToString:clientUniqueID2];

        if (v18 & 1) == 0 && ([v15 isMonitoringAccountID:dCopy folderID:iDCopy])
        {
          LOBYTE(v12) = 1;
          goto LABEL_12;
        }
      }

      v12 = [clients countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  objc_sync_exit(obj);
  return v12;
}

- (id)stateString
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clients = [(DADAccessManager *)selfCopy clients];
  v6 = [clients copy];

  objc_sync_exit(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        outstandingStopMonitoringAgentRequests = [v11 outstandingStopMonitoringAgentRequests];
        if (outstandingStopMonitoringAgentRequests)
        {
          clientName = [v11 clientName];
          [v3 appendFormat:@"Client %@ (%i) has %lu outstanding stop requests\n", clientName, objc_msgSend(v11, "clientPID"), outstandingStopMonitoringAgentRequests];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

@end