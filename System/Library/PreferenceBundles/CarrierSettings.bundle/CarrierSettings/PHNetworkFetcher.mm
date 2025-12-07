@interface PHNetworkFetcher
- (NSArray)networks;
- (PHNetworkFetcher)init;
- (void)dealloc;
- (void)fetchNetworkList;
- (void)selectNetwork:(id)network;
- (void)setState:(unint64_t)state;
- (void)updateNetworkSelectionStatus;
@end

@implementation PHNetworkFetcher

- (PHNetworkFetcher)init
{
  v14.receiver = self;
  v14.super_class = PHNetworkFetcher;
  v2 = [(PHNetworkFetcher *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = PHDefaultLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23C12D000, v4, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher initialized", buf, 2u);
    }

    array = [MEMORY[0x277CBEB18] array];
    mutableNetworks = v3->_mutableNetworks;
    v3->_mutableNetworks = array;

    v3->_state = 1;
    objc_initWeak(buf, v3);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __24__PHNetworkFetcher_init__block_invoke;
    v11[3] = &unk_278BB2508;
    objc_copyWeak(&v12, buf);
    v7 = MEMORY[0x23EEC8C60](v11);
    networkNotificationHandler = v3->_networkNotificationHandler;
    v3->_networkNotificationHandler = v7;

    v9 = MEMORY[0x277D85CD0];
    v3->_server = _CTServerConnectionCreateOnTargetQueue();

    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    _CTServerConnectionRegisterForNotification();
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __24__PHNetworkFetcher_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v6 = PHDefaultLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = a2;
    v44 = 2112;
    v45 = a3;
    _os_log_impl(&dword_23C12D000, v6, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher got notification %@: %@", buf, 0x16u);
  }

  v7 = [a2 isEqualToString:*MEMORY[0x277CC3CD8]];
  if (v7)
  {
    v36 = v5;
    v8 = PHDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v8, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher handling network list update notification", buf, 2u);
    }

    v9 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = a3;
    v10 = [a3 objectForKey:*MEMORY[0x277CC3CD0]];
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [PHNetwork networkFromDictionary:v15];
          if (v16)
          {
            v17 = PHDefaultLog([v9 addObject:v16]);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v43 = v16;
              v44 = 2112;
              v45 = v15;
              _os_log_impl(&dword_23C12D000, v17, OS_LOG_TYPE_DEFAULT, "Added a new network to new list: %@ from dictionary: %@", buf, 0x16u);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    v5 = v36;
    WeakRetained = objc_loadWeakRetained((v36 + 32));
    v19 = [WeakRetained mutableNetworks];
    v20 = [v9 isEqualToArray:v19];

    if ((v20 & 1) == 0)
    {
      v21 = objc_loadWeakRetained((v36 + 32));
      [v21 setMutableNetworks:v9];

      v23 = PHDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C12D000, v23, OS_LOG_TYPE_DEFAULT, "The networks list has changed, and we will notify", buf, 2u);
      }

      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = objc_loadWeakRetained((v36 + 32));
      [v24 postNotificationName:@"PHNetworkFetcherNetworksChangedNotification" object:v25];
    }

    v26 = [v35 objectForKey:*MEMORY[0x277CC3CE0]];
    if ([v26 BOOLValue])
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v28 = objc_loadWeakRetained((v36 + 32));
    [v28 setState:v27];
  }

  v29 = PHDefaultLog(v7);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v29, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher will update selection status of networks in response to notification", buf, 2u);
  }

  v30 = objc_loadWeakRetained((v5 + 32));
  [v30 updateNetworkSelectionStatus];

  v31 = [a2 isEqualToString:*MEMORY[0x277CC3CE8]];
  if (v31)
  {
    v32 = PHDefaultLog(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C12D000, v32, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher handling network list failure notification", buf, 2u);
    }

    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 postNotificationName:@"PHNetworkFetcherErrorNotification" object:0];

    v34 = objc_loadWeakRetained((v5 + 32));
    [v34 setState:1];
  }
}

- (NSArray)networks
{
  mutableNetworks = [(PHNetworkFetcher *)self mutableNetworks];
  v3 = [mutableNetworks copy];

  return v3;
}

- (void)fetchNetworkList
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "PHNetworkListFetcher beginning list fetch", v5, 2u);
  }

  if ([(PHNetworkFetcher *)self state]== 1)
  {
    [(NSMutableArray *)self->_mutableNetworks removeAllObjects];
    [(PHNetworkFetcher *)self setState:2];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PHNetworkFetcherNetworksChangedNotification" object:self];

    _CTServerConnectionFetchNetworkList();
  }
}

- (void)updateNetworkSelectionStatus
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C12D000, v3, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher updating network selection status", buf, 2u);
  }

  v23 = 0;
  [(PHNetworkFetcher *)self server];
  _CTServerConnectionCopyManualNetworkSelection();
  v4 = 0;
  v5 = [v4 valueForKey:*MEMORY[0x277CC3CC8]];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mutableNetworks = [(PHNetworkFetcher *)self mutableNetworks];
  v7 = [mutableNetworks countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = v4;
    v9 = *v20;
    v10 = *MEMORY[0x277CC3D28];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(mutableNetworks);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        code = [v12 code];
        v14 = [code isEqualToString:v5];

        if (v14)
        {
          *buf = 0;
          _CTServerConnectionGetNetworkSelectionState();
          if ([*buf isEqualToString:v10])
          {
            v15 = 2;
          }

          else
          {
            v15 = 3;
          }

          v16 = v12;
        }

        else
        {
          v16 = v12;
          v15 = 1;
        }

        v17 = PHDefaultLog([v16 setState:v15]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_23C12D000, v17, OS_LOG_TYPE_DEFAULT, "... updated network object: %@", buf, 0xCu);
        }
      }

      v8 = [mutableNetworks countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);

    mutableNetworks = [MEMORY[0x277CCAB98] defaultCenter];
    [mutableNetworks postNotificationName:@"PHNetworkFetcherNetworkSelectionChangedNotification" object:0];
    v4 = v18;
  }
}

- (void)setState:(unint64_t)state
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    self->_state = state;
    v5 = PHDefaultLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher state changed to %lu", &v7, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PHNetworkFetcherStateChangedNotification" object:self];
  }
}

- (void)selectNetwork:(id)network
{
  v9 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  v5 = PHDefaultLog(networkCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = networkCopy;
    _os_log_impl(&dword_23C12D000, v5, OS_LOG_TYPE_DEFAULT, "PHNetworkFetcher asked to select network %@", &v7, 0xCu);
  }

  [(PHNetworkFetcher *)self server];
  dictionaryRepresentation = [networkCopy dictionaryRepresentation];
  _CTServerConnectionSelectNetwork();

  [(PHNetworkFetcher *)self updateNetworkSelectionStatus];
}

- (void)dealloc
{
  _CTServerConnectionUnregisterForAllNotifications();
  v3.receiver = self;
  v3.super_class = PHNetworkFetcher;
  [(PHNetworkFetcher *)&v3 dealloc];
}

@end