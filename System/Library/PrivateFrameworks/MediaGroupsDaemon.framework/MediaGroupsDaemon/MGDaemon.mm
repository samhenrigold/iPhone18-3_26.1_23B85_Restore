@interface MGDaemon
+ (id)daemon;
+ (id)daemonWithTopologyRequestHandler:(id)handler;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MGClientService)serviceForIngestion;
- (MGDaemon)init;
- (MGDaemon)initWithTopologyRequestHandler:(id)handler serviceListenerProvider:(id)provider;
- (id)startInternalQueryWithPredicate:(id)predicate handler:(id)handler;
- (void)HomeKitAccessoryOfType:(id)type accessoryIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier categoryType:(id)categoryType name:(id)name properties:(id)properties completion:(id)completion;
- (void)_addHomeKitAccessoryWithoutHomeIngestion:(id)ingestion fromHome:(id)home;
- (void)_fetchGroupInfo:(id)info completion:(id)completion;
- (void)_homeTheaterGroupIdentifierForAudioDestination:(id)destination fromHome:(id)home completion:(id)completion;
- (void)_ingestHomeKitHome:(id)home;
- (void)addHomeKitAccessory:(id)accessory fromHome:(id)home;
- (void)addHomeKitHome:(id)home;
- (void)addHomeKitMediaSystem:(id)system;
- (void)addHomeKitMediaSystem:(id)system fromHome:(id)home;
- (void)addHomeKitRoom:(id)room fromHome:(id)home;
- (void)addHomeKitZone:(id)zone fromHome:(id)home;
- (void)addMember:(id)member group:(id)group completion:(id)completion;
- (void)createGroupWithType:(id)type name:(id)name members:(id)members completion:(id)completion;
- (void)deleteGroup:(id)group completion:(id)completion;
- (void)groupsQueryAgent:(id)agent didFindResults:(id)results forQuery:(id)query;
- (void)removeHomeKitAccessory:(id)accessory fromHome:(id)home;
- (void)removeHomeKitHome:(id)home;
- (void)removeHomeKitMediaSystem:(id)system;
- (void)removeHomeKitMediaSystem:(id)system fromHome:(id)home;
- (void)removeHomeKitRoom:(id)room fromHome:(id)home;
- (void)removeHomeKitZone:(id)zone fromHome:(id)home;
- (void)removeMember:(id)member group:(id)group completion:(id)completion;
- (void)setName:(id)name group:(id)group completion:(id)completion;
- (void)setTopologyRequestHandler:(id)handler;
- (void)startOutstandingQueryWithPredicate:(id)predicate handler:(id)handler completion:(id)completion;
- (void)startQueryWithPredicate:(id)predicate completion:(id)completion;
- (void)stopInternalQuery:(id)query;
- (void)stopOutstandingQuery:(id)query;
- (void)stopQuery:(id)query;
- (void)stopQuery:(id)query completion:(id)completion;
@end

@implementation MGDaemon

- (MGDaemon)initWithTopologyRequestHandler:(id)handler serviceListenerProvider:(id)provider
{
  v75 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  providerCopy = provider;
  v70.receiver = self;
  v70.super_class = MGDaemon;
  v8 = [(MGDaemon *)&v70 init];
  if (v8)
  {
    v9 = objc_alloc_init(MGServiceClientSet);
    clients = v8->_clients;
    v8->_clients = v9;

    v11 = MEMORY[0x259C85F90](handlerCopy);
    topologyRequestHandler = v8->_topologyRequestHandler;
    v8->_topologyRequestHandler = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    arguments = [processInfo arguments];

    v16 = [arguments indexOfObject:@"--static"];
    v17 = &off_258662000;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v16 + 1;
      if (v16 + 1 < [arguments count])
      {
        v19 = [arguments objectAtIndex:v18];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v21 = [v19 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([(MGDaemon *)v21 length])
        {
          v22 = MGLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v72 = v21;
            _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "Attempting to use static groups file at %@", buf, 0xCu);
          }

          v69 = 0;
          v57 = v21;
          v23 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21 options:0 error:&v69];
          v24 = v69;
          v58 = v23;
          if (v23)
          {
            v55 = whitespaceAndNewlineCharacterSet;
            v25 = MEMORY[0x277CCAAC8];
            v26 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
            v68 = v24;
            v27 = [v25 unarchivedObjectOfClasses:v26 fromData:v23 error:&v68];
            v56 = v68;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 enumerateObjectsUsingBlock:&__block_literal_global_4];
              v66[0] = MEMORY[0x277D85DD0];
              v66[1] = 3221225472;
              v66[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_2;
              v66[3] = &unk_27989F620;
              v67 = v13;
              [v67 enumerateKeysAndObjectsUsingBlock:v66];
              v28 = v67;
              whitespaceAndNewlineCharacterSet = v55;
              v21 = v57;
            }

            else
            {
              v28 = MGLogForCategory(0);
              v21 = v57;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v72 = v56;
                _os_log_error_impl(&dword_25863A000, v28, OS_LOG_TYPE_ERROR, "Failed to unarchive static groups file (%@)", buf, 0xCu);
              }

              whitespaceAndNewlineCharacterSet = v55;
            }

            v24 = v56;
          }

          else
          {
            v27 = MGLogForCategory(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v72 = v24;
              _os_log_error_impl(&dword_25863A000, v27, OS_LOG_TYPE_ERROR, "Failed to read static groups file (%@)", buf, 0xCu);
            }

            v21 = v57;
          }

          v17 = &off_258662000;
        }
      }
    }

    v29 = [[MGGroupsQueryAgent alloc] initWithDelegate:v8];
    queryAgent = v8->_queryAgent;
    v8->_queryAgent = v29;

    v31 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:v8->_queryAgent];
    [(MGGroupsMediator *)v31 setAllowsClientEdits:1];
    objc_storeStrong(&v8->_localGroupsMediator, v31);
    v32 = [[MGGroupsMediator alloc] initWithGroupsQueryAgent:v8->_queryAgent];
    homekitGroupsMediator = v8->_homekitGroupsMediator;
    v8->_homekitGroupsMediator = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    internalQueries = v8->_internalQueries;
    v8->_internalQueries = v34;

    objc_storeStrong(&v8->_listenerProvider, provider);
    dispatchQueue = [(MGServiceListenerProvider *)v8->_listenerProvider dispatchQueue];
    dispatchQueue = v8->_dispatchQueue;
    v8->_dispatchQueue = dispatchQueue;

    serviceListener = [(MGServiceListenerProvider *)v8->_listenerProvider serviceListener];
    listener = v8->_listener;
    v8->_listener = serviceListener;

    [(NSXPCListener *)v8->_listener _setQueue:v8->_dispatchQueue];
    [(NSXPCListener *)v8->_listener setDelegate:v8];
    if ([v13 count])
    {
      v40 = [(MGGroupsMediator *)v31 startActivityWithName:@"Startup"];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = *(v17 + 362);
      v64[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_71;
      v64[3] = &unk_27989F620;
      v65 = v31;
      [v13 enumerateKeysAndObjectsUsingBlock:v64];
    }

    else
    {
      v40 = 0;
    }

    v41 = MGLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v8->_listener;
      *buf = 134218240;
      v72 = v8;
      v73 = 2048;
      v74 = v42;
      _os_log_impl(&dword_25863A000, v41, OS_LOG_TYPE_DEFAULT, "%p created with listener %p", buf, 0x16u);
    }

    v43 = MGLogForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v8->_queryAgent;
      *buf = 134218240;
      v72 = v8;
      v73 = 2048;
      v74 = v44;
      _os_log_impl(&dword_25863A000, v43, OS_LOG_TYPE_DEFAULT, "%p using %p for groups query", buf, 0x16u);
    }

    v45 = MGLogForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      localGroupsMediator = v8->_localGroupsMediator;
      *buf = 134218240;
      v72 = v8;
      v73 = 2048;
      v74 = localGroupsMediator;
      _os_log_impl(&dword_25863A000, v45, OS_LOG_TYPE_DEFAULT, "%p using %p for local groups mediation", buf, 0x16u);
    }

    v47 = MGLogForCategory(0);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v8->_homekitGroupsMediator;
      *buf = 134218240;
      v72 = v8;
      v73 = 2048;
      v74 = v48;
      _os_log_impl(&dword_25863A000, v47, OS_LOG_TYPE_DEFAULT, "%p using %p for HomeKit groups mediation", buf, 0x16u);
    }

    if (_os_feature_enabled_impl())
    {
      v49 = [[MGRemoteQueryClientManager alloc] initWithQueryRunner:v8 groupsQueryAgent:v8->_queryAgent];
      remoteQueryClient = v8->_remoteQueryClient;
      v8->_remoteQueryClient = v49;
    }

    v51 = v8->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *(v17 + 362);
    block[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_75;
    block[3] = &unk_27989F648;
    v60 = v8;
    v61 = providerCopy;
    v62 = v40;
    v63 = v31;
    v52 = v31;
    v53 = v40;
    dispatch_async(v51, block);
  }

  return v8;
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 memberIdentifiers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_3;
  v5[3] = &unk_27989F5F8;
  v6 = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = MGClassForGroupIdentifier(v9);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 alloc];
      v7 = [(objc_class *)v5 type];
      v8 = [v6 initWithConnectionProvider:0 type:v7 identifier:v9 name:&stru_2869A5BE8 properties:0 memberIdentifiers:MEMORY[0x277CBEBF8]];

      [*(a1 + 32) setObject:v8 forKey:v9];
    }
  }
}

void __67__MGDaemon_initWithTopologyRequestHandler_serviceListenerProvider___block_invoke_75(uint64_t a1)
{
  [*(*(a1 + 32) + 24) resume];
  v2 = [*(a1 + 40) serviceName];
  v3 = [v2 stringByAppendingString:@".ready"];
  notify_post([v3 UTF8String]);

  if (*(a1 + 48))
  {
    v4 = *(a1 + 56);

    [v4 endActivity:?];
  }
}

- (MGDaemon)init
{
  v3 = [[MGServiceListenerProvider alloc] initWithServiceName:@"com.apple.MediaGroups.daemon" entitlement:@"com.apple.MediaGroups.client"];
  v4 = [(MGDaemon *)self initWithTopologyRequestHandler:0 serviceListenerProvider:v3];

  return v4;
}

+ (id)daemonWithTopologyRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MGServiceListenerProvider alloc] initWithServiceName:@"com.apple.MediaGroups.daemon" entitlement:@"com.apple.MediaGroups.client"];
  v6 = [[self alloc] initWithTopologyRequestHandler:handlerCopy serviceListenerProvider:v5];

  return v6;
}

+ (id)daemon
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setTopologyRequestHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke;
  v7[3] = &unk_27989F6C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__MGDaemon_setTopologyRequestHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x259C85F90](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  if (*(a1 + 40))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v5 = [*(a1 + 32) clients];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke_2;
    v17[3] = &unk_27989F698;
    v19 = &v20;
    v18 = *(a1 + 40);
    [v5 enumerateClientsUsingBlock:v17];

    if ((v21[3] & 1) == 0)
    {
      [*(a1 + 32) internalQueries];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v6 = v14 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
      if (v7)
      {
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = [*(a1 + 32) queryAgent];
            v12 = [v11 outstandingQueryForIdentifier:v10];

            if ([v12 requiresTopology])
            {
              (*(*(a1 + 40) + 16))();

              goto LABEL_13;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    _Block_object_dispose(&v20, 8);
  }
}

void __38__MGDaemon_setTopologyRequestHandler___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__MGDaemon_setTopologyRequestHandler___block_invoke_3;
  v8[3] = &unk_27989F670;
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [a2 enumerateQueriesUsingBlock:v8];
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

void *__38__MGDaemon_setTopologyRequestHandler___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 requiresTopology];
  *a3 = result;
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (result)
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }

  return result;
}

- (MGClientService)serviceForIngestion
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = self->_serviceForIngestion;
  if (!v3)
  {
    v4 = [MEMORY[0x277D27440] clientServiceWithConnectionProvider:0];
    serviceForIngestion = self->_serviceForIngestion;
    self->_serviceForIngestion = v4;

    v3 = self->_serviceForIngestion;
    v6 = MGLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      selfCopy = self;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p created service %p for ingestion", &v8, 0x16u);
    }
  }

  return v3;
}

- (void)groupsQueryAgent:(id)agent didFindResults:(id)results forQuery:(id)query
{
  v30 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  queryCopy = query;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = resultsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        group = [*(*(&v25 + 1) + 8 * v14) group];
        [v9 addObject:group];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke;
  v21[3] = &unk_27989F648;
  v21[4] = self;
  v22 = queryCopy;
  v23 = v16;
  v24 = v10;
  v18 = v10;
  v19 = v16;
  v20 = queryCopy;
  dispatch_async(dispatchQueue, v21);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v2 = [*(a1 + 32) clients];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_2;
  v20[3] = &unk_27989F738;
  v24 = &v30;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v21 = v3;
  v22 = v4;
  v25 = &v26;
  v23 = *(a1 + 48);
  [v2 enumerateClientsUsingBlock:v20];

  if ((v31[3] & 1) == 0)
  {
    v5 = [*(a1 + 32) internalQueries];
    v6 = [*(a1 + 40) identifier];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v38 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 isEqual:{v6, v16}])
          {
            v12 = [v7 objectForKey:v11];
            v12[2](v12, *(a1 + 56), 0);
            v13 = MGLogForCategory(3);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(a1 + 32);
              *buf = 134218242;
              v35 = v14;
              v36 = 2112;
              v37 = v11;
              _os_log_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEFAULT, "%p sent update for internal query %@", buf, 0x16u);
            }

            *(v31 + 24) = 1;
            goto LABEL_14;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v38 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    if ((v31[3] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (*(v27 + 24) == 1)
  {
LABEL_16:
    v15 = [*(a1 + 32) queryAgent];
    [v15 removeOutstandingQuery:*(a1 + 40)];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_3;
  v12[3] = &unk_27989F710;
  v10 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = v5;
  v9 = *(a1 + 40);
  *&v6 = v10;
  *(&v6 + 1) = *(a1 + 64);
  v11 = v6;
  v7 = *(&v9 + 1);
  v15 = v9;
  v16 = v11;
  v8 = v5;
  [v8 enumerateQueriesUsingBlock:v12];
  *a3 = *(*(*(a1 + 56) + 8) + 24);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32) == v5;
  *(*(*(a1 + 64) + 8) + 24) = v6;
  if (v6)
  {
    v7 = [*(a1 + 32) identifier];
    v8 = [*(a1 + 40) connection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_4;
    v23[3] = &unk_27989F6E8;
    v23[4] = *(a1 + 48);
    v9 = v7;
    v24 = v9;
    v25 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    v26 = v10;
    v27 = v11;
    v12 = [v8 remoteObjectProxyWithErrorHandler:v23];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_92;
    v18[3] = &unk_27989F6E8;
    v13 = *(a1 + 56);
    v14 = *(a1 + 40);
    v18[4] = *(a1 + 48);
    v19 = v9;
    v20 = v14;
    v15 = *(a1 + 32);
    v16 = *(a1 + 72);
    v21 = v15;
    v22 = v16;
    v17 = v9;
    [v12 query:v17 didUpdate:v13 completion:v18];
  }

  *a3 = *(*(*(a1 + 64) + 8) + 24);
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MGLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 134218498;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_25863A000, v4, OS_LOG_TYPE_ERROR, "%p sending query %@ update unsuccessful (%@)", &v7, 0x20u);
  }

  [*(a1 + 48) removeQuery:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = 1;
}

void __53__MGDaemon_groupsQueryAgent_didFindResults_forQuery___block_invoke_92(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MGLogForCategory(3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 134218498;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p sending query %@ update failed (%@)", &v10, 0x20u);
    }

    [*(a1 + 48) removeQuery:*(a1 + 56)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 134218242;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_25863A000, v5, OS_LOG_TYPE_DEFAULT, "%p sent update for query %@", &v10, 0x16u);
    }
  }
}

- (void)_ingestHomeKitHome:(id)home
{
  v102 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  serviceForIngestion = [(MGDaemon *)self serviceForIngestion];
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  accessories = [homeCopy accessories];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke;
  v90[3] = &unk_27989F760;
  v90[4] = self;
  v8 = homeCopy;
  v91 = v8;
  [accessories enumerateObjectsUsingBlock:v90];

  mediaSystems = [v8 mediaSystems];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_2;
  v85[3] = &unk_27989F788;
  v10 = serviceForIngestion;
  v86 = v10;
  v11 = v8;
  v87 = v11;
  selfCopy = self;
  v12 = homekitGroupsMediator;
  v89 = v12;
  [mediaSystems enumerateObjectsUsingBlock:v85];

  rooms = [v11 rooms];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_96;
  v80[3] = &unk_27989F7B0;
  v14 = v10;
  v81 = v14;
  v15 = v11;
  v82 = v15;
  selfCopy2 = self;
  v16 = v12;
  v84 = v16;
  [rooms enumerateObjectsUsingBlock:v80];

  zones = [v15 zones];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __31__MGDaemon__ingestHomeKitHome___block_invoke_99;
  v75[3] = &unk_27989F7D8;
  v18 = v14;
  v76 = v18;
  v19 = v15;
  v77 = v19;
  selfCopy3 = self;
  selfCopy4 = self;
  v67 = v16;
  v79 = v67;
  [zones enumerateObjectsUsingBlock:v75];

  v61 = v18;
  v20 = [objc_alloc(MEMORY[0x277D27470]) initWithClientService:v18 home:v19];
  v21 = MGLogForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy5 = self;
    v95 = 2112;
    v96 = v20;
    _os_log_impl(&dword_25863A000, v21, OS_LOG_TYPE_DEFAULT, "%p adding home %@", buf, 0x16u);
  }

  v60 = v20;
  [v67 addGroup:v20];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  accessories2 = [v19 accessories];
  v23 = [accessories2 countByEnumeratingWithState:&v71 objects:v101 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v72;
    v26 = *MEMORY[0x277CCE870];
    v62 = v19;
    v64 = *v72;
    v65 = accessories2;
    v69 = *MEMORY[0x277CCE870];
    do
    {
      v27 = 0;
      v66 = v24;
      do
      {
        if (*v72 != v25)
        {
          objc_enumerationMutation(accessories2);
        }

        v28 = *(*(&v71 + 1) + 8 * v27);
        category = [v28 category];
        categoryType = [category categoryType];
        v31 = [categoryType isEqualToString:v26];

        if (v31)
        {
          v32 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(v28, v19);
          audioDestinationController = [v28 audioDestinationController];
          destination = [audioDestinationController destination];
          v35 = destination;
          if (audioDestinationController)
          {
            v36 = destination == 0;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            v37 = MGLogForCategory(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy5 = selfCopy4;
              v95 = 2112;
              v96 = v32;
              _os_log_impl(&dword_25863A000, v37, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@", buf, 0x16u);
            }

            [v67 removeGroupWithIdentifier:v32];
          }

          else
          {
            v70 = MGGroupIdentifierForAccessory(v28, v19);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v68 = v32;
            if (isKindOfClass)
            {
              v39 = v35;
              home = [v39 home];
              uniqueIdentifier = [home uniqueIdentifier];
              uniqueIdentifier2 = [v19 uniqueIdentifier];
              v43 = v19;
              v44 = [uniqueIdentifier isEqual:uniqueIdentifier2];

              if (v44)
              {
                v45 = MGGroupIdentifierForAccessory(v39, v43);
                goto LABEL_23;
              }

              v58 = MGLogForCategory(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
LABEL_38:
                *buf = 134218754;
                selfCopy5 = selfCopy4;
                v95 = 2112;
                v96 = home;
                v97 = 2112;
                v98 = v39;
                v99 = 2112;
                v19 = v62;
                v100 = v62;
                _os_log_error_impl(&dword_25863A000, v58, OS_LOG_TYPE_ERROR, "%p the home %@ from audioDestination %@ doesn't match current home %@", buf, 0x2Au);
LABEL_31:
                accessories2 = v65;
                v24 = v66;
                v32 = v68;

                v25 = v64;
LABEL_32:
                v49 = MGLogForCategory(1);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218498;
                  selfCopy5 = selfCopy4;
                  v95 = 2112;
                  v96 = v35;
                  v97 = 2112;
                  v98 = v28;
                  _os_log_error_impl(&dword_25863A000, v49, OS_LOG_TYPE_ERROR, "%p couldn't find accessory that the matched media destination %@ for %@. Can't add HomeTheater.", buf, 0x20u);
                }

                goto LABEL_34;
              }

LABEL_30:
              v19 = v62;
              goto LABEL_31;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_32;
            }

            v39 = v35;
            home = [v39 home];
            uniqueIdentifier3 = [home uniqueIdentifier];
            uniqueIdentifier4 = [v19 uniqueIdentifier];
            v43 = v19;
            v48 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

            if (!v48)
            {
              v58 = MGLogForCategory(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_38;
              }

              goto LABEL_30;
            }

            v45 = MGGroupIdentifierForMediaSystemInHome(v39, v43);
LABEL_23:
            v49 = v45;
            v19 = v43;

            accessories2 = v65;
            v24 = v66;
            v25 = v64;
            v32 = v68;
            if (!v49)
            {
              goto LABEL_32;
            }

            v92[0] = v70;
            v92[1] = v49;
            v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
            v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
            identifier = [audioDestinationController identifier];
            uUIDString = [identifier UUIDString];
            [v51 setObject:uUIDString forKey:@"audioDestinationIdentifier"];

            v54 = objc_alloc(MEMORY[0x277D27488]);
            name = [v28 name];
            v56 = [v54 initWithClientService:v61 type:@"com.apple.media-group.home-theater" identifier:v68 name:name properties:v51 memberIdentifiers:v50];

            v57 = MGLogForCategory(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy5 = selfCopy4;
              v95 = 2112;
              v96 = v56;
              _os_log_impl(&dword_25863A000, v57, OS_LOG_TYPE_DEFAULT, "%p adding home theater %@", buf, 0x16u);
            }

            [v67 addGroup:v56];
            v19 = v62;
            accessories2 = v65;
            v24 = v66;
            v25 = v64;
            v32 = v68;
LABEL_34:
          }

          v26 = v69;
        }

        ++v27;
      }

      while (v24 != v27);
      v59 = [accessories2 countByEnumeratingWithState:&v71 objects:v101 count:16];
      v24 = v59;
    }

    while (v59);
  }
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D27498];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) mediaSystem:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = 134218242;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding media system %@", &v8, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_96(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D274A8];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) room:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = 134218242;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding room %@", &v8, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
}

void __31__MGDaemon__ingestHomeKitHome___block_invoke_99(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D274C0];
  v4 = a2;
  v5 = [[v3 alloc] initWithClientService:*(a1 + 32) zone:v4 home:*(a1 + 40)];

  v6 = MGLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = 134218242;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "%p adding zone %@", &v8, 0x16u);
  }

  [*(a1 + 56) addGroup:v5];
}

- (void)addHomeKitHome:(id)home
{
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v5 = [homekitGroupsMediator startActivityWithName:@"Add HomeKit Home"];
  [(MGDaemon *)self _ingestHomeKitHome:homeCopy];

  [homekitGroupsMediator endActivity:v5];
}

- (void)removeHomeKitHome:(id)home
{
  v12 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = MGGroupIdentifierForHomeInHome(homeCopy, homeCopy);
  v6 = MGLogForCategory(1);
  homekitGroupsMediator = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      selfCopy2 = self;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_DEFAULT, "%p removing home %@", &v8, 0x16u);
    }

    homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
    [homekitGroupsMediator removeGroupWithIdentifier:v5];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218242;
    selfCopy2 = self;
    v10 = 2112;
    v11 = homeCopy;
    _os_log_error_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_ERROR, "%p no home identifier for %@", &v8, 0x16u);
  }
}

- (void)addHomeKitZone:(id)zone fromHome:(id)home
{
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [homekitGroupsMediator startActivityWithName:@"Add HomeKit Zone"];
  [(MGDaemon *)self _ingestHomeKitHome:homeCopy];

  [homekitGroupsMediator endActivity:v6];
}

- (void)removeHomeKitZone:(id)zone fromHome:(id)home
{
  v14 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v7 = MGGroupIdentifierForZoneInHome(zoneCopy, home);
  v8 = MGLogForCategory(1);
  homekitGroupsMediator = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_DEFAULT, "%p removing zone %@", &v10, 0x16u);
    }

    homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
    [homekitGroupsMediator removeGroupWithIdentifier:v7];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 134218242;
    selfCopy2 = self;
    v12 = 2112;
    v13 = zoneCopy;
    _os_log_error_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_ERROR, "%p no zone identifier for %@", &v10, 0x16u);
  }
}

- (void)addHomeKitRoom:(id)room fromHome:(id)home
{
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [homekitGroupsMediator startActivityWithName:@"Add HomeKit Room"];
  [(MGDaemon *)self _ingestHomeKitHome:homeCopy];

  [homekitGroupsMediator endActivity:v6];
}

- (void)removeHomeKitRoom:(id)room fromHome:(id)home
{
  v14 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  v7 = MGGroupIdentifierForRoomInHome(roomCopy, home);
  v8 = MGLogForCategory(1);
  homekitGroupsMediator = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_DEFAULT, "%p removing room %@", &v10, 0x16u);
    }

    homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
    [homekitGroupsMediator removeGroupWithIdentifier:v7];
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 134218242;
    selfCopy2 = self;
    v12 = 2112;
    v13 = roomCopy;
    _os_log_error_impl(&dword_25863A000, homekitGroupsMediator, OS_LOG_TYPE_ERROR, "%p no room identifier for %@", &v10, 0x16u);
  }
}

- (void)addHomeKitMediaSystem:(id)system fromHome:(id)home
{
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [homekitGroupsMediator startActivityWithName:@"Add HomeKit Media System"];
  [(MGDaemon *)self _ingestHomeKitHome:homeCopy];

  [homekitGroupsMediator endActivity:v6];
}

- (void)removeHomeKitMediaSystem:(id)system fromHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v9 = [homekitGroupsMediator startActivityWithName:@"Remove HomeKit Media System"];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  if ([systemCopy supportsAudioDestination])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__MGDaemon_removeHomeKitMediaSystem_fromHome___block_invoke;
    v17[3] = &unk_27989F800;
    v17[4] = &v18;
    [(MGDaemon *)self _homeTheaterGroupIdentifierForAudioDestination:systemCopy fromHome:homeCopy completion:v17];
  }

  v10 = v19[5];
  v11 = MGLogForCategory(1);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = v19[5];
      *buf = 134218498;
      selfCopy4 = self;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = systemCopy;
      _os_log_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@ since media system %@ was part of it", buf, 0x20u);
    }

    [homekitGroupsMediator removeGroupWithIdentifier:v19[5]];
  }

  else
  {
    if (v12)
    {
      *buf = 134218242;
      selfCopy4 = self;
      v26 = 2112;
      v27 = systemCopy;
      _os_log_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEFAULT, "%p no home theater identifier for %@", buf, 0x16u);
    }
  }

  v14 = MGGroupIdentifierForMediaSystemInHome(systemCopy, homeCopy);
  v15 = MGLogForCategory(1);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy4 = self;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_25863A000, v16, OS_LOG_TYPE_DEFAULT, "%p removing media system %@", buf, 0x16u);
    }

    [homekitGroupsMediator removeGroupWithIdentifier:v14];
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy4 = self;
      v26 = 2112;
      v27 = systemCopy;
      _os_log_error_impl(&dword_25863A000, v16, OS_LOG_TYPE_ERROR, "%p no media system identifier for %@", buf, 0x16u);
    }
  }

  [homekitGroupsMediator endActivity:v9];

  _Block_object_dispose(&v18, 8);
}

- (void)addHomeKitMediaSystem:(id)system
{
  systemCopy = system;
  home = [systemCopy home];
  [(MGDaemon *)self addHomeKitMediaSystem:systemCopy fromHome:home];
}

- (void)removeHomeKitMediaSystem:(id)system
{
  systemCopy = system;
  home = [systemCopy home];
  [(MGDaemon *)self removeHomeKitMediaSystem:systemCopy fromHome:home];
}

- (void)addHomeKitAccessory:(id)accessory fromHome:(id)home
{
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v6 = [homekitGroupsMediator startActivityWithName:@"Add HomeKit Accessory"];
  [(MGDaemon *)self _ingestHomeKitHome:homeCopy];

  [homekitGroupsMediator endActivity:v6];
}

- (void)_addHomeKitAccessoryWithoutHomeIngestion:(id)ingestion fromHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  ingestionCopy = ingestion;
  homeCopy = home;
  serviceForIngestion = [(MGDaemon *)self serviceForIngestion];
  v9 = MGGroupIdentifierForAccessory(ingestionCopy, homeCopy);

  v10 = MGClassForGroupIdentifier(v9);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceIdentifier = [ingestionCopy deviceIdentifier];
    if (deviceIdentifier)
    {
      [v12 setObject:deviceIdentifier forKey:@"deviceIdentifier"];
    }

    else
    {
      uniqueIdentifier = [ingestionCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      [v12 setObject:uUIDString forKey:@"deviceIdentifier"];
    }

    if (objc_opt_class() == v11)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(ingestionCopy, "homePodVariant")}];
      [v12 setObject:v16 forKey:@"HomePodVariant"];

      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(ingestionCopy, "productColor")}];
      [v12 setObject:v17 forKey:@"productColor"];
    }

    v18 = [v11 alloc];
    type = [(objc_class *)v11 type];
    name = [ingestionCopy name];
    v21 = [v18 initWithClientService:serviceForIngestion type:type identifier:v9 name:name properties:v12 memberIdentifiers:MEMORY[0x277CBEBF8]];

    v22 = MGLogForCategory(1);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      selfCopy2 = self;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "%p adding accessory %@", &v26, 0x16u);
    }

    if ([ingestionCopy isCurrentAccessory])
    {
      queryAgent = [(MGDaemon *)self queryAgent];
      identifier = [v21 identifier];
      [queryAgent setCurrentDeviceIdentifier:identifier];
    }

    homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
    [homekitGroupsMediator addGroup:v21];
  }

  else
  {
    v12 = MGLogForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218242;
      selfCopy2 = self;
      v28 = 2112;
      v29 = ingestionCopy;
      _os_log_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEFAULT, "%p no accessory class for %@", &v26, 0x16u);
    }
  }
}

- (void)removeHomeKitAccessory:(id)accessory fromHome:(id)home
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  homeCopy = home;
  homekitGroupsMediator = [(MGDaemon *)self homekitGroupsMediator];
  v9 = [homekitGroupsMediator startActivityWithName:@"Remove HomeKit Accessory"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__6;
  v29 = __Block_byref_object_dispose__6;
  v30 = 0;
  audioDestinationController = [accessoryCopy audioDestinationController];
  if (audioDestinationController && ([accessoryCopy category], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "categoryType"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCE870]), v12, v11, v13))
  {
    v14 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(accessoryCopy, homeCopy);
    v15 = v26[5];
    v26[5] = v14;
  }

  else if ([accessoryCopy supportsAudioDestination])
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __44__MGDaemon_removeHomeKitAccessory_fromHome___block_invoke;
    v24[3] = &unk_27989F800;
    v24[4] = &v25;
    [(MGDaemon *)self _homeTheaterGroupIdentifierForAudioDestination:accessoryCopy fromHome:homeCopy completion:v24];
  }

  v16 = v26[5];
  v17 = MGLogForCategory(1);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = v26[5];
      *buf = 134218498;
      selfCopy4 = self;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = accessoryCopy;
      _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p removing home theater %@ since accessory %@ was part of it", buf, 0x20u);
    }

    [homekitGroupsMediator removeGroupWithIdentifier:v26[5]];
  }

  else
  {
    if (v18)
    {
      *buf = 134218242;
      selfCopy4 = self;
      v33 = 2112;
      v34 = accessoryCopy;
      _os_log_impl(&dword_25863A000, v17, OS_LOG_TYPE_DEFAULT, "%p no home theater identifier for %@", buf, 0x16u);
    }
  }

  v20 = MGGroupIdentifierForAccessory(accessoryCopy, homeCopy);
  v21 = MGLogForCategory(1);
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy4 = self;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_25863A000, v22, OS_LOG_TYPE_DEFAULT, "%p removing accessory %@", buf, 0x16u);
    }

    if ([accessoryCopy isCurrentAccessory])
    {
      queryAgent = [(MGDaemon *)self queryAgent];
      [queryAgent setCurrentDeviceIdentifier:0];
    }

    [homekitGroupsMediator removeGroupWithIdentifier:v20];
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy4 = self;
      v33 = 2112;
      v34 = accessoryCopy;
      _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p no accessory identifier for %@", buf, 0x16u);
    }
  }

  [homekitGroupsMediator endActivity:v9];

  _Block_object_dispose(&v25, 8);
}

- (void)_homeTheaterGroupIdentifierForAudioDestination:(id)destination fromHome:(id)home completion:(id)completion
{
  destinationCopy = destination;
  homeCopy = home;
  completionCopy = completion;
  audioDestinationIdentifier = [destinationCopy audioDestinationIdentifier];
  if (audioDestinationIdentifier)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    accessories = [homeCopy accessories];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__MGDaemon__homeTheaterGroupIdentifierForAudioDestination_fromHome_completion___block_invoke;
    v12[3] = &unk_27989F828;
    v13 = audioDestinationIdentifier;
    v15 = &v16;
    v14 = homeCopy;
    [accessories enumerateObjectsUsingBlock:v12];

    completionCopy[2](completionCopy, v17[5]);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __79__MGDaemon__homeTheaterGroupIdentifierForAudioDestination_fromHome_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v6 = [v15 audioDestinationController];
  v7 = [v6 destination];
  v8 = [v7 audioDestinationIdentifier];

  if (v6)
  {
    v9 = [v15 category];
    v10 = [v9 categoryType];
    if ([v10 isEqualToString:*MEMORY[0x277CCE870]])
    {
      v11 = [v8 isEqualToString:*(a1 + 32)];

      if (v11)
      {
        v12 = MGGroupIdentifierForHomeTheaterWithAppleTVAccessoryInHome(v15, *(a1 + 40));
        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = MGLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v24 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p received new connection from %d", buf, 0x12u);
  }

  listenerProvider = [(MGDaemon *)self listenerProvider];
  v10 = [listenerProvider serviceShouldAcceptNewConnection:connectionCopy];
  if (v10)
  {
    MGSetServiceXPCInterfacesOnConnection(connectionCopy, 1);
    [connectionCopy setExportedObject:self];
    dispatchQueue = [(MGDaemon *)self dispatchQueue];
    [connectionCopy _setQueue:dispatchQueue];

    v12 = [[MGServiceClient alloc] initWithConnection:connectionCopy];
    clients = [(MGDaemon *)self clients];
    [clients addClientService:v12];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v12);
    objc_initWeak(&from, connectionCopy);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_27989F878;
    objc_copyWeak(&v17, buf);
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v14 = MEMORY[0x259C85F90](v16);
    [connectionCopy setInterruptionHandler:v14];
    [connectionCopy setInvalidationHandler:v14];
    [connectionCopy resume];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  return v10;
}

void __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v5 = v4;
  if (WeakRetained && v3 && v4)
  {
    v6 = MGLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v10 = WeakRetained;
      v11 = 1024;
      v12 = [v5 processIdentifier];
      _os_log_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEFAULT, "Service %p lost connection from %d", buf, 0x12u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__MGDaemon_listener_shouldAcceptNewConnection___block_invoke_131;
    v8[3] = &unk_27989F850;
    v8[4] = WeakRetained;
    [v3 enumerateQueriesUsingBlock:v8];
    v7 = [WeakRetained clients];
    [v7 removeClientService:v3];
  }
}

- (void)createGroupWithType:(id)type name:(id)name members:(id)members completion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  membersCopy = members;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v15 = currentConnection;
  if (currentConnection)
  {
    v16 = objc_getAssociatedObject(currentConnection, "com.apple.MediaGroups.ClientService");
  }

  else
  {
    v16 = 0;
  }

  if (qword_27F956E00 != -1)
  {
    dispatch_once(&qword_27F956E00, &__block_literal_global_134);
  }

  v17 = [_MergedGlobals_1 objectForKey:typeCopy];
  if (v17)
  {
    v18 = v17;
    v51 = typeCopy;
    selfCopy = self;
    v46 = v16;
    v47 = v15;
    v48 = completionCopy;
    v20 = nameCopy;
    v21 = MEMORY[0x277D27450];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v50 = [v21 groupIdentifierWithUUID:uUID];

    v23 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v49 = membersCopy;
    v24 = membersCopy;
    v25 = [v24 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v53;
      do
      {
        v28 = 0;
        v29 = v23;
        do
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v24);
          }

          identifier = [*(*(&v52 + 1) + 8 * v28) identifier];
          v23 = [v29 arrayByAddingObject:identifier];

          ++v28;
          v29 = v23;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v26);
    }

    v31 = v50;
    nameCopy = v20;
    v32 = [v18 validateGroupSpecificationWithType:v51 identifier:v50 name:v20 properties:0 members:v24];
    if (v32)
    {
      v33 = MGLogForCategory(3);
      v16 = v46;
      v15 = v47;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy3 = selfCopy;
        v58 = 2112;
        v59 = v32;
        _os_log_error_impl(&dword_25863A000, v33, OS_LOG_TYPE_ERROR, "%p group validation failed: %@", buf, 0x16u);
      }

      v34 = v32;
      v35 = 0;
      membersCopy = v49;
    }

    else
    {
      v42 = [v18 alloc];
      v16 = v46;
      v15 = v47;
      if (v46)
      {
        v43 = [v42 initWithClientService:v46 type:v51 identifier:v50 name:nameCopy properties:0 memberIdentifiers:v23];
      }

      else
      {
        v43 = [v42 initWithConnectionProvider:0 type:v51 identifier:v50 name:nameCopy properties:0 memberIdentifiers:v23];
      }

      v35 = v43;
      membersCopy = v49;
      localGroupsMediator = [(MGDaemon *)selfCopy localGroupsMediator];
      [localGroupsMediator addGroup:v35];

      v45 = MGLogForCategory(3);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy3 = selfCopy;
        v58 = 2048;
        v59 = v35;
        _os_log_impl(&dword_25863A000, v45, OS_LOG_TYPE_DEFAULT, "%p creation complete for %p", buf, 0x16u);
      }

      v31 = v50;
    }

    completionCopy = v48;
    typeCopy = v51;
  }

  else
  {
    v36 = [qword_27F956DF8 objectForKey:typeCopy];
    v37 = MGLogForCategory(3);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_error_impl(&dword_25863A000, v37, OS_LOG_TYPE_ERROR, "%p group type creation not allowed", buf, 0xCu);
      }

      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D27428];
      v41 = 1;
    }

    else
    {
      if (v38)
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_error_impl(&dword_25863A000, v37, OS_LOG_TYPE_ERROR, "%p group type creation not supported", buf, 0xCu);
      }

      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D27428];
      v41 = 2;
    }

    v32 = [v39 errorWithDomain:v40 code:v41 userInfo:0];
    v35 = 0;
  }

  completionCopy[2](completionCopy, v35, v32);
}

void __56__MGDaemon_createGroupWithType_name_members_completion___block_invoke()
{
  v15[11] = *MEMORY[0x277D85DE8];
  v0 = _MergedGlobals_1;
  _MergedGlobals_1 = MEMORY[0x277CBEC10];

  v13 = [MEMORY[0x277D274B0] type];
  v14[0] = v13;
  v15[0] = objc_opt_class();
  v12 = [MEMORY[0x277D27480] type];
  v14[1] = v12;
  v15[1] = objc_opt_class();
  v1 = [MEMORY[0x277D27430] type];
  v14[2] = v1;
  v15[2] = objc_opt_class();
  v2 = [MEMORY[0x277D274B8] type];
  v14[3] = v2;
  v15[3] = objc_opt_class();
  v3 = [MEMORY[0x277D27438] type];
  v14[4] = v3;
  v15[4] = objc_opt_class();
  v4 = [MEMORY[0x277D27498] type];
  v14[5] = v4;
  v15[5] = objc_opt_class();
  v5 = [MEMORY[0x277D274A8] type];
  v14[6] = v5;
  v15[6] = objc_opt_class();
  v6 = [MEMORY[0x277D274C0] type];
  v14[7] = v6;
  v15[7] = objc_opt_class();
  v7 = [MEMORY[0x277D27470] type];
  v14[8] = v7;
  v15[8] = objc_opt_class();
  v8 = [MEMORY[0x277D27440] type];
  v14[9] = v8;
  v15[9] = objc_opt_class();
  v9 = [MEMORY[0x277D27488] type];
  v14[10] = v9;
  v15[10] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v11 = qword_27F956DF8;
  qword_27F956DF8 = v10;
}

- (void)deleteGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  v7 = deleteGroup_completion__onceToken;
  groupCopy = group;
  if (v7 != -1)
  {
    dispatch_once(&deleteGroup_completion__onceToken, &__block_literal_global_143);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__MGDaemon_deleteGroup_completion___block_invoke_2;
  v10[3] = &unk_27989F8A0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MGDaemon *)self _fetchGroupInfo:groupCopy completion:v10];
}

void __35__MGDaemon_deleteGroup_completion___block_invoke()
{
  v15[11] = *MEMORY[0x277D85DE8];
  v0 = qword_27F956E08;
  qword_27F956E08 = MEMORY[0x277CBEC10];

  v13 = [MEMORY[0x277D274B0] type];
  v14[0] = v13;
  v15[0] = objc_opt_class();
  v12 = [MEMORY[0x277D27480] type];
  v14[1] = v12;
  v15[1] = objc_opt_class();
  v1 = [MEMORY[0x277D27430] type];
  v14[2] = v1;
  v15[2] = objc_opt_class();
  v2 = [MEMORY[0x277D274B8] type];
  v14[3] = v2;
  v15[3] = objc_opt_class();
  v3 = [MEMORY[0x277D27438] type];
  v14[4] = v3;
  v15[4] = objc_opt_class();
  v4 = [MEMORY[0x277D27498] type];
  v14[5] = v4;
  v15[5] = objc_opt_class();
  v5 = [MEMORY[0x277D274A8] type];
  v14[6] = v5;
  v15[6] = objc_opt_class();
  v6 = [MEMORY[0x277D274C0] type];
  v14[7] = v6;
  v15[7] = objc_opt_class();
  v7 = [MEMORY[0x277D27470] type];
  v14[8] = v7;
  v15[8] = objc_opt_class();
  v8 = [MEMORY[0x277D27440] type];
  v14[9] = v8;
  v15[9] = objc_opt_class();
  v9 = [MEMORY[0x277D27488] type];
  v14[10] = v9;
  v15[10] = objc_opt_class();
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:11];
  v11 = qword_27F956E10;
  qword_27F956E10 = v10;
}

void __35__MGDaemon_deleteGroup_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  objc_initWeak(&location, a4);
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 134218242;
      v31 = v15;
      v32 = 2112;
      v33 = v13;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p failed to fetch group for deletion %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 134217984;
      v31 = v18;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p failed to find group for deletion", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = objc_loadWeakRetained(&location);
  v14 = v16;
  if (!v16)
  {
    v19 = MGLogForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      *buf = 134217984;
      v31 = v25;
      _os_log_error_impl(&dword_25863A000, v19, OS_LOG_TYPE_ERROR, "%p failed to find source for deletion", buf, 0xCu);
    }

    v14 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_27;
  }

  if (([v16 allowsClientEdits]& 1) != 0)
  {
    v17 = [objc_opt_class() type];
    if ([qword_27F956E08 objectForKey:v17])
    {
      [v14 removeGroup:v9];
      v13 = 0;
    }

    else
    {
      v21 = [qword_27F956E10 objectForKey:v17];
      v22 = MGLogForCategory(3);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        if (v23)
        {
          v27 = *(a1 + 32);
          *buf = 134217984;
          v31 = v27;
          _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p group type deletion not allowed", buf, 0xCu);
        }

        v24 = 7;
      }

      else
      {
        if (v23)
        {
          v28 = *(a1 + 32);
          *buf = 134217984;
          v31 = v28;
          _os_log_error_impl(&dword_25863A000, v22, OS_LOG_TYPE_ERROR, "%p group type deletion not supported", buf, 0xCu);
        }

        v24 = 2;
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:v24 userInfo:0];
    }
  }

  else
  {
    v20 = MGLogForCategory(3);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 134217984;
      v31 = v26;
      _os_log_error_impl(&dword_25863A000, v20, OS_LOG_TYPE_ERROR, "%p deletion not allowed by group source", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:9 userInfo:0];
  }

LABEL_27:

  (*(*(a1 + 40) + 16))();
  objc_destroyWeak(&location);
}

- (void)HomeKitAccessoryOfType:(id)type accessoryIdentifier:(id)identifier homeIdentifier:(id)homeIdentifier categoryType:(id)categoryType name:(id)name properties:(id)properties completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifierCopy = identifier;
  homeIdentifierCopy = homeIdentifier;
  categoryTypeCopy = categoryType;
  nameCopy = name;
  propertiesCopy = properties;
  completionCopy = completion;
  if (qword_27F956E28 != -1)
  {
    dispatch_once(&qword_27F956E28, &__block_literal_global_146);
  }

  v21 = [qword_27F956E18 objectForKey:typeCopy];
  if (!v21)
  {
    v31 = MGLogForCategory(3);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v39 = 2112;
      v40 = typeCopy;
      _os_log_error_impl(&dword_25863A000, v31, OS_LOG_TYPE_ERROR, "%p group type %@ not supported", buf, 0x16u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D27428];
    v34 = 2;
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [qword_27F956E20 objectForKey:typeCopy];
  v24 = [v23 isEqualToString:categoryTypeCopy];

  if (!v24)
  {
    v35 = MGLogForCategory(3);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v39 = 2112;
      v40 = categoryTypeCopy;
      _os_log_error_impl(&dword_25863A000, v35, OS_LOG_TYPE_ERROR, "%p accessory category %@ is not supported", buf, 0x16u);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D27428];
    v34 = 3;
LABEL_14:
    v30 = [v32 errorWithDomain:v33 code:v34 userInfo:0];
    v27 = 0;
    goto LABEL_15;
  }

  v25 = MGGroupIdentifierForAccessoryIdentifierInHome(identifierCopy, homeIdentifierCopy, categoryTypeCopy);
  v26 = [v22 alloc];
  v27 = [v26 initWithConnectionProvider:0 type:typeCopy identifier:v25 name:nameCopy properties:propertiesCopy memberIdentifiers:MEMORY[0x277CBEBF8]];
  localGroupsMediator = [(MGDaemon *)self localGroupsMediator];
  [localGroupsMediator addGroup:v27];

  v29 = MGLogForCategory(3);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy3 = self;
    v39 = 2112;
    v40 = v27;
    _os_log_impl(&dword_25863A000, v29, OS_LOG_TYPE_DEFAULT, "%p completed accessory %@", buf, 0x16u);
  }

  v30 = 0;
LABEL_15:
  completionCopy[2](completionCopy, v27, v30);
}

void __110__MGDaemon_HomeKitAccessoryOfType_accessoryIdentifier_homeIdentifier_categoryType_name_properties_completion___block_invoke()
{
  v13[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D27480] type];
  v12[0] = v0;
  v13[0] = objc_opt_class();
  v1 = [MEMORY[0x277D274B8] type];
  v12[1] = v1;
  v13[1] = objc_opt_class();
  v2 = [MEMORY[0x277D27438] type];
  v12[2] = v2;
  v13[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v4 = qword_27F956E18;
  qword_27F956E18 = v3;

  v5 = [MEMORY[0x277D27480] type];
  v10[0] = v5;
  v11[0] = *MEMORY[0x277CCE8B0];
  v6 = [MEMORY[0x277D274B8] type];
  v10[1] = v6;
  v11[1] = *MEMORY[0x277CCE900];
  v7 = [MEMORY[0x277D27438] type];
  v10[2] = v7;
  v11[2] = *MEMORY[0x277CCE878];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v9 = qword_27F956E20;
  qword_27F956E20 = v8;
}

- (void)setName:(id)name group:(id)group completion:(id)completion
{
  nameCopy = name;
  groupCopy = group;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__MGDaemon_setName_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = groupCopy;
  v16 = nameCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = nameCopy;
  v13 = groupCopy;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __37__MGDaemon_setName_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v20 = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for rename %@", &v20, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v20 = 134217984;
      v21 = v18;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p rename not allowed by group type", &v20, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:4 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v16 = MGLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 134217984;
    v21 = v19;
    _os_log_error_impl(&dword_25863A000, v16, OS_LOG_TYPE_ERROR, "%p failed to find group for rename", &v20, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();
}

- (void)addMember:(id)member group:(id)group completion:(id)completion
{
  memberCopy = member;
  groupCopy = group;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__MGDaemon_addMember_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = groupCopy;
  v16 = memberCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = memberCopy;
  v13 = groupCopy;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __39__MGDaemon_addMember_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v20 = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for adding member %@", &v20, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v20 = 134217984;
      v21 = v18;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p adding members not allowed by group type", &v20, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:6 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v16 = MGLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 134217984;
    v21 = v19;
    _os_log_error_impl(&dword_25863A000, v16, OS_LOG_TYPE_ERROR, "%p failed to find group for adding member", &v20, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();
}

- (void)removeMember:(id)member group:(id)group completion:(id)completion
{
  memberCopy = member;
  groupCopy = group;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__MGDaemon_removeMember_group_completion___block_invoke;
  v14[3] = &unk_27989F8C8;
  v14[4] = self;
  v15 = groupCopy;
  v16 = memberCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = memberCopy;
  v13 = groupCopy;
  [(MGDaemon *)self _fetchGroupInfo:v13 completion:v14];
}

void __42__MGDaemon_removeMember_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v20 = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_25863A000, v13, OS_LOG_TYPE_ERROR, "%p failed to fetch group for removing member %@", &v20, 0x16u);
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  if (v8)
  {
    v14 = MGLogForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v20 = 134217984;
      v21 = v18;
      _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p removing members not allowed by group type", &v20, 0xCu);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D27428] code:6 userInfo:0];
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v16 = MGLogForCategory(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = 134217984;
    v21 = v19;
    _os_log_error_impl(&dword_25863A000, v16, OS_LOG_TYPE_ERROR, "%p failed to find group for removing member", &v20, 0xCu);
  }

  v12 = 0;
LABEL_10:
  (*(*(a1 + 56) + 16))();
}

- (void)startQueryWithPredicate:(id)predicate completion:(id)completion
{
  v33[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  completionCopy = completion;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  clients = [(MGDaemon *)self clients];
  v28 = [clients serviceClientForXPCConnection:currentConnection];

  [predicateCopy allowEvaluation];
  v9 = [currentConnection valueForEntitlement:@"com.apple.MediaGroups.groups"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = MEMORY[0x277CBEBF8];
    }
  }

  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i < v11; ++i)
    {
      v13 = [v9 objectAtIndex:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v15 = [v9 mutableCopy];
        [v15 removeObjectAtIndex:i];

        ++i;
        v9 = v15;
      }
    }
  }

  v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.type IN %@", v9];
  v17 = MEMORY[0x277CCA920];
  v33[0] = v16;
  v33[1] = predicateCopy;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = [[MGOutstandingQuery alloc] initWithPredicate:v19];
  identifier = [(MGOutstandingQuery *)v20 identifier];
  topologyRequestHandler = [(MGDaemon *)self topologyRequestHandler];
  if ([(MGOutstandingQuery *)v20 requiresTopology]&& topologyRequestHandler)
  {
    v23 = MGLogForCategory(3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v31 = 2112;
      v32 = identifier;
      _os_log_debug_impl(&dword_25863A000, v23, OS_LOG_TYPE_DEBUG, "%p requesting topology for query %@", buf, 0x16u);
    }

    topologyRequestHandler[2](topologyRequestHandler);
  }

  [v28 addQuery:v20];
  v24 = MGLogForCategory(3);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v31 = 2112;
    v32 = identifier;
    _os_log_impl(&dword_25863A000, v24, OS_LOG_TYPE_DEFAULT, "%p starting query %@", buf, 0x16u);
  }

  (*(completionCopy + 2))(completionCopy, identifier, 0, 0);
  queryAgent = [(MGDaemon *)self queryAgent];
  [queryAgent addOutstandingQuery:v20];

  remoteQueryClient = [(MGDaemon *)self remoteQueryClient];
  [remoteQueryClient addOutstandingQuery:v20];
}

- (void)stopQuery:(id)query completion:(id)completion
{
  v6 = MEMORY[0x277CCAE80];
  completionCopy = completion;
  queryCopy = query;
  currentConnection = [v6 currentConnection];
  clients = [(MGDaemon *)self clients];
  v10 = [clients serviceClientForXPCConnection:currentConnection];

  v11 = [v10 outstandingQueryForIdentifier:queryCopy];

  [(MGDaemon *)self stopQuery:v11];
  [v10 removeQuery:v11];
  completionCopy[2](completionCopy, 0);
}

- (void)stopQuery:(id)query
{
  v13 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  identifier = [queryCopy identifier];
  queryAgent = [(MGDaemon *)self queryAgent];
  [queryAgent removeOutstandingQuery:queryCopy];

  remoteQueryClient = [(MGDaemon *)self remoteQueryClient];
  [remoteQueryClient removeOutstandingQuery:queryCopy];

  v8 = MGLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEFAULT, "%p stopped query %@", &v9, 0x16u);
  }
}

- (id)startInternalQueryWithPredicate:(id)predicate handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  predicateCopy = predicate;
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v9 = [[MGOutstandingQuery alloc] initWithPredicate:predicateCopy];
  identifier = [(MGOutstandingQuery *)v9 identifier];
  topologyRequestHandler = [(MGDaemon *)self topologyRequestHandler];
  if ([(MGOutstandingQuery *)v9 requiresTopology])
  {
    v12 = topologyRequestHandler == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = MGLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v20 = 134218242;
      selfCopy2 = self;
      v22 = 2112;
      v23 = identifier;
      _os_log_debug_impl(&dword_25863A000, v13, OS_LOG_TYPE_DEBUG, "%p requesting topology for local query %@", &v20, 0x16u);
    }

    topologyRequestHandler[2](topologyRequestHandler);
  }

  v14 = MGLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218242;
    selfCopy2 = self;
    v22 = 2112;
    v23 = identifier;
    _os_log_impl(&dword_25863A000, v14, OS_LOG_TYPE_DEFAULT, "%p starting internal query %@", &v20, 0x16u);
  }

  internalQueries = [(MGDaemon *)self internalQueries];
  v16 = [internalQueries mutableCopy];

  v17 = MEMORY[0x259C85F90](handlerCopy);
  [v16 setObject:v17 forKey:identifier];

  [(MGDaemon *)self setInternalQueries:v16];
  queryAgent = [(MGDaemon *)self queryAgent];
  [queryAgent addOutstandingQuery:v9];

  return v9;
}

- (void)stopInternalQuery:(id)query
{
  v15 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [queryCopy identifier];
  queryAgent = [(MGDaemon *)self queryAgent];
  [queryAgent removeOutstandingQuery:queryCopy];

  internalQueries = [(MGDaemon *)self internalQueries];
  v9 = [internalQueries mutableCopy];

  [v9 removeObjectForKey:identifier];
  [(MGDaemon *)self setInternalQueries:v9];
  v10 = MGLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    selfCopy = self;
    v13 = 2112;
    v14 = identifier;
    _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p stopped internal query %@", &v11, 0x16u);
  }
}

- (void)_fetchGroupInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  v9 = [MEMORY[0x277D27440] predicateForGroup:infoCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__MGDaemon__fetchGroupInfo_completion___block_invoke;
  v14[3] = &unk_27989F918;
  objc_copyWeak(&v19, &location);
  v18 = &v20;
  v10 = infoCopy;
  v15 = v10;
  selfCopy = self;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(MGDaemon *)self startInternalQueryWithPredicate:v9 handler:v14];
  v13 = v21[5];
  v21[5] = v12;

  objc_destroyWeak(&v19);
  _Block_object_dispose(&v20, 8);

  objc_destroyWeak(&location);
}

void __39__MGDaemon__fetchGroupInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stopInternalQuery:*(*(*(a1 + 56) + 8) + 40)];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    location = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__6;
    v43 = __Block_byref_object_dispose__6;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__6;
    v37 = __Block_byref_object_dispose__6;
    v38 = 0;
    if (v6)
    {
      v11 = v6;
      v38 = v11;
      v12 = MGLogForCategory(3);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      v24 = "%p failed to internally fetch group %@";
    }

    else
    {
      if ([v5 count])
      {
        v15 = [v5 firstObject];
        v17 = [v15 group];
        v18 = [v15 mediator];
        objc_storeWeak(&location, v18);

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v47 = __Block_byref_object_copy__6;
        v48 = __Block_byref_object_dispose__6;
        v49 = 0;
        v19 = [v17 predicateForMembers];
        v20 = *(a1 + 40);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__MGDaemon__fetchGroupInfo_completion___block_invoke_159;
        v25[3] = &unk_27989F8F0;
        objc_copyWeak(&v31, (a1 + 64));
        v28 = buf;
        v29 = &v33;
        v30 = &v39;
        v27 = *(a1 + 48);
        v16 = v17;
        v26 = v16;
        objc_copyWeak(&v32, &location);
        v21 = [v20 startInternalQueryWithPredicate:v19 handler:v25];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v31);
        _Block_object_dispose(buf, 8);

        goto LABEL_7;
      }

      v12 = MGLogForCategory(3);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_4:

        v13 = *(a1 + 48);
        v14 = v40[5];
        v15 = objc_loadWeakRetained(&location);
        (*(v13 + 16))(v13, 0, v14, v15, v34[5]);
        v16 = 0;
LABEL_7:

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(&v39, 8);

        objc_destroyWeak(&location);
        goto LABEL_8;
      }

      v23 = *(a1 + 32);
      *buf = 134218242;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v23;
      v24 = "%p failed to internally find group %@";
    }

    _os_log_error_impl(&dword_25863A000, v12, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
    goto LABEL_4;
  }

LABEL_8:
}

void __39__MGDaemon__fetchGroupInfo_completion___block_invoke_159(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained stopInternalQuery:*(*(*(a1 + 48) + 8) + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      v11 = MGLogForCategory(3);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v30 = v8;
        v31 = 2112;
        v32 = v6;
        _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, "%p failed to internally fetch group members %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v24 + 1) + 8 * i) group];
            [v11 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      v18 = [v11 count];
      if (v18)
      {
        v19 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
      }

      else
      {
        v19 = 0;
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v19);
      if (v18)
      {
      }
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v22 = *(*(*(a1 + 64) + 8) + 40);
    v23 = objc_loadWeakRetained((a1 + 80));
    (*(v20 + 16))(v20, v21, v22, v23, *(*(*(a1 + 56) + 8) + 40));
  }
}

- (void)startOutstandingQueryWithPredicate:(id)predicate handler:(id)handler completion:(id)completion
{
  predicateCopy = predicate;
  handlerCopy = handler;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke;
  v21[3] = &unk_27989F940;
  v22 = handlerCopy;
  v11 = handlerCopy;
  v12 = MEMORY[0x259C85F90](v21);
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke_2;
  block[3] = &unk_27989F968;
  block[4] = self;
  v18 = predicateCopy;
  v19 = v12;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v12;
  v16 = predicateCopy;
  dispatch_async(dispatchQueue, block);
}

void __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) group];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __66__MGDaemon_startOutstandingQueryWithPredicate_handler_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startInternalQueryWithPredicate:*(a1 + 40) handler:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (void)stopOutstandingQuery:(id)query
{
  queryCopy = query;
  dispatchQueue = [(MGDaemon *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MGDaemon_stopOutstandingQuery___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(dispatchQueue, v7);
}

@end