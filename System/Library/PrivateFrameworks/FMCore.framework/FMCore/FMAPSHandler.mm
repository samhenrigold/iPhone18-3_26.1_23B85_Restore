@interface FMAPSHandler
+ (id)constantForEnvironmentString:(id)string;
- (FMAPSHandler)initWithEnvironmentName:(id)name launchOnDemandPort:(id)port;
- (NSString)apsToken;
- (void)_handleMessage:(id)message onTopic:(id)topic;
- (void)_registrationsWereResumed;
- (void)_setEnabledTopics:(id)topics;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)deregisterDelegate:(id)delegate;
- (void)invalidate;
- (void)registerDelegate:(id)delegate forTopic:(id)topic;
- (void)resumeRegistrations;
@end

@implementation FMAPSHandler

- (NSString)apsToken
{
  apsConnection = [(FMAPSHandler *)self apsConnection];
  publicToken = [apsConnection publicToken];
  fm_hexString = [publicToken fm_hexString];

  if ([fm_hexString length])
  {
    v5 = fm_hexString;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)constantForEnvironmentString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy compare:@"production" options:1];
  v5 = MEMORY[0x277CEE9F0];
  if (v4)
  {
    if ([stringCopy compare:@"development" options:1])
    {
      if (![stringCopy compare:@"demo" options:1])
      {
        v5 = MEMORY[0x277CEE9E0];
      }
    }

    else
    {
      v5 = MEMORY[0x277CEE9E8];
    }
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

- (FMAPSHandler)initWithEnvironmentName:(id)name launchOnDemandPort:(id)port
{
  nameCopy = name;
  portCopy = port;
  v17.receiver = self;
  v17.super_class = FMAPSHandler;
  v8 = [(FMAPSHandler *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(FMAPSHandler *)v8 setEnvironmentName:nameCopy];
    array = [MEMORY[0x277CBEB18] array];
    [(FMAPSHandler *)v9 setRegisteredDelegates:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(FMAPSHandler *)v9 setPendingPushes:array2];

    v12 = objc_alloc(MEMORY[0x277CEEA10]);
    if (portCopy)
    {
      v13 = [v12 initWithEnvironmentName:nameCopy namedDelegatePort:portCopy queue:MEMORY[0x277D85CD0]];
    }

    else
    {
      v13 = [v12 initWithEnvironmentName:nameCopy queue:MEMORY[0x277D85CD0]];
    }

    v14 = v13;
    [(FMAPSHandler *)v9 setApsConnection:v13];

    apsConnection = [(FMAPSHandler *)v9 apsConnection];
    [apsConnection setDelegate:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(FMAPSHandler *)self invalidate];
  v3.receiver = self;
  v3.super_class = FMAPSHandler;
  [(FMAPSHandler *)&v3 dealloc];
}

- (void)invalidate
{
  apsConnection = [(FMAPSHandler *)self apsConnection];
  [apsConnection setDelegate:0];

  [(FMAPSHandler *)self _setEnabledTopics:0];
  apsConnection2 = [(FMAPSHandler *)self apsConnection];
  [apsConnection2 shutdown];
}

- (void)resumeRegistrations
{
  [(FMAPSHandler *)self setRegistrationsSuspended:0];

  [(FMAPSHandler *)self _registrationsWereResumed];
}

- (void)registerDelegate:(id)delegate forTopic:(id)topic
{
  delegateCopy = delegate;
  topicCopy = topic;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__FMAPSHandler_registerDelegate_forTopic___block_invoke;
  block[3] = &unk_278FD98E8;
  block[4] = self;
  v11 = delegateCopy;
  v12 = topicCopy;
  v8 = topicCopy;
  v9 = delegateCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__FMAPSHandler_registerDelegate_forTopic___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) registeredDelegates];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (!v4)
  {

LABEL_13:
    v12 = objc_alloc_init(FMAPSDelegateInfo);
    [(FMAPSDelegateInfo *)v12 setTopic:*(a1 + 48)];
    [(FMAPSDelegateInfo *)v12 setDelegate:*(a1 + 40)];
    v13 = [*(a1 + 32) registeredDelegates];
    [v13 addObject:v12];

    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v33;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v32 + 1) + 8 * i);
      v10 = [v9 delegate];
      v11 = *(a1 + 40);

      if (v10 == v11)
      {
        [v9 setTopic:*(a1 + 48)];
        v6 = 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v32 objects:v43 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v14 = [*v2 registrationsSuspended];
  if (v14)
  {
    v15 = LogCategory_APS(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __42__FMAPSHandler_registerDelegate_forTopic___block_invoke_cold_1(a1, v2);
    }
  }

  else
  {
    v15 = [MEMORY[0x277CBEB58] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = [*v2 registeredDelegates];
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * j) topic];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v18);
    }

    v23 = LogCategory_APS(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 48);
      v27 = [*(a1 + 32) environmentName];
      *buf = 138412802;
      v37 = v26;
      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v15;
      _os_log_debug_impl(&dword_24A2EE000, v23, OS_LOG_TYPE_DEBUG, "Registering for topic %@ in environment %@. Total topics : %@", buf, 0x20u);
    }

    v24 = *v2;
    v25 = [v15 allObjects];
    [v24 _setEnabledTopics:v25];
  }
}

- (void)deregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__FMAPSHandler_deregisterDelegate___block_invoke;
  v6[3] = &unk_278FD9690;
  v7 = delegateCopy;
  selfCopy = self;
  v5 = delegateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = LogCategory_APS(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_1(a1);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [*(a1 + 40) registeredDelegates];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 delegate];
        v11 = *(a1 + 32);

        if (v10 != v11)
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v12 = [*(a1 + 40) registeredDelegates];
  v13 = [v12 count];
  v14 = [v2 count];

  if (v13 != v14)
  {
    v15 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 40) setRegisteredDelegates:v2];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [*(a1 + 40) registeredDelegates];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * j) topic];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v23 = LogCategory_APS(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_2(v15, v23);
    }

    v24 = *(a1 + 40);
    v25 = [v15 allObjects];
    [v24 _setEnabledTopics:v25];
  }
}

- (void)_registrationsWereResumed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__FMAPSHandler__registrationsWereResumed__block_invoke;
  block[3] = &unk_278FD9780;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__FMAPSHandler__registrationsWereResumed__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [*(a1 + 32) registeredDelegates];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v28 + 1) + 8 * i) topic];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v5);
  }

  v10 = LogCategory_APS(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __41__FMAPSHandler__registrationsWereResumed__block_invoke_cold_1(v2, v10);
  }

  v11 = *(a1 + 32);
  v23 = v2;
  v12 = [v2 allObjects];
  [v11 _setEnabledTopics:v12];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [*(a1 + 32) pendingPushes];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = [v18 objectForKeyedSubscript:@"topic"];
        v20 = [v18 objectForKeyedSubscript:@"message"];
        v21 = LogCategory_APS(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v33 = v19;
          v34 = 2112;
          v35 = v20;
          _os_log_debug_impl(&dword_24A2EE000, v21, OS_LOG_TYPE_DEBUG, "Replaying APS message on topic %@: %@", buf, 0x16u);
        }

        [*(a1 + 32) _handleMessage:v20 onTopic:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v15);
  }

  v22 = [MEMORY[0x277CBEB18] array];
  [*(a1 + 32) setPendingPushes:v22];
}

- (void)_handleMessage:(id)message onTopic:(id)topic
{
  messageCopy = message;
  topicCopy = topic;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FMAPSHandler__handleMessage_onTopic___block_invoke;
  block[3] = &unk_278FD98E8;
  block[4] = self;
  v11 = topicCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = topicCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__FMAPSHandler__handleMessage_onTopic___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) registrationsSuspended];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = LogCategory_APS(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24A2EE000, v4, OS_LOG_TYPE_INFO, "Registrations are suspended. Queueing the APS message for later use", buf, 2u);
    }

    [v3 setObject:*(a1 + 40) forKeyedSubscript:@"topic"];
    v5 = *(a1 + 48);
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"message"];
    }

    v6 = [*(a1 + 32) pendingPushes];
    [v6 addObject:v3];
  }

  else
  {
    v7 = LogCategory_APS(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) registeredDelegates];
      *buf = 134217984;
      v26 = [v8 count];
      _os_log_impl(&dword_24A2EE000, v7, OS_LOG_TYPE_INFO, "Checking for a handler for the APS message from %lu registered delegates", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [*(a1 + 32) registeredDelegates];
    v9 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v21;
      *&v10 = 138412290;
      v19 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 topic];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = [v14 delegate];
            v18 = LogCategory_APS(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = v19;
              v26 = v17;
              _os_log_impl(&dword_24A2EE000, v18, OS_LOG_TYPE_INFO, "Found delegate with matching topic %@", buf, 0xCu);
            }

            [v17 didReceiveAPSMessage:*(a1 + 48)];
          }
        }

        v11 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }
}

- (void)_setEnabledTopics:(id)topics
{
  topicsCopy = topics;
  apsConnection = [(FMAPSHandler *)self apsConnection];
  [apsConnection _setEnabledTopics:topicsCopy];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v16 = *MEMORY[0x277D85DE8];
  fm_hexString = [token fm_hexString];
  v6 = LogCategory_APS(fm_hexString);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    environmentName = [(FMAPSHandler *)self environmentName];
    *buf = 138412546;
    v13 = fm_hexString;
    v14 = 2112;
    v15 = environmentName;
    _os_log_impl(&dword_24A2EE000, v6, OS_LOG_TYPE_INFO, "Received updated APS token %@ for environment %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke;
  v9[3] = &unk_278FD9690;
  v10 = fm_hexString;
  selfCopy = self;
  v8 = fm_hexString;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke(int8x16_t *a1)
{
  v2 = [a1[2].i64[0] length];
  if (v2)
  {
    v3 = LogCategory_APS(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_cold_1(a1);
    }

    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_37;
    activity_block[3] = &unk_278FD9690;
    v5 = a1[2];
    v4 = v5.i64[0];
    v7 = vextq_s8(v5, v5, 8uLL);
    _os_activity_initiate(&dword_24A2EE000, "APS token changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_37(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) registeredDelegates];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) delegate];
        [v7 didReceiveAPSToken:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  infoCopy = info;
  v9 = LogCategory_APS(infoCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = topicCopy;
    v17 = 2112;
    v18 = infoCopy;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_INFO, "Received APS message on topic %@: %@", buf, 0x16u);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __62__FMAPSHandler_connection_didReceiveMessageForTopic_userInfo___block_invoke;
  activity_block[3] = &unk_278FD98E8;
  activity_block[4] = self;
  v13 = infoCopy;
  v14 = topicCopy;
  v10 = topicCopy;
  v11 = infoCopy;
  _os_activity_initiate(&dword_24A2EE000, "APS message received", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __42__FMAPSHandler_registerDelegate_forTopic___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v2 = [*a2 environmentName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) environmentName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __35__FMAPSHandler_deregisterDelegate___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_DEBUG, "Updating list of topics after deregister: %@", &v2, 0xCu);
}

void __41__FMAPSHandler__registrationsWereResumed__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_DEBUG, "Updating list of topics after suspension was removed: %@", &v2, 0xCu);
}

void __49__FMAPSHandler_connection_didReceivePublicToken___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) registeredDelegates];
  [v1 count];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end