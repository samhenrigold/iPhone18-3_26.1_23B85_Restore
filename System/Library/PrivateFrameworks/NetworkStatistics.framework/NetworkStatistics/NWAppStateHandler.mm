@interface NWAppStateHandler
- (BOOL)currentForegroundStateForProcessWithPid:(int)pid;
- (BOOL)identifierShouldBeIgnored:(id)ignored;
- (BOOL)rbsProcessStateToForeground:(id)foreground;
- (NWAppStateHandler)init;
- (id)trackerForPid:(int)pid;
- (void)_removeStateTracker:(id)tracker;
- (void)handleStateUpdate:(id)update forProcess:(id)process;
@end

@implementation NWAppStateHandler

- (id)trackerForPid:(int)pid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  appBundlesMonitored = self->_appBundlesMonitored;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__NWAppStateHandler_trackerForPid___block_invoke;
  v6[3] = &unk_27996DB48;
  pidCopy = pid;
  v6[4] = &v8;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __35__NWAppStateHandler_trackerForPid___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 pid] == *(a1 + 40))
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)currentForegroundStateForProcessWithPid:(int)pid
{
  v3 = *&pid;
  v5 = self->_appBundlesMonitored;
  objc_sync_enter(v5);
  v6 = [(NWAppStateHandler *)self trackerForPid:v3];
  LOBYTE(v3) = v6 != 0;

  objc_sync_exit(v5);
  return v3;
}

- (void)_removeStateTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v9 = trackerCopy;
  identifier = [trackerCopy identifier];
  if (!identifier)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v6 = identifier;
  v7 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier];
  if (!v7)
  {
    [NWAppStateHandler _removeStateTracker:];
  }

  v8 = v7;
  [v7 removeObject:v9];
  if (![v8 count])
  {
    [(NSMutableDictionary *)self->_appBundlesMonitored removeObjectForKey:v6];
  }
}

- (BOOL)identifierShouldBeIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v4 = ignoredCopy;
  if (identifierShouldBeIgnored__onceToken != -1)
  {
    [NWAppStateHandler identifierShouldBeIgnored:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!ignoredCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [identifierShouldBeIgnored__kIdentifiersToIgnore containsObject:v4];
LABEL_6:

  return v5;
}

void __47__NWAppStateHandler_identifierShouldBeIgnored___block_invoke()
{
  v0 = identifierShouldBeIgnored__kIdentifiersToIgnore;
  identifierShouldBeIgnored__kIdentifiersToIgnore = &unk_286D3E570;
}

- (void)handleStateUpdate:(id)update forProcess:(id)process
{
  v38 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  processCopy = process;
  identity = [processCopy identity];
  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
  if (!embeddedApplicationIdentifier)
  {
    embeddedApplicationIdentifier = [identity xpcServiceIdentifier];
    if (!embeddedApplicationIdentifier)
    {
      if (![processCopy hasConsistentLaunchdJob] || (objc_msgSend(processCopy, "consistentJobLabel"), (embeddedApplicationIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
      {
        bundle = [processCopy bundle];
        embeddedApplicationIdentifier = [bundle identifier];
      }
    }
  }

  v11 = [(NWAppStateHandler *)self identifierShouldBeIgnored:embeddedApplicationIdentifier];
  if ((v11 & 1) == 0)
  {
    if (!embeddedApplicationIdentifier)
    {
      v30 = NStatGetLog(v11);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v35 = processCopy;
        _os_log_impl(&dword_25BA3A000, v30, OS_LOG_TYPE_ERROR, "handleStateUpdate no identifier from process %@", buf, 0xCu);
      }

      v13 = NStatGetLog(v31);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v35 = updateCopy;
        _os_log_impl(&dword_25BA3A000, v13, OS_LOG_TYPE_ERROR, "handleStateUpdate failed identifier lookup was from update %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v12 = [processCopy pid];
    v13 = pid_to_uuid(v12);
    state = [updateCopy state];
    v15 = [(NWAppStateHandler *)self rbsProcessStateToForeground:state];

    obj = self->_appBundlesMonitored;
    objc_sync_enter(obj);
    v16 = [(NWAppStateHandler *)self trackerForPid:v12];
    v17 = v16;
    if (!v15)
    {
      if (v16)
      {
        [(NWAppStateHandler *)self _removeStateTracker:v16];
      }

      goto LABEL_32;
    }

    state2 = [updateCopy state];
    taskState = [state2 taskState];

    if (taskState)
    {
      if (!v17)
      {
LABEL_16:
        v28 = objc_alloc_init(NWAppStateTracker);

        if (!v28)
        {
          v17 = 0;
          goto LABEL_32;
        }

        [(NWAppStateTracker *)v28 setIdentifier:embeddedApplicationIdentifier];
        [(NWAppStateTracker *)v28 setUuid:v13];
        [(NWAppStateTracker *)v28 setPid:v12];
        v29 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:embeddedApplicationIdentifier];
        if (!v29)
        {
          v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [(NSMutableDictionary *)self->_appBundlesMonitored setObject:v29 forKey:embeddedApplicationIdentifier];
        }

        [v29 addObject:v28];
        goto LABEL_31;
      }

      uuid = [(NWAppStateTracker *)v17 uuid];
      v22 = [uuid isEqual:v13];

      if (v22)
      {
        identifier = [(NWAppStateTracker *)v17 identifier];
        v25 = [identifier isEqualToString:embeddedApplicationIdentifier];

        if (v25)
        {
LABEL_32:

          objc_sync_exit(obj);
LABEL_33:

          goto LABEL_34;
        }

        identifier2 = [(NWAppStateTracker *)v17 identifier];
        v27 = NStatGetLog(identifier2);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v35 = v12;
          *&v35[4] = 2112;
          *&v35[6] = embeddedApplicationIdentifier;
          v36 = 2112;
          v37 = identifier2;
          _os_log_impl(&dword_25BA3A000, v27, OS_LOG_TYPE_DEFAULT, "State change notification for pid %d now has bundle %@, not matching previous %@", buf, 0x1Cu);
        }

        [(NWAppStateHandler *)self _removeStateTracker:v17];
        goto LABEL_16;
      }

      v29 = NStatGetLog(v23);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(NWAppStateTracker *)v17 uuid];
        *buf = 67109634;
        *v35 = v12;
        *&v35[4] = 2112;
        *&v35[6] = v13;
        v36 = 2112;
        v37 = uuid2;
        _os_log_impl(&dword_25BA3A000, v29, OS_LOG_TYPE_ERROR, "State change notification for pid %d has uuid %@, not matching previous %@", buf, 0x1Cu);
      }
    }

    else
    {
      v29 = NStatGetLog(v20);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v35 = v17;
        _os_log_impl(&dword_25BA3A000, v29, OS_LOG_TYPE_ERROR, "Process state is unknown %@", buf, 0xCu);
      }
    }

    v28 = v17;
LABEL_31:

    v17 = v28;
    goto LABEL_32;
  }

LABEL_34:
}

- (BOOL)rbsProcessStateToForeground:(id)foreground
{
  foregroundCopy = foreground;
  taskState = [foregroundCopy taskState];
  if (taskState == 4 || taskState == 2)
  {
    endowmentNamespaces = [foregroundCopy endowmentNamespaces];
    v7 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NWAppStateHandler)init
{
  v8.receiver = self;
  v8.super_class = NWAppStateHandler;
  v2 = [(NWAppStateHandler *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appBundlesMonitored = v2->_appBundlesMonitored;
    v2->_appBundlesMonitored = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appsWithStates = v2->_appsWithStates;
    v2->_appsWithStates = v5;

    if (!v2->_appBundlesMonitored || !v2->_appsWithStates)
    {

      v2 = 0;
    }
  }

  objc_storeStrong(&sharedInstance, v2);
  return v2;
}

@end