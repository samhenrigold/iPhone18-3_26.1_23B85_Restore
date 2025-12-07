@interface AppStateMonitor
+ (BOOL)hasAnyForegroundApp;
+ (id)foregroundAppKeys;
+ (id)getAppsWithStates;
+ (id)sharedInstance;
- (AppStateMonitor)init;
- (BOOL)_trackerSetHasForeground:(id)foreground;
- (BOOL)currentForegroundStateForProcessWithPid:(int)pid;
- (BOOL)hasAnyForegroundApp;
- (BOOL)identifierShouldBeIgnored:(id)ignored;
- (BOOL)rbsProcessStateToForeground:(id)foreground;
- (id)foregroundAppKeys;
- (id)getAppsWithStates;
- (id)trackerForPid:(int)pid;
- (void)_removeStateTracker:(id)tracker hadForeground:(BOOL *)foreground hasForeground:(BOOL *)hasForeground;
- (void)enable;
- (void)handleStateUpdate:(id)update forProcess:(id)process;
@end

@implementation AppStateMonitor

+ (id)getAppsWithStates
{
  sharedInstance = [self sharedInstance];
  v3 = sharedInstance;
  if (sharedInstance)
  {
    queue = [sharedInstance queue];

    if (queue)
    {
      queue = [v3 getAppsWithStates];
    }
  }

  else
  {
    queue = 0;
  }

  return queue;
}

void __36__AppStateMonitor_getAppsWithStates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    v10 = &unk_2847EF5C0;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v12 + 1) + 8 * v11) foreground])
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v10 = &unk_2847EF5D8;
        break;
      }
    }
  }

  else
  {
    v10 = &unk_2847EF5D8;
  }

  [*(a1 + 32) setObject:v10 forKey:v5];
}

- (id)getAppsWithStates
{
  v3 = self->_appBundlesMonitored;
  objc_sync_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appBundlesMonitored = self->_appBundlesMonitored;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__AppStateMonitor_getAppsWithStates__block_invoke;
  v8[3] = &unk_27898B7F0;
  v6 = v4;
  v9 = v6;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v3);

  return v6;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AppStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_10 != -1)
  {
    dispatch_once(&sharedInstance_pred_10, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

+ (id)foregroundAppKeys
{
  sharedInstance = [self sharedInstance];
  foregroundAppKeys = [sharedInstance foregroundAppKeys];

  return foregroundAppKeys;
}

- (id)foregroundAppKeys
{
  v3 = self->_appBundlesMonitored;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_appBundlesMonitored keysOfEntriesPassingTest:&__block_literal_global_8];
  objc_sync_exit(v3);

  return v4;
}

uint64_t __36__AppStateMonitor_foregroundAppKeys__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) foreground])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)hasAnyForegroundApp
{
  sharedInstance = [self sharedInstance];
  hasAnyForegroundApp = [sharedInstance hasAnyForegroundApp];

  return hasAnyForegroundApp;
}

- (BOOL)hasAnyForegroundApp
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    hasAnyForegroundApp = self->_hasAnyForegroundApp;
    v6[0] = 67109120;
    v6[1] = hasAnyForegroundApp;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "Check for hasAnyForegroundApp returns %d", v6, 8u);
  }

  return self->_hasAnyForegroundApp;
}

- (id)trackerForPid:(int)pid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  appBundlesMonitored = self->_appBundlesMonitored;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__AppStateMonitor_trackerForPid___block_invoke;
  v6[3] = &unk_27898B818;
  pidCopy = pid;
  v6[4] = &v8;
  [(NSMutableDictionary *)appBundlesMonitored enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __33__AppStateMonitor_trackerForPid___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
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
  v14 = *MEMORY[0x277D85DE8];
  v5 = self->_appBundlesMonitored;
  objc_sync_enter(v5);
  v6 = [(AppStateMonitor *)self trackerForPid:v3];
  v7 = v6;
  if (v6)
  {
    foreground = [v6 foreground];
  }

  else
  {
    foreground = 0;
  }

  objc_sync_exit(v5);
  v9 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109376;
    v11[1] = v3;
    v12 = 1024;
    v13 = foreground;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Check for pid  %d returns %d", v11, 0xEu);
  }

  return foreground;
}

- (BOOL)_trackerSetHasForeground:(id)foreground
{
  v15 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  v4 = foregroundCopy;
  if (foregroundCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = foregroundCopy;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) foreground])
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
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
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_removeStateTracker:(id)tracker hadForeground:(BOOL *)foreground hasForeground:(BOOL *)hasForeground
{
  v15 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  identifier = [trackerCopy identifier];
  if (identifier)
  {
    v10 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier];
    if (v10)
    {
      if (foreground)
      {
        *foreground = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      [v10 removeObject:trackerCopy];
      if (hasForeground)
      {
        *hasForeground = [(AppStateMonitor *)self _trackerSetHasForeground:v10];
      }

      if (![v10 count])
      {
        [(NSMutableDictionary *)self->_appBundlesMonitored removeObjectForKey:identifier];
      }
    }

    else
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = identifier;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "_removeStateTracker can't find trackers for bundle name %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = trackerCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "_removeStateTracker can't get bundle name for %@", &v13, 0xCu);
    }
  }
}

- (BOOL)identifierShouldBeIgnored:(id)ignored
{
  ignoredCopy = ignored;
  v4 = ignoredCopy;
  if (identifierShouldBeIgnored__onceToken != -1)
  {
    [AppStateMonitor identifierShouldBeIgnored:];
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

void __45__AppStateMonitor_identifierShouldBeIgnored___block_invoke()
{
  v0 = identifierShouldBeIgnored__kIdentifiersToIgnore;
  identifierShouldBeIgnored__kIdentifiersToIgnore = &unk_2847EEB38;
}

- (void)handleStateUpdate:(id)update forProcess:(id)process
{
  v81 = *MEMORY[0x277D85DE8];
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

  if ([(AppStateMonitor *)self identifierShouldBeIgnored:embeddedApplicationIdentifier])
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v80 = embeddedApplicationIdentifier;
      *&v80[8] = 2112;
      *&v80[10] = updateCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "%@ incorrectly identified as app with update %@, ignoring", buf, 0x16u);
    }

LABEL_57:

    goto LABEL_58;
  }

  if (embeddedApplicationIdentifier)
  {
    v74 = 0;
    v12 = [processCopy pid];
    v69 = pid_to_uuid(v12);
    state = [updateCopy state];
    v14 = [(AppStateMonitor *)self rbsProcessStateToForeground:state];

    obj = self->_appBundlesMonitored;
    objc_sync_enter(obj);
    hasAnyForegroundApp = self->_hasAnyForegroundApp;
    v72 = [(AppStateMonitor *)self trackerForPid:v12];
    state2 = [updateCopy state];
    if ([state2 taskState] == 1)
    {
    }

    else
    {
      state3 = [updateCopy state];
      taskState = [state3 taskState];

      if (taskState != 3)
      {
        state4 = [updateCopy state];
        taskState2 = [state4 taskState];

        if (!taskState2)
        {
          v59 = procStateLogHandle;
          if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v80 = v72;
            _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_ERROR, "Process state is unknown %@", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if (v72)
        {
          uuid = [v72 uuid];
          v33 = [uuid isEqual:v69];

          if ((v33 & 1) == 0)
          {
            v60 = procStateLogHandle;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              uuid2 = [v72 uuid];
              *buf = 67109634;
              *v80 = v12;
              *&v80[4] = 2112;
              *&v80[6] = v69;
              *&v80[14] = 2112;
              *&v80[16] = uuid2;
              _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "State change notification for pid %d has uuid %@, not matching previous %@", buf, 0x1Cu);
            }

            goto LABEL_24;
          }

          identifier = [v72 identifier];
          v35 = [identifier isEqualToString:embeddedApplicationIdentifier];

          if (v35)
          {
            identifier2 = [v72 identifier];

            v37 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:identifier2];
            HIBYTE(v74) = [(AppStateMonitor *)self _trackerSetHasForeground:v37];
            [v72 setForeground:v14];
            LOBYTE(v74) = v14;

            v71 = 0;
            v27 = 0;
            embeddedApplicationIdentifier = identifier2;
            goto LABEL_25;
          }

          identifier3 = [v72 identifier];
          v63 = procStateLogHandle;
          if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *v80 = v12;
            *&v80[4] = 2112;
            *&v80[6] = embeddedApplicationIdentifier;
            *&v80[14] = 2112;
            *&v80[16] = identifier3;
            _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_DEFAULT, "State change notification for pid %d now has bundle %@, not matching previous %@", buf, 0x1Cu);
          }

          buf[0] = 0;
          v73 = 0;
          [(AppStateMonitor *)self _removeStateTracker:v72 hadForeground:buf hasForeground:&v73];
          if (buf[0] == v73 || !buf[0])
          {
            v71 = 0;
            v27 = 0;
          }

          else
          {
            v27 = identifier3;
            v71 = v69;
          }
        }

        else
        {
          v71 = 0;
          v27 = 0;
        }

        v64 = objc_alloc_init(AppStateTracker);

        if (v64)
        {
          [(AppStateTracker *)v64 setIdentifier:embeddedApplicationIdentifier];
          [(AppStateTracker *)v64 setUuid:v69];
          [(AppStateTracker *)v64 setPid:v12];
          [(AppStateTracker *)v64 setForeground:v14];
          v65 = [(NSMutableDictionary *)self->_appBundlesMonitored objectForKeyedSubscript:embeddedApplicationIdentifier];
          if (v65)
          {
            HIBYTE(v74) = [(AppStateMonitor *)self _trackerSetHasForeground:v65];
          }

          else
          {
            v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
            [(NSMutableDictionary *)self->_appBundlesMonitored setObject:v65 forKey:embeddedApplicationIdentifier];
          }

          [v65 addObject:v64];
          LOBYTE(v74) = [(AppStateMonitor *)self _trackerSetHasForeground:v65];

          v72 = v64;
        }

        else
        {
          v72 = 0;
        }

        goto LABEL_25;
      }
    }

    if (v72)
    {
      identifier4 = [v72 identifier];

      [(AppStateMonitor *)self _removeStateTracker:v72 hadForeground:&v74 + 1 hasForeground:&v74];
      v24 = procStateLogHandle;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        state5 = [updateCopy state];
        taskState3 = [state5 taskState];
        *buf = 67109634;
        *v80 = taskState3;
        *&v80[4] = 1024;
        *&v80[6] = v12;
        *&v80[10] = 2112;
        *&v80[12] = identifier4;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Removed state tracker with taskState %u, pid %d, for %@", buf, 0x18u);
      }

      v71 = 0;
      v27 = 0;
      embeddedApplicationIdentifier = identifier4;
LABEL_25:
      v28 = v74;
      if (HIBYTE(v74) == v74)
      {
        v70 = 0;
      }

      else
      {
        v29 = embeddedApplicationIdentifier;
        if (v28)
        {
          v70 = v69;
          self->_hasAnyForegroundApp = 1;
LABEL_38:
          v66 = self->_hasAnyForegroundApp;
          v40 = +[AppStateMonitor getAppsWithStates];
          if (([(NSMutableDictionary *)self->_appsWithStates isEqualToDictionary:v40]& 1) == 0)
          {
            v41 = [v40 mutableCopy];
            appsWithStates = self->_appsWithStates;
            self->_appsWithStates = v41;

            v43 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              v44 = self->_appsWithStates;
              *buf = 138543362;
              *v80 = v44;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_INFO, "Report apps state change: %{public}@", buf, 0xCu);
            }

            v45 = self->_appsWithStates;
            v77 = @"kAppStateKeyAppsActivityDetail";
            v78 = v45;
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotificationName:@"kAppStateStatsNotificationAppsWithStatesChanged" object:self userInfo:v46];
          }

          objc_sync_exit(obj);
          if (v29)
          {
            v48 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v80 = v29;
              _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_INFO, "Report state change to foreground for %@", buf, 0xCu);
            }

            v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v50 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [v49 setObject:v50 forKeyedSubscript:@"kAppStateKeyForegroundActivityState"];

            [v49 setObject:v29 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
            if (v70)
            {
              [v49 setObject:v70 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleUUID"];
            }

            defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter2 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v49];
          }

          if (v27)
          {
            v52 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v80 = v27;
              _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "Report state change to background for %@", buf, 0xCu);
            }

            v53 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v54 = [MEMORY[0x277CCABB0] numberWithBool:0];
            [v53 setObject:v54 forKeyedSubscript:@"kAppStateKeyForegroundActivityState"];

            [v53 setObject:v27 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
            if (v71)
            {
              [v53 setObject:v71 forKeyedSubscript:@"kAppStateKeyForegroundActivityBundleUUID"];
            }

            defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter3 postNotificationName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:self userInfo:v53];
          }

          if (hasAnyForegroundApp != v66)
          {
            v75 = @"kAppStateKeyForegroundActivityState";
            v56 = [MEMORY[0x277CCABB0] numberWithBool:?];
            v76 = v56;
            v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];

            defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter4 postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v57];
          }

          goto LABEL_57;
        }

        v38 = v69;
        foregroundAppKeys = [(AppStateMonitor *)self foregroundAppKeys];
        if (![foregroundAppKeys count])
        {
          self->_hasAnyForegroundApp = 0;
        }

        v70 = 0;
        v71 = v38;
        v27 = v29;
      }

      v29 = 0;
      goto LABEL_38;
    }

    v72 = 0;
LABEL_24:
    v71 = 0;
    v27 = 0;
    goto LABEL_25;
  }

  v16 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *v80 = updateCopy;
    *&v80[8] = 2112;
    *&v80[10] = processCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "handleStateUpdate unable to determine app identifier, update is %@ process %@", buf, 0x16u);
  }

  embeddedApplicationIdentifier = +[SystemSettingsRelay defaultRelay];
  if (![embeddedApplicationIdentifier autoBugCaptureEnabled])
  {
    goto LABEL_57;
  }

  v17 = +[SystemProperties sharedInstance];
  internalBuild = [v17 internalBuild];

  if (internalBuild)
  {
    v19 = objc_alloc_init(MEMORY[0x277D6AFC8]);
    embeddedApplicationIdentifier = v19;
    if (v19)
    {
      v20 = [v19 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"AppState handling" subtypeContext:@"Unable to retrieve identifier" detectedProcess:@"symptomsd" triggerThresholdValues:0];
      [embeddedApplicationIdentifier snapshotWithSignature:v20 duration:0 events:0 payload:0 actions:&__block_literal_global_142 reply:0.0];
    }

    goto LABEL_57;
  }

LABEL_58:
}

void __48__AppStateMonitor_handleStateUpdate_forProcess___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "handleStateUpdate ABC case for unable to retrieve identifier has response: %@", &v4, 0xCu);
  }
}

- (BOOL)rbsProcessStateToForeground:(id)foreground
{
  v16 = *MEMORY[0x277D85DE8];
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

  v8 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    taskState2 = [foregroundCopy taskState];
    process = [foregroundCopy process];
    v13[0] = 67109376;
    v13[1] = taskState2;
    v14 = 1024;
    v15 = [process pid];
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "AppStateMonitor RBS taskState %u, pid %d", v13, 0xEu);
  }

  return v7;
}

- (AppStateMonitor)init
{
  v8.receiver = self;
  v8.super_class = AppStateMonitor;
  v2 = [(AppStateMonitor *)&v8 init];
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

      return 0;
    }
  }

  return v2;
}

- (void)enable
{
  p_queue = &self->_queue;
  if (!self->_queue)
  {
    v4 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "AppStateMonitor enable with no queue set, use default queue", v8, 2u);
    }

    objc_storeStrong(p_queue, MEMORY[0x277D85CD0]);
  }

  v5 = [[AppEventListener alloc] initWithQueue:self->_queue];
  appEventListener = self->_appEventListener;
  self->_appEventListener = v5;

  v7 = self->_appEventListener;
  if (v7)
  {
    [(AppEventListener *)v7 setAppStateDelegate:self];
  }
}

uint64_t __33__AppStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_10;
  sharedInstance_sharedInstance_10 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end