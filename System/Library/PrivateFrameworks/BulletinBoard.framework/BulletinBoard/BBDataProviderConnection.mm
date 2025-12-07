@interface BBDataProviderConnection
- (BBDataProviderConnection)initWithServiceName:(id)name onQueue:(id)queue;
- (id)_addDataProvider:(id)provider withCompletionHandler:(id)handler;
- (id)addDataProvider:(id)provider withCompletionHandler:(id)handler;
- (void)_invalidate;
- (void)_queue_setServerProxy:(id)proxy;
- (void)addParentSectionInfo:(id)info displayName:(id)name icon:(id)icon universalSectionID:(id)d;
- (void)dealloc;
- (void)invalidate;
- (void)removeDataProviderWithSectionID:(id)d;
- (void)setServerProxy:(id)proxy;
@end

@implementation BBDataProviderConnection

- (BBDataProviderConnection)initWithServiceName:(id)name onQueue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  if (!nameCopy)
  {
    [BBDataProviderConnection initWithServiceName:a2 onQueue:self];
  }

  v9 = [(BBDataProviderConnection *)self init];
  v10 = v9;
  if (v9)
  {
    [(BBDataProviderConnection *)v9 setServiceName:nameCopy];
    if (queueCopy)
    {
      v11 = queueCopy;
      clientCalloutQueue = v10->_clientCalloutQueue;
      v10->_clientCalloutQueue = v11;
    }

    else
    {
      clientCalloutQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("BBRemoteDataProvider.clientQueue", clientCalloutQueue);
      v14 = v10->_clientCalloutQueue;
      v10->_clientCalloutQueue = v13;
    }

    v15 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderConnection.connectionQueue", 0);
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v15;

    dispatch_suspend(v10->_connectionQueue);
    v10->_connected = 0;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderConnection.queue", v17);
    queue = v10->_queue;
    v10->_queue = v18;

    dispatch_set_target_queue(v10->_connectionQueue, v10->_queue);
    v20 = [BBDataProviderConnectionResolver resolverForConnection:v10];
    connectionResolver = v10->_connectionResolver;
    v10->_connectionResolver = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dataProvidersBySectionID = v10->_dataProvidersBySectionID;
    v10->_dataProvidersBySectionID = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentFactoriesBySectionID = v10->_parentFactoriesBySectionID;
    v10->_parentFactoriesBySectionID = v24;
  }

  return v10;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BBDataProviderConnection_dealloc__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = BBDataProviderConnection;
  [(BBDataProviderConnection *)&v4 dealloc];
}

- (void)setServerProxy:(id)proxy
{
  proxyCopy = proxy;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBDataProviderConnection_setServerProxy___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = proxyCopy;
  v6 = proxyCopy;
  dispatch_async(queue, v7);
}

- (void)_queue_setServerProxy:(id)proxy
{
  v56 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dispatch_assert_queue_V2(self->_queue);
  serverProxy = self->_serverProxy;
  if (serverProxy != proxyCopy)
  {
    v28 = proxyCopy;
    v27 = serverProxy != 0;
    objc_storeStrong(&self->_serverProxy, proxy);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = self->_dataProvidersBySectionID;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v8)
    {
      v9 = *v50;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v50 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(NSMutableDictionary *)self->_dataProvidersBySectionID objectForKey:*(*(&v49 + 1) + 8 * i)];
          [v11 setServerProxy:0];
        }

        v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v8);
    }

    if (v28)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      allValues = [(NSMutableDictionary *)self->_parentFactoriesBySectionID allValues];
      v13 = [allValues countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v13)
      {
        v14 = *v46;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(allValues);
            }

            [(BBDataProviderConnectionServerProxy *)self->_serverProxy addParentSectionFactory:*(*(&v45 + 1) + 8 * j)];
          }

          v13 = [allValues countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v13);
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, self->_serverProxy);
      v16 = dispatch_group_create();
      v17 = [(NSMutableDictionary *)self->_dataProvidersBySectionID copy];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v19)
      {
        v20 = *v40;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v40 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v39 + 1) + 8 * k);
            dispatch_group_enter(v16);
            v23 = [v18 objectForKey:v22];
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __50__BBDataProviderConnection__queue_setServerProxy___block_invoke;
            v34[3] = &unk_278D2A678;
            objc_copyWeak(&v37, &location);
            objc_copyWeak(&v38, &from);
            v34[4] = v22;
            v24 = v23;
            v35 = v24;
            v36 = v16;
            [v24 updateIdentity:v34];

            objc_destroyWeak(&v38);
            objc_destroyWeak(&v37);
          }

          v19 = [v18 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v19);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_3;
      block[3] = &unk_278D2A6A0;
      objc_copyWeak(&v31, &location);
      objc_copyWeak(&v32, &from);
      v33 = v27;
      v30 = v18;
      v26 = v18;
      dispatch_group_notify(v16, queue, block);

      objc_destroyWeak(&v32);
      objc_destroyWeak(&v31);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      proxyCopy = v28;
    }

    else
    {
      proxyCopy = 0;
      if (serverProxy)
      {
        dispatch_suspend(self->_connectionQueue);
      }
    }
  }
}

void __50__BBDataProviderConnection__queue_setServerProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = v5;
  if (WeakRetained && v5 && WeakRetained[4] == v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_2;
    v9[3] = &unk_278D2A650;
    v10 = v7;
    v11 = *(a1 + 48);
    [v6 addDataProviderWithSectionID:v8 clientProxy:v10 identity:v3 completion:v9];
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setServerProxy:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained && v3 && WeakRetained[4] == v3)
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      dispatch_resume(WeakRetained[5]);
    }

    *(WeakRetained + 48) = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) objectForKey:*(*(&v13 + 1) + 8 * v9)];
          [v10 dataProviderDidLoad];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = WeakRetained[4];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_4;
    v12[3] = &unk_278D2A600;
    v12[4] = WeakRetained;
    [v11 clientIsReady:v12];
  }
}

void __50__BBDataProviderConnection__queue_setServerProxy___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(*(a1 + 32) + 72);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %@ CONNECTED", &v7, 0x16u);
  }
}

- (id)addDataProvider:(id)provider withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__BBDataProviderConnection_addDataProvider_withCompletionHandler___block_invoke;
  v10[3] = &unk_278D2A6C8;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = [(BBDataProviderConnection *)self _addDataProvider:provider withCompletionHandler:v10];

  return v8;
}

uint64_t __66__BBDataProviderConnection_addDataProvider_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_addDataProvider:(id)provider withCompletionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke;
  v13[3] = &unk_278D2A768;
  v14 = providerCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v17 = &v18;
  v9 = handlerCopy;
  v10 = providerCopy;
  dispatch_sync(queue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionIdentifier];
  v3 = [*(*(a1 + 40) + 56) objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = [[BBDataProviderProxy alloc] initWithDataProvider:*(a1 + 32) clientReplyQueue:*(*(a1 + 40) + 16)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 40) + 56) setObject:*(*(*(a1 + 56) + 8) + 40) forKey:v2];
  }

  objc_initWeak(&location, *(*(a1 + 40) + 40));
  objc_initWeak(&from, *(*(a1 + 40) + 32));
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_278D2A740;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v10 = v2;
  v14 = v10;
  v12 = *(a1 + 48);
  v11 = v12;
  v15 = v12;
  [v9 updateIdentity:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_3;
    block[3] = &unk_278D2A718;
    objc_copyWeak(&v12, (a1 + 64));
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v8 = v5;
    v11 = v6;
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(WeakRetained, block);

    objc_destroyWeak(&v12);
  }
}

void __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(v4 + 8) + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_4;
  v8[3] = &unk_278D2A6F0;
  v10 = v4;
  v9 = v3;
  [WeakRetained addDataProviderWithSectionID:v6 clientProxy:v5 identity:v7 completion:v8];
}

uint64_t __67__BBDataProviderConnection__addDataProvider_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) setServerProxy:a2];
  [*(*(*(a1 + 40) + 8) + 40) dataProviderDidLoad];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)addParentSectionInfo:(id)info displayName:(id)name icon:(id)icon universalSectionID:(id)d
{
  infoCopy = info;
  nameCopy = name;
  iconCopy = icon;
  dCopy = d;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__BBDataProviderConnection_addParentSectionInfo_displayName_icon_universalSectionID___block_invoke;
  block[3] = &unk_278D2A790;
  v20 = infoCopy;
  v21 = nameCopy;
  v22 = iconCopy;
  v23 = dCopy;
  selfCopy = self;
  v15 = dCopy;
  v16 = iconCopy;
  v17 = nameCopy;
  v18 = infoCopy;
  dispatch_async(connectionQueue, block);
}

void __85__BBDataProviderConnection_addParentSectionInfo_displayName_icon_universalSectionID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) copy];
  [v5 setDisplayName:*(a1 + 40)];
  [v5 setIcon:*(a1 + 48)];
  v2 = [BBParentSectionDataProviderFactory factoryFromSectionInfo:v5];
  [v2 setUniversalSectionIdentifier:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 64);
  v4 = [v2 sectionIdentifier];
  [v3 setObject:v2 forKey:v4];

  [*(*(a1 + 64) + 32) addParentSectionFactory:v2];
}

- (void)removeDataProviderWithSectionID:(id)d
{
  dCopy = d;
  connectionQueue = self->_connectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BBDataProviderConnection_removeDataProviderWithSectionID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(connectionQueue, v7);
}

void __60__BBDataProviderConnection_removeDataProviderWithSectionID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  [v2 setServerProxy:0];
  [*(*(a1 + 32) + 32) removeDataProviderWithSectionID:*(a1 + 40)];
}

- (void)_invalidate
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_dataProvidersBySectionID allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_dataProvidersBySectionID objectForKeyedSubscript:v8];
        [v9 setServerProxy:0];
        [(BBDataProviderConnectionServerProxy *)self->_serverProxy removeDataProviderWithSectionID:v8];
      }

      v5 = [allKeys countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_dataProvidersBySectionID removeAllObjects];
  serverProxy = self->_serverProxy;
  self->_serverProxy = 0;

  [(BBDataProviderConnectionResolver *)self->_connectionResolver invalidate];
  self->_connected = 0;
  v11 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543362;
    v18 = serviceName;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ has been invalidated", buf, 0xCu);
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BBDataProviderConnection_invalidate__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)initWithServiceName:(uint64_t)a1 onQueue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBDataProviderConnection.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

@end