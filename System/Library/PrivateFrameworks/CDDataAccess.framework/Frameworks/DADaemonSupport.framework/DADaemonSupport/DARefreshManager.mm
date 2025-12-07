@interface DARefreshManager
+ (id)sharedManager;
- (BOOL)_wrapperIsSuspended:(id)suspended;
- (DARefreshManager)init;
- (id)_apsEnvStringForDAEnvString:(id)string;
- (id)_connectionForEnv:(id)env;
- (id)_enabledTopicsForWrapper:(id)wrapper;
- (id)_portNameForEnvironmentName:(id)name;
- (id)_refreshWrapperForDelegate:(id)delegate;
- (id)_suspendedTopicsForWrapper:(id)wrapper;
- (id)pushTokenForEnvironment:(id)environment;
- (id)stateString;
- (int)_currentTruePCStyleForDelegate:(id)delegate;
- (int)_overriddenPCStyleForWrapper:(id)wrapper;
- (void)_dailyRefreshActivityFired;
- (void)_pushRegistrationForDelegateFailed:(id)failed;
- (void)_registerAPSTopics;
- (void)_registerAPSTopicsForDelegates:(id)delegates withConnection:(id)connection;
- (void)_resumeTopicsForSuspendedDelegate:(id)delegate;
- (void)_suspendTopicsForDelegate:(id)delegate;
- (void)_tearDownAllAPSConnectionsUnregisteringTopics:(BOOL)topics;
- (void)_unregisterTopicLocked:(id)locked forDelegate:(id)delegate inEnvironment:(id)environment;
- (void)_unregisterWrapper:(id)wrapper forTopic:(id)topic inTopicDictionary:(id)dictionary;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)delegateDidCompleteRefresh:(id)refresh;
- (void)endDailyRefreshActivityForWrapper:(id)wrapper;
- (void)establishAllApsConnections;
- (void)pushPreferenceDidChange;
- (void)registerDelegate:(id)delegate;
- (void)registerTopic:(id)topic forDelegate:(id)delegate inEnvironment:(id)environment;
- (void)retryRefreshForDelegate:(id)delegate withCollections:(id)collections after:(double)after originalRefreshReason:(int)reason;
- (void)startDailyRefreshActivityForWrapper:(id)wrapper;
- (void)unregisterDelegate:(id)delegate;
- (void)unregisterTopic:(id)topic forDelegate:(id)delegate inEnvironment:(id)environment;
@end

@implementation DARefreshManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[DARefreshManager sharedManager];
  }

  v3 = sSharedManager;

  return v3;
}

uint64_t __33__DARefreshManager_sharedManager__block_invoke()
{
  sSharedManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DARefreshManager)init
{
  v15.receiver = self;
  v15.super_class = DARefreshManager;
  v2 = [(DARefreshManager *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    enabledTopicWrappersByEnv = v2->_enabledTopicWrappersByEnv;
    v2->_enabledTopicWrappersByEnv = v3;

    v5 = objc_opt_new();
    suspendedTopicWrappersByEnv = v2->_suspendedTopicWrappersByEnv;
    v2->_suspendedTopicWrappersByEnv = v5;

    v7 = objc_opt_new();
    wrappers = v2->_wrappers;
    v2->_wrappers = v7;

    v9 = objc_opt_new();
    wrappersForDailyRefresh = v2->_wrappersForDailyRefresh;
    v2->_wrappersForDailyRefresh = v9;

    *&v2->_persistAPSAfterShutdown = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.dataaccessd.darefresh.pcqueue", v11);
    pcQueue = v2->_pcQueue;
    v2->_pcQueue = v12;
  }

  return v2;
}

- (void)dealloc
{
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__DARefreshManager_dealloc__block_invoke;
  block[3] = &unk_278D52C00;
  block[4] = self;
  dispatch_sync(pcQueue, block);
  v4.receiver = self;
  v4.super_class = DARefreshManager;
  [(DARefreshManager *)&v4 dealloc];
}

void __27__DARefreshManager_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _tearDownAllAPSConnectionsUnregisteringTopics:0];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setDelegate:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)stateString
{
  if ([(NSMutableSet *)self->_wrappers count])
  {
    string = [MEMORY[0x277CCAB68] string];
    pcQueue = self->_pcQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__DARefreshManager_stateString__block_invoke;
    v9[3] = &unk_278D52AB0;
    v9[4] = self;
    v5 = string;
    v10 = v5;
    dispatch_sync(pcQueue, v9);
    v6 = v10;
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __31__DARefreshManager_stateString__block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) mutableCopy];
  if ([*(*(a1 + 32) + 16) count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager enabled wrappers:\n"];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = [*(*(a1 + 32) + 16) allValues];
    v36 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v36)
    {
      v34 = *v71;
      do
      {
        v3 = 0;
        do
        {
          if (*v71 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v3;
          v4 = *(*(&v70 + 1) + 8 * v3);
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v44 = v4;
          v40 = [v4 allKeys];
          v5 = [v40 countByEnumeratingWithState:&v66 objects:v79 count:16];
          if (v5)
          {
            v6 = v5;
            v42 = *v67;
            do
            {
              for (i = 0; i != v6; ++i)
              {
                if (*v67 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v8 = *(*(&v66 + 1) + 8 * i);
                [*(a1 + 40) appendFormat:@"Topic %@ {\n", v8];
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v9 = [v44 objectForKeyedSubscript:v8];
                v10 = [v9 countByEnumeratingWithState:&v62 objects:v78 count:16];
                if (v10)
                {
                  v11 = v10;
                  v12 = *v63;
                  do
                  {
                    for (j = 0; j != v11; ++j)
                    {
                      if (*v63 != v12)
                      {
                        objc_enumerationMutation(v9);
                      }

                      v14 = *(*(&v62 + 1) + 8 * j);
                      [v2 removeObject:v14];
                      [*(a1 + 40) appendFormat:@"\t%@\n", v14];
                    }

                    v11 = [v9 countByEnumeratingWithState:&v62 objects:v78 count:16];
                  }

                  while (v11);
                }

                [*(a1 + 40) appendString:@"}\n"];
              }

              v6 = [v40 countByEnumeratingWithState:&v66 objects:v79 count:16];
            }

            while (v6);
          }

          v3 = v38 + 1;
        }

        while (v38 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v36);
    }
  }

  if ([*(*(a1 + 32) + 24) count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager suspended wrappers:\n"];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obja = [*(*(a1 + 32) + 24) allValues];
    v37 = [obja countByEnumeratingWithState:&v58 objects:v77 count:16];
    if (v37)
    {
      v35 = *v59;
      do
      {
        v15 = 0;
        do
        {
          if (*v59 != v35)
          {
            objc_enumerationMutation(obja);
          }

          v39 = v15;
          v16 = *(*(&v58 + 1) + 8 * v15);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v45 = v16;
          v41 = [v16 allKeys];
          v17 = [v41 countByEnumeratingWithState:&v54 objects:v76 count:16];
          if (v17)
          {
            v18 = v17;
            v43 = *v55;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v55 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                v20 = *(*(&v54 + 1) + 8 * k);
                [*(a1 + 40) appendFormat:@"Topic %@ {\n", v20];
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v21 = [v45 objectForKeyedSubscript:v20];
                v22 = [v21 countByEnumeratingWithState:&v50 objects:v75 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v51;
                  do
                  {
                    for (m = 0; m != v23; ++m)
                    {
                      if (*v51 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v26 = *(*(&v50 + 1) + 8 * m);
                      [v2 removeObject:v26];
                      [*(a1 + 40) appendFormat:@"\t%@\n", v26];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v50 objects:v75 count:16];
                  }

                  while (v23);
                }

                [*(a1 + 40) appendString:@"}\n"];
              }

              v18 = [v41 countByEnumeratingWithState:&v54 objects:v76 count:16];
            }

            while (v18);
          }

          v15 = v39 + 1;
        }

        while (v39 + 1 != v37);
        v37 = [obja countByEnumeratingWithState:&v58 objects:v77 count:16];
      }

      while (v37);
    }
  }

  if ([v2 count])
  {
    [*(a1 + 40) appendString:@"DARefreshManager wrappers:\n"];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v27 = v2;
    v28 = [v27 countByEnumeratingWithState:&v46 objects:v74 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v47;
      do
      {
        for (n = 0; n != v29; ++n)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(a1 + 40) appendFormat:@"\t%@\n", *(*(&v46 + 1) + 8 * n)];
        }

        v29 = [v27 countByEnumeratingWithState:&v46 objects:v74 count:16];
      }

      while (v29);
    }
  }
}

- (void)_tearDownAllAPSConnectionsUnregisteringTopics:(BOOL)topics
{
  topicsCopy = topics;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_apsConnections allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setDelegate:0];
        if (topicsCopy)
        {
          [v11 setEnabledTopics:v9];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_apsConnections removeAllObjects];
  [(NSTimer *)self->_tokenRegistrationTimer invalidate];
  tokenRegistrationTimer = self->_tokenRegistrationTimer;
  self->_tokenRegistrationTimer = 0;
}

- (void)establishAllApsConnections
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DARefreshManager.m" lineNumber:169 description:{@"Couldn't come up with an env string for DAEnvString %@", a3}];
}

- (id)_apsEnvStringForDAEnvString:(id)string
{
  stringCopy = string;
  v4 = *MEMORY[0x277CEE9F0];
  if (([stringCopy isEqualToString:@"production"] & 1) == 0)
  {
    if ([stringCopy isEqualToString:@"development"])
    {
      v5 = MEMORY[0x277CEE9E8];
    }

    else
    {
      if (![stringCopy isEqualToString:@"demo"])
      {
        goto LABEL_7;
      }

      v5 = MEMORY[0x277CEE9E0];
    }

    v6 = *v5;

    v4 = v6;
  }

LABEL_7:

  return v4;
}

- (id)_portNameForEnvironmentName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"production"])
  {
    v4 = @"com.apple.aps.remindd.dataaccess";
  }

  else if ([nameCopy isEqualToString:@"development"])
  {
    v4 = @"com.apple.aps.remindd.dataaccess.dev";
  }

  else if ([nameCopy isEqualToString:@"demo"])
  {
    v4 = @"com.apple.aps.remindd.dataaccess.demo";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_connectionForEnv:(id)env
{
  v22 = *MEMORY[0x277D85DE8];
  envCopy = env;
  v6 = *MEMORY[0x277CEE9F0];
  if (!self->_apsConnections)
  {
    v7 = objc_opt_new();
    apsConnections = self->_apsConnections;
    self->_apsConnections = v7;
  }

  aPSEnv = [MEMORY[0x277CF3AC8] APSEnv];

  if (aPSEnv)
  {
    aPSEnv2 = [MEMORY[0x277CF3AC8] APSEnv];

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      v20 = 138412290;
      v21 = aPSEnv2;
      _os_log_impl(&dword_2424DF000, v11, v12, "Forcing APS environment to %@", &v20, 0xCu);
    }
  }

  else
  {
    aPSEnv2 = envCopy;
  }

  v13 = [(NSMutableDictionary *)self->_apsConnections objectForKeyedSubscript:aPSEnv2];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (aPSEnv2)
    {
      v15 = [(DARefreshManager *)self _apsEnvStringForDAEnvString:aPSEnv2];

      v6 = v15;
    }

    if (!v6)
    {
      [(DARefreshManager *)a2 _connectionForEnv:aPSEnv2];
    }

    v16 = objc_alloc(MEMORY[0x277CEEA10]);
    v17 = [(DARefreshManager *)self _portNameForEnvironmentName:v6];
    v18 = dataaccess_get_global_queue();
    v14 = [v16 initWithEnvironmentName:v6 namedDelegatePort:v17 queue:v18];

    [v14 setDelegate:self];
    [(NSMutableDictionary *)self->_apsConnections setObject:v14 forKeyedSubscript:v6];
  }

  return v14;
}

- (void)_registerAPSTopicsForDelegates:(id)delegates withConnection:(id)connection
{
  v61 = *MEMORY[0x277D85DE8];
  delegatesCopy = delegates;
  connectionCopy = connection;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, *(MEMORY[0x277CF3AF0] + 6)))
  {
    allKeys = [delegatesCopy allKeys];
    *buf = 138412290;
    v52 = allKeys;
    _os_log_impl(&dword_2424DF000, v7, v8, "Setting our enabled APS topics to %@", buf, 0xCu);
  }

  allKeys2 = [delegatesCopy allKeys];
  [connectionCopy setEnabledTopics:allKeys2];

  publicToken = [connectionCopy publicToken];
  if (publicToken)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allValues = [delegatesCopy allValues];
    v39 = [allValues countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v39)
    {
      v35 = connectionCopy;
      v36 = delegatesCopy;
      v37 = *v48;
      v41 = publicToken;
      v38 = allValues;
      do
      {
        v13 = 0;
        do
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(allValues);
          }

          v40 = v13;
          v14 = *(*(&v47 + 1) + 8 * v13);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v44;
            v42 = v15;
            do
            {
              v19 = 0;
              do
              {
                if (*v44 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v43 + 1) + 8 * v19);
                delegate = [v20 delegate];
                onBehalfOfBundleIdentifier = [delegate onBehalfOfBundleIdentifier];

                if ([v20 pushState] == 2 && (objc_msgSend(v20, "pushRegistrationTime"), (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, objc_msgSend(v20, "pushRegistrationTime"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "timeIntervalSinceNow"), v27 = v26, v25, v24, v27 >= -86400.0))
                {
                  v28 = DALoggingwithCategory();
                  if (os_log_type_enabled(v28, v8))
                  {
                    pushState = [v20 pushState];
                    [v20 pushRegistrationTime];
                    v31 = v30 = v8;
                    pushRegistrationTime = [v20 pushRegistrationTime];
                    [pushRegistrationTime timeIntervalSinceNow];
                    *buf = 138413058;
                    v52 = v20;
                    v53 = 1024;
                    v54 = pushState;
                    v55 = 2112;
                    v56 = v31;
                    v57 = 2048;
                    v58 = v33;
                    _os_log_impl(&dword_2424DF000, v28, v30, "Wrapper %@ is in state %d and its last push registration time was %@ (%f)", buf, 0x26u);

                    publicToken = v41;
                    v8 = v30;
                    v15 = v42;
                  }
                }

                else
                {
                  [v20 performTokenRegistrationRequestsWithToken:publicToken onBehalfOf:onBehalfOfBundleIdentifier];
                }

                ++v19;
              }

              while (v17 != v19);
              v34 = [v15 countByEnumeratingWithState:&v43 objects:v59 count:16];
              v17 = v34;
            }

            while (v34);
          }

          v13 = v40 + 1;
          allValues = v38;
        }

        while (v40 + 1 != v39);
        v39 = [v38 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v39);
      connectionCopy = v35;
      delegatesCopy = v36;
    }
  }

  else
  {
    allValues = DALoggingwithCategory();
    if (os_log_type_enabled(allValues, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, allValues, v8, "No public token. We won't be re-registering our tokens with the server", buf, 2u);
    }
  }
}

- (void)_registerAPSTopics
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "Timer fired. Re-registering everything with APS", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v10];
        v12 = [(DARefreshManager *)self _connectionForEnv:v10];
        [(DARefreshManager *)self _registerAPSTopicsForDelegates:v11 withConnection:v12];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  if (!self->_tokenRegistrationTimer)
  {
    v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__registerAPSTopics selector:0 userInfo:1 repeats:(arc4random() % 0x12C + 86400)];
    tokenRegistrationTimer = self->_tokenRegistrationTimer;
    self->_tokenRegistrationTimer = v13;
  }
}

- (int)_currentTruePCStyleForDelegate:(id)delegate
{
  scheduleIdentifier = [delegate scheduleIdentifier];

  return MEMORY[0x28219B058](1, scheduleIdentifier);
}

- (int)_overriddenPCStyleForWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  delegate = [wrapperCopy delegate];
  v6 = [(DARefreshManager *)self _currentTruePCStyleForDelegate:delegate];

  if (!v6)
  {
    if ([wrapperCopy pushState] == 2)
    {
      v6 = 0;
    }

    else if (PCSettingsGetClassPollInterval() >= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)_pushRegistrationForDelegateFailed:(id)failed
{
  v11 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    delegate = [failedCopy delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v9 = 138412290;
    v10 = scheduleIdentifier;
    _os_log_impl(&dword_2424DF000, v4, v5, "Push registration failed for delegate %@. Falling back to poll.", &v9, 0xCu);
  }

  [failedCopy setPushState:3];
  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v5))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_2424DF000, v8, v5, "Resuming XPC Activties for polling", &v9, 2u);
  }

  [failedCopy startFetchActivityForPush];
}

- (BOOL)_wrapperIsSuspended:(id)suspended
{
  v42 = *MEMORY[0x277D85DE8];
  suspendedCopy = suspended;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allValues = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
  v6 = [allValues countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v24 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        allValues2 = [v10 allValues];
        v12 = [allValues2 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          v25 = v7;
          v26 = *v32;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(allValues2);
              }

              v16 = *(*(&v31 + 1) + 8 * j);
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v28;
                while (2)
                {
                  for (k = 0; k != v19; ++k)
                  {
                    if (*v28 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    if (*(*(&v27 + 1) + 8 * k) == suspendedCopy)
                    {

                      v22 = 1;
                      goto LABEL_26;
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = v26;
            }

            v13 = [allValues2 countByEnumeratingWithState:&v31 objects:v40 count:16];
            v8 = v24;
            v7 = v25;
          }

          while (v13);
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v35 objects:v41 count:16];
      v22 = 0;
    }

    while (v7);
  }

  else
  {
    v22 = 0;
  }

LABEL_26:

  return v22;
}

- (void)_suspendTopicsForDelegate:(id)delegate
{
  v43 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  [(DARefreshManager *)self _enabledTopicsForWrapper:delegateCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v26)
  {
    v25 = *v34;
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    *&v5 = 138412546;
    v22 = v5;
    type = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v8 = *(*(&v33 + 1) + 8 * v7);
        v9 = DALoggingwithCategory();
        if (os_log_type_enabled(v9, v6))
        {
          delegate = [delegateCopy delegate];
          scheduleIdentifier = [delegate scheduleIdentifier];
          *buf = v22;
          v39 = v8;
          v40 = 2112;
          v41 = scheduleIdentifier;
          _os_log_impl(&dword_2424DF000, v9, v6, "Suspending topic %@ for delegate %@", buf, 0x16u);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        allKeys = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
        v12 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(allKeys);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v16, v22];
              v18 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:v16];
              if (!v18)
              {
                v18 = objc_opt_new();
                [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv setObject:v18 forKeyedSubscript:v16];
              }

              v19 = [v17 objectForKeyedSubscript:v8];
              v20 = [v18 objectForKeyedSubscript:v8];
              if (!v20)
              {
                v20 = objc_opt_new();
                [v18 setObject:v20 forKeyedSubscript:v8];
              }

              [delegateCopy setPushRegistrationTime:0];
              [v20 addObject:delegateCopy];
              [v19 removeObject:delegateCopy];
              if (![v19 count])
              {
                [v17 removeObjectForKey:v8];
              }
            }

            v13 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v13);
        }

        [delegateCopy setPushState:0];
        v21 = DALoggingwithCategory();
        v6 = type;
        if (os_log_type_enabled(v21, type))
        {
          *buf = 0;
          _os_log_impl(&dword_2424DF000, v21, type, "Resuming XPC Fetch Activities for polling", buf, 2u);
        }

        [delegateCopy startFetchActivityForSystemPCStyle];
        v7 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v26);
  }

  [(DARefreshManager *)self _registerAPSTopics];
}

- (void)_resumeTopicsForSuspendedDelegate:(id)delegate
{
  v41 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  [(DARefreshManager *)self _suspendedTopicsForWrapper:delegateCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v23)
  {
    v22 = *v32;
    type = *(MEMORY[0x277CF3AF0] + 6);
    *&v5 = 138412546;
    v20 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = DALoggingwithCategory();
        if (os_log_type_enabled(v8, type))
        {
          delegate = [delegateCopy delegate];
          scheduleIdentifier = [delegate scheduleIdentifier];
          *buf = v20;
          v37 = v7;
          v38 = 2112;
          v39 = scheduleIdentifier;
          _os_log_impl(&dword_2424DF000, v8, type, "Resuming topic %@ for delegate %@", buf, 0x16u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        allKeys = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allKeys];
        v11 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v27 + 1) + 8 * i);
              v16 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:v15, v20];
              v17 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v15];
              if (!v17)
              {
                v17 = objc_opt_new();
                [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv setObject:v17 forKeyedSubscript:v15];
              }

              v18 = [v16 objectForKeyedSubscript:v7];
              v19 = [v17 objectForKeyedSubscript:v7];
              if (!v19)
              {
                v19 = objc_opt_new();
                [v17 setObject:v19 forKeyedSubscript:v7];
              }

              [delegateCopy setPushRegistrationTime:0];
              [v19 addObject:delegateCopy];
              [v18 removeObject:delegateCopy];
              if (![v18 count])
              {
                [v16 removeObjectForKey:v7];
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v23);
  }

  [(DARefreshManager *)self _registerAPSTopics];
}

- (void)pushPreferenceDidChange
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_wrappers;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v29;
    type = *(MEMORY[0x277CF3AF0] + 3);
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    *&v4 = 67109120;
    v23 = v4;
    v25 = *v29;
    do
    {
      v8 = 0;
      v26 = v5;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        curStyle = [v9 curStyle];
        delegate = [v9 delegate];
        v12 = [(DARefreshManager *)self _currentTruePCStyleForDelegate:delegate];

        if (v12 != curStyle && v12 == 0)
        {
          v14 = DALoggingwithCategory();
          if (os_log_type_enabled(v14, v7))
          {
            delegate2 = [v9 delegate];
            getDAAccount = [delegate2 getDAAccount];
            accountDescription = [getDAAccount accountDescription];
            *buf = 138412802;
            v33 = accountDescription;
            v34 = 1024;
            v35 = curStyle;
            v36 = 1024;
            v37 = 0;
            _os_log_impl(&dword_2424DF000, v14, v7, "Account %@ : Resuming Push Delegate's PC style changed from %d to %d", buf, 0x18u);

            v6 = v25;
            v5 = v26;
          }

          [v9 startFetchActivityForPush];
          [(DARefreshManager *)self _resumeTopicsForSuspendedDelegate:v9];
        }

        else
        {
          if (v12 == curStyle)
          {
            if (([v9 isSetToSystemFetchInterval] & 1) != 0 || (curStyle - 3) < 0xFFFFFFFE)
            {
LABEL_21:
              v22 = DALoggingwithCategory();
              if (os_log_type_enabled(v22, type))
              {
                *buf = v23;
                LODWORD(v33) = v12;
                _os_log_impl(&dword_2424DF000, v22, type, "Our push setting was not changed from current value: %d. Doing nothing and hoping for the best.", buf, 8u);
              }

              goto LABEL_24;
            }
          }

          else if ((v12 - 1) > 1)
          {
            goto LABEL_21;
          }

          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v7))
          {
            delegate3 = [v9 delegate];
            getDAAccount2 = [delegate3 getDAAccount];
            accountDescription2 = [getDAAccount2 accountDescription];
            *buf = 138412290;
            v33 = accountDescription2;
            _os_log_impl(&dword_2424DF000, v18, v7, "Account %@ : Suspending push and resuming XPC Activity for polling", buf, 0xCu);

            v5 = v26;
            v6 = v25;
          }

          [(DARefreshManager *)self _suspendTopicsForDelegate:v9];
          [v9 startFetchActivityForSystemPCStyle];
        }

LABEL_24:
        [v9 setCurStyle:v12];
        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v5);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v12 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v11 = tokenCopy;
    _os_log_impl(&dword_2424DF000, v6, v7, "Received token %@ from APS. Registering all delegates with their servers", buf, 0xCu);
  }

  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DARefreshManager_connection_didReceivePublicToken___block_invoke;
  block[3] = &unk_278D52C00;
  block[4] = self;
  dispatch_sync(pcQueue, block);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  infoCopy = info;
  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412546;
    v19 = topicCopy;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_2424DF000, v9, v10, "Received a message from APS for topic %@ with user info %@.", buf, 0x16u);
  }

  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke;
  block[3] = &unk_278D52CE8;
  v15 = infoCopy;
  selfCopy = self;
  v17 = topicCopy;
  v12 = topicCopy;
  v13 = infoCopy;
  dispatch_sync(pcQueue, block);
}

void __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke(uint64_t a1)
{
  v104 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) objectForKeyedSubscript:@"key"];
  v2 = MEMORY[0x277CF3AF0];
  if (!v1)
  {
LABEL_23:
    if (shouldDALogAtLevel())
    {
      v20 = DALoggingwithCategory();
      v21 = v2[4];
      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(a1 + 48);
        *buf = 138412290;
        v97 = v22;
        _os_log_impl(&dword_2424DF000, v20, v21, "Received an APS push for %@ but we don't have any enabled delegates registered for that topic.", buf, 0xCu);
      }

      v53 = v1;

      v23 = DALoggingwithCategory();
      v24 = v2[6];
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v23, v24, "Enabled waiters: ", buf, 2u);
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v55 = [*(*(a1 + 40) + 16) allValues];
      v61 = [v55 countByEnumeratingWithState:&v80 objects:v101 count:16];
      if (v61)
      {
        obja = *v81;
        do
        {
          v25 = 0;
          do
          {
            if (*v81 != obja)
            {
              objc_enumerationMutation(v55);
            }

            v64 = v25;
            v26 = *(*(&v80 + 1) + 8 * v25);
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v27 = [v26 objectForKeyedSubscript:{*(a1 + 48), v53}];
            v28 = [v27 countByEnumeratingWithState:&v76 objects:v100 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v77;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v77 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v76 + 1) + 8 * i);
                  v33 = DALoggingwithCategory();
                  if (os_log_type_enabled(v33, v24))
                  {
                    v34 = [v32 delegate];
                    v35 = [v34 scheduleIdentifier];
                    v36 = [v32 delegate];
                    v37 = [v36 watchedCollections];
                    *buf = 138412546;
                    v97 = v35;
                    v98 = 2112;
                    v99 = v37;
                    _os_log_impl(&dword_2424DF000, v33, v24, "Waiter %@: %@", buf, 0x16u);
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v76 objects:v100 count:16];
              }

              while (v29);
            }

            v25 = v64 + 1;
          }

          while (v64 + 1 != v61);
          v61 = [v55 countByEnumeratingWithState:&v80 objects:v101 count:16];
        }

        while (v61);
      }

      v38 = DALoggingwithCategory();
      if (os_log_type_enabled(v38, v24))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v38, v24, "Suspended waiters: ", buf, 2u);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v56 = [*(*(a1 + 40) + 24) allValues];
      v62 = [v56 countByEnumeratingWithState:&v72 objects:v95 count:16];
      if (v62)
      {
        objb = *v73;
        do
        {
          v39 = 0;
          do
          {
            if (*v73 != objb)
            {
              objc_enumerationMutation(v56);
            }

            v65 = v39;
            v40 = *(*(&v72 + 1) + 8 * v39);
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v41 = [v40 objectForKeyedSubscript:{*(a1 + 48), v53}];
            v42 = [v41 countByEnumeratingWithState:&v68 objects:v94 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v69;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v69 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  v46 = *(*(&v68 + 1) + 8 * j);
                  v47 = DALoggingwithCategory();
                  if (os_log_type_enabled(v47, v24))
                  {
                    v48 = [v46 delegate];
                    v49 = [v48 scheduleIdentifier];
                    v50 = [v46 delegate];
                    v51 = [v50 watchedCollections];
                    *buf = 138412546;
                    v97 = v49;
                    v98 = 2112;
                    v99 = v51;
                    _os_log_impl(&dword_2424DF000, v47, v24, "Waiter %@: %@", buf, 0x16u);
                  }
                }

                v43 = [v41 countByEnumeratingWithState:&v68 objects:v94 count:16];
              }

              while (v43);
            }

            v39 = v65 + 1;
          }

          while (v65 + 1 != v62);
          v62 = [v56 countByEnumeratingWithState:&v72 objects:v95 count:16];
        }

        while (v62);
      }

      v1 = v53;
    }

    goto LABEL_63;
  }

  v3 = [MEMORY[0x277CBEB98] setWithObject:v1];
  v4 = DALoggingwithCategory();
  v5 = v2[7];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v97 = v3;
    _os_log_impl(&dword_2424DF000, v4, v5, "Collection keys in push user info is %@.", buf, 0xCu);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v6 = [*(*(a1 + 40) + 16) allValues];
  v63 = [v6 countByEnumeratingWithState:&v90 objects:v103 count:16];
  if (!v63)
  {

    goto LABEL_23;
  }

  v54 = v3;
  obj = v6;
  v52 = v1;
  v7 = 0;
  v60 = *v91;
  do
  {
    v8 = 0;
    do
    {
      if (*v91 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v67 = v8;
      v9 = *(*(&v90 + 1) + 8 * v8);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v10 = [v9 objectForKeyedSubscript:{*(a1 + 48), v52}];
      v11 = [v10 countByEnumeratingWithState:&v86 objects:v102 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v87;
        do
        {
          for (k = 0; k != v12; ++k)
          {
            if (*v87 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v86 + 1) + 8 * k);
            v16 = [v15 delegate];
            v17 = [v16 watchedCollections];
            v18 = [v17 mutableCopy];

            if ([v18 count])
            {
              v19 = dataaccess_get_global_queue();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __66__DARefreshManager_connection_didReceiveMessageForTopic_userInfo___block_invoke_57;
              block[3] = &unk_278D52AB0;
              block[4] = v15;
              v85 = v18;
              dispatch_async(v19, block);

              v7 = 1;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v86 objects:v102 count:16];
        }

        while (v12);
      }

      v8 = v67 + 1;
    }

    while (v67 + 1 != v63);
    v63 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  }

  while (v63);

  v1 = v52;
  v2 = MEMORY[0x277CF3AF0];
  if ((v7 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_63:
}

- (id)_refreshWrapperForDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_wrappers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        delegate = [v9 delegate];

        if (delegate == delegateCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_enabledTopicsForWrapper:(id)wrapper
{
  v40 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allValues];
  v20 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  v5 = 0;
  if (v20)
  {
    v19 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = v7;
        allKeys = [v7 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v23 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(allKeys);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v12 = [v24 objectForKeyedSubscript:v11];
              v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v26;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v26 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (*(*(&v25 + 1) + 8 * j) == wrapperCopy)
                    {
                      if (!v5)
                      {
                        v5 = [MEMORY[0x277CBEB58] set];
                      }

                      [v5 addObject:v11];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v14);
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v20);
  }

  return v5;
}

- (id)_suspendedTopicsForWrapper:(id)wrapper
{
  v40 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
  v20 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  v5 = 0;
  if (v20)
  {
    v19 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = v7;
        allKeys = [v7 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v8)
        {
          v9 = v8;
          v23 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(allKeys);
              }

              v11 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v12 = [v24 objectForKeyedSubscript:v11];
              v13 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v26;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v26 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (*(*(&v25 + 1) + 8 * j) == wrapperCopy)
                    {
                      if (!v5)
                      {
                        v5 = [MEMORY[0x277CBEB58] set];
                      }

                      [v5 addObject:v11];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v25 objects:v37 count:16];
                }

                while (v14);
              }
            }

            v9 = [allKeys countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        v6 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v20);
  }

  return v5;
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DARefreshManager_registerDelegate___block_invoke;
  v7[3] = &unk_278D52AB0;
  v8 = delegateCopy;
  selfCopy = self;
  v6 = delegateCopy;
  dispatch_sync(pcQueue, v7);
}

void __37__DARefreshManager_registerDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [*(a1 + 32) scheduleIdentifier];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2424DF000, v3, v4, "Registering delegate %@ for PC notifications", &v7, 0xCu);
  }

  v6 = objc_opt_new();
  [v6 setDelegate:*(a1 + 32)];
  [v6 setCurStyle:{objc_msgSend(*(a1 + 40), "_currentTruePCStyleForDelegate:", *(a1 + 32))}];
  [v6 startFetchActivityForSystemPCStyle];
  [*(*(a1 + 40) + 32) addObject:v6];
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__DARefreshManager_unregisterDelegate___block_invoke;
  v7[3] = &unk_278D52AB0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(pcQueue, v7);
}

void __39__DARefreshManager_unregisterDelegate___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v6 = [*(a1 + 40) scheduleIdentifier];
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_2424DF000, v3, v5, "Begin Unregistering delegate %@ for all PC and APS notifications", buf, 0xCu);
  }

  if (v2)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = DALoggingwithCategory();
    v9 = os_log_type_enabled(v8, v5);
    if (v7)
    {
      if (v9)
      {
        v10 = [*(a1 + 40) scheduleIdentifier];
        *buf = 138412546;
        v34 = v2;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_2424DF000, v8, v5, "Shutdown: Wrapper %@ Leaving push topics regiestered. delegate %@ for all PC and APS notifications", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v14 = [*(a1 + 40) scheduleIdentifier];
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&dword_2424DF000, v8, v5, "Unregistering delegate %@ for all PC and APS notifications", buf, 0xCu);
      }

      v15 = [*(a1 + 32) _enabledTopicsForWrapper:v2];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [*(a1 + 32) _unregisterTopicLocked:*(*(&v29 + 1) + 8 * i) forDelegate:*(a1 + 40) inEnvironment:0];
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v17);
      }

      v20 = [*(a1 + 32) _suspendedTopicsForWrapper:v2];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v20;
      v21 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v26;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v26 != v23)
            {
              objc_enumerationMutation(v8);
            }

            [*(a1 + 32) _unregisterTopicLocked:*(*(&v25 + 1) + 8 * j) forDelegate:*(a1 + 40) inEnvironment:{0, v25}];
          }

          v22 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v22);
      }

      [v2 stopCollectionsRefresh];
    }

    [v2 setDelegate:0];
    [*(*(a1 + 32) + 32) removeObject:v2];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(v4 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [*(a1 + 40) scheduleIdentifier];
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&dword_2424DF000, v11, v12, "Delegate %@ was unregistered, but it was never registered", buf, 0xCu);
    }
  }
}

- (void)_dailyRefreshActivityFired
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_wrappersForDailyRefresh mutableCopy];
  objc_sync_exit(selfCopy);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) dailyRefreshActivityFired];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)startDailyRefreshActivityForWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_wrappersForDailyRefresh addObject:wrapperCopy];
  if (!selfCopy->_dailyRefreshInitialized)
  {
    selfCopy->_dailyRefreshInitialized = 1;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v6, v7, "Registering daily refresh xpc activity.", buf, 2u);
    }

    v8 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke;
    handler[3] = &unk_278D52D10;
    handler[4] = selfCopy;
    xpc_activity_register("com.apple.dataaccess.dataaccessd.dailyrefresh", v8, handler);
  }

  objc_sync_exit(selfCopy);
}

void __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__DARefreshManager_startDailyRefreshActivityForWrapper___block_invoke_59;
    block[3] = &unk_278D52C00;
    block[4] = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 1);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], *MEMORY[0x277D86298]);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
    v6 = xpc_activity_copy_criteria(v3);
    if (!v6 || !xpc_equal(v5, v6))
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v7, v8, "Updating criteria for daily refresh xpc activity.", buf, 2u);
      }

      xpc_activity_set_criteria(v3, v5);
    }
  }
}

- (void)endDailyRefreshActivityForWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_wrappersForDailyRefresh removeObject:wrapperCopy];
  if (![(NSMutableSet *)selfCopy->_wrappersForDailyRefresh count])
  {
    selfCopy->_dailyRefreshInitialized = 0;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      *v8 = 0;
      _os_log_impl(&dword_2424DF000, v6, v7, "Unregistering daily refresh xpc activity.", v8, 2u);
    }

    xpc_activity_unregister("com.apple.dataaccess.dataaccessd.dailyrefresh");
  }

  objc_sync_exit(selfCopy);
}

- (void)registerTopic:(id)topic forDelegate:(id)delegate inEnvironment:(id)environment
{
  topicCopy = topic;
  delegateCopy = delegate;
  environmentCopy = environment;
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke;
  block[3] = &unk_278D52D38;
  v17 = environmentCopy;
  v18 = topicCopy;
  v20 = delegateCopy;
  v21 = a2;
  selfCopy = self;
  v13 = delegateCopy;
  v14 = topicCopy;
  v15 = environmentCopy;
  dispatch_sync(pcQueue, block);
}

void __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke_cold_1(a1);
  }

  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [*(a1 + 56) scheduleIdentifier];
    v6 = *(a1 + 40);
    v13 = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v2;
    _os_log_impl(&dword_2424DF000, v3, v4, "Registering delegate %@ for topic %@ in environment %@", &v13, 0x20u);
  }

  v7 = [*(a1 + 48) _refreshWrapperForDelegate:*(a1 + 56)];
  if (!v2)
  {
    v2 = @"production";
  }

  v8 = ([*(a1 + 48) _wrapperIsSuspended:v7] & 1) != 0 || objc_msgSend(*(a1 + 48), "_currentTruePCStyleForDelegate:", *(a1 + 56)) != 0;
  v9 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v2];
  if (v9)
  {
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = objc_opt_new();
    [*(*(a1 + 48) + 16) setObject:v9 forKeyedSubscript:v2];
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v4))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_2424DF000, v10, v4, "Delegate is not set to push, so putting it on the suspended queue", &v13, 2u);
  }

  v11 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:v2];

  v9 = v11;
  if (!v11)
  {
    v9 = objc_opt_new();
    [*(*(a1 + 48) + 24) setObject:v9 forKeyedSubscript:v2];
  }

LABEL_18:
  v12 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    [v9 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }

  [v7 setPushRegistrationTime:0];
  [v12 addObject:v7];
  if (!v8)
  {
    [*(a1 + 48) _registerAPSTopics];
  }
}

- (void)_unregisterWrapper:(id)wrapper forTopic:(id)topic inTopicDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  wrapperCopy = wrapper;
  topicCopy = topic;
  dictionaryCopy = dictionary;
  v10 = dictionaryCopy;
  if (topicCopy)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:topicCopy];
    [v11 removeObject:wrapperCopy];
    if (![v11 count])
    {
      [v10 removeObjectForKey:topicCopy];
    }
  }

  else
  {
    v11 = [dictionaryCopy copy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allKeys = [v11 allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          v18 = [v11 objectForKeyedSubscript:v17];
          [v18 removeObject:wrapperCopy];
          if (![v18 count])
          {
            [v10 removeObjectForKey:v17];
          }
        }

        v14 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }
}

- (void)_unregisterTopicLocked:(id)locked forDelegate:(id)delegate inEnvironment:(id)environment
{
  v65 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  delegateCopy = delegate;
  environmentCopy = environment;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277CF3AF0];
  v13 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    scheduleIdentifier = [delegateCopy scheduleIdentifier];
    *buf = 138412546;
    v62 = scheduleIdentifier;
    v63 = 2112;
    v64 = lockedCopy;
    _os_log_impl(&dword_2424DF000, v11, v13, "Removing refresh manager delegate for account %@ from topic %@", buf, 0x16u);
  }

  v15 = [(DARefreshManager *)self _refreshWrapperForDelegate:delegateCopy];
  v44 = environmentCopy;
  v45 = delegateCopy;
  if (v15)
  {
    if (environmentCopy)
    {
      v16 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:environmentCopy];
      [(DARefreshManager *)self _unregisterWrapper:v15 forTopic:lockedCopy inTopicDictionary:v16];
      allValues2 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv objectForKeyedSubscript:environmentCopy];

      [(DARefreshManager *)self _unregisterWrapper:v15 forTopic:lockedCopy inTopicDictionary:allValues2];
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      allValues = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allValues];
      v21 = [allValues countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v55;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v55 != v23)
            {
              objc_enumerationMutation(allValues);
            }

            [(DARefreshManager *)self _unregisterWrapper:v15 forTopic:lockedCopy inTopicDictionary:*(*(&v54 + 1) + 8 * i), v44, v45];
          }

          v22 = [allValues countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v22);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      allValues2 = [(NSMutableDictionary *)self->_suspendedTopicWrappersByEnv allValues];
      v25 = [allValues2 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v51;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v51 != v27)
            {
              objc_enumerationMutation(allValues2);
            }

            [(DARefreshManager *)self _unregisterWrapper:v15 forTopic:lockedCopy inTopicDictionary:*(*(&v50 + 1) + 8 * j), v44, v45];
          }

          v26 = [allValues2 countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v26);
      }
    }
  }

  else
  {
    allValues2 = DALoggingwithCategory();
    v18 = *(v12 + 4);
    if (os_log_type_enabled(allValues2, v18))
    {
      scheduleIdentifier2 = [delegateCopy scheduleIdentifier];
      *buf = 138412546;
      v62 = scheduleIdentifier2;
      v63 = 2112;
      v64 = lockedCopy;
      _os_log_impl(&dword_2424DF000, allValues2, v18, "Delegate %@ tried to unregister for the topic %@, but that delegate is not registered with the refresh manager", buf, 0x16u);
    }
  }

  v29 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv allKeys];
  v31 = [allKeys countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(allKeys);
        }

        v35 = *(*(&v46 + 1) + 8 * k);
        v36 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv objectForKeyedSubscript:v35, v44, v45];
        if ([v36 count])
        {
          allKeys2 = [v36 allKeys];
          [v29 addObjectsFromArray:allKeys2];
        }

        else
        {
          [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv removeObjectForKey:v35];
        }
      }

      v32 = [allKeys countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  v38 = [(NSMutableDictionary *)self->_enabledTopicWrappersByEnv count];
  v39 = DALoggingwithCategory();
  v40 = *(MEMORY[0x277CF3AF0] + 5);
  v41 = os_log_type_enabled(v39, v40);
  if (v38)
  {
    v43 = v44;
    v42 = v45;
    if (v41)
    {
      *buf = 138412290;
      v62 = v29;
      _os_log_impl(&dword_2424DF000, v39, v40, "Setting ourself enabled for these APS topics: %@", buf, 0xCu);
    }

    [(DARefreshManager *)self _registerAPSTopics];
  }

  else
  {
    v43 = v44;
    v42 = v45;
    if (v41)
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v39, v40, "No more delegates for any topic. Tearing down APS", buf, 2u);
    }

    [(DARefreshManager *)self _tearDownAllAPSConnectionsUnregisteringTopics:1];
  }
}

- (void)unregisterTopic:(id)topic forDelegate:(id)delegate inEnvironment:(id)environment
{
  topicCopy = topic;
  delegateCopy = delegate;
  environmentCopy = environment;
  pcQueue = self->_pcQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DARefreshManager_unregisterTopic_forDelegate_inEnvironment___block_invoke;
  v15[3] = &unk_278D52D60;
  v15[4] = self;
  v16 = topicCopy;
  v17 = delegateCopy;
  v18 = environmentCopy;
  v12 = environmentCopy;
  v13 = delegateCopy;
  v14 = topicCopy;
  dispatch_sync(pcQueue, v15);
}

- (void)delegateDidCompleteRefresh:(id)refresh
{
  refreshCopy = refresh;
  pcQueue = self->_pcQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DARefreshManager_delegateDidCompleteRefresh___block_invoke;
  v7[3] = &unk_278D52AB0;
  v7[4] = self;
  v8 = refreshCopy;
  v6 = refreshCopy;
  dispatch_sync(pcQueue, v7);
}

void __47__DARefreshManager_delegateDidCompleteRefresh___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  if (v2)
  {
    if ([*(a1 + 32) _currentTruePCStyleForDelegate:*(a1 + 40)])
    {
      v3 = DALoggingwithCategory();
      v4 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v3, v4))
      {
        v5 = [*(a1 + 40) scheduleIdentifier];
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_2424DF000, v3, v4, "Resuming account %@ for polling", &v9, 0xCu);
      }

      [v2 startFetchActivityForSystemPCStyle];
    }
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [*(a1 + 40) scheduleIdentifier];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_2424DF000, v6, v7, "Delegate %@ finished a refresh but it is not registered with the refresh manager", &v9, 0xCu);
    }
  }
}

- (void)retryRefreshForDelegate:(id)delegate withCollections:(id)collections after:(double)after originalRefreshReason:(int)reason
{
  delegateCopy = delegate;
  collectionsCopy = collections;
  pcQueue = self->_pcQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__DARefreshManager_retryRefreshForDelegate_withCollections_after_originalRefreshReason___block_invoke;
  block[3] = &unk_278D52D88;
  block[4] = self;
  v16 = delegateCopy;
  v17 = collectionsCopy;
  afterCopy = after;
  reasonCopy = reason;
  v13 = collectionsCopy;
  v14 = delegateCopy;
  dispatch_sync(pcQueue, block);
}

void __88__DARefreshManager_retryRefreshForDelegate_withCollections_after_originalRefreshReason___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _refreshWrapperForDelegate:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 retryCollections:*(a1 + 48) after:*(a1 + 64) reason:*(a1 + 56)];
  }

  else
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [*(a1 + 40) scheduleIdentifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2424DF000, v4, v5, "Delegate %@ told us to retry a refresh later but it is not registered with the refresh manager", &v7, 0xCu);
    }
  }
}

- (id)pushTokenForEnvironment:(id)environment
{
  v4 = [(DARefreshManager *)self _apsEnvStringForDAEnvString:environment];
  v5 = [(DARefreshManager *)self _connectionForEnv:v4];
  publicToken = [v5 publicToken];

  return publicToken;
}

- (void)_connectionForEnv:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DARefreshManager.m" lineNumber:225 description:{@"Couldn't come up with an env string for DAEnvString %@", a3}];
}

void __60__DARefreshManager_registerTopic_forDelegate_inEnvironment___block_invoke_cold_1(uint64_t a1)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) scheduleIdentifier];
  [v5 handleFailureInMethod:v2 object:v3 file:@"DARefreshManager.m" lineNumber:671 description:{@"Delegate %@ tried to register for a nil topic.", v4}];
}

@end