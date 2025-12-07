@interface SLDRemoteRenderingService
+ (id)sharedService;
- (BOOL)_hasConnections;
- (SLDRemoteRenderingService)init;
- (id)_remoteContentForViewIdentifier:(id)identifier layerContextID:(unint64_t)d connection:(id)connection;
- (id)_viewIDForStyle:(id)style tag:(id)tag;
- (void)_allConnectionsDisconnected;
- (void)_connection:(id)_connection doesNotNeedViewWithIdentifier:(id)identifier;
- (void)_connection:(id)_connection onlyNeedsViewWithIdentifier:(id)identifier;
- (void)_connectionTouchedView:(id)view;
- (void)_destroyViewWithID:(id)d;
- (void)lostConnection:(id)connection;
- (void)receivedConnection:(id)connection;
@end

@implementation SLDRemoteRenderingService

- (SLDRemoteRenderingService)init
{
  v12.receiver = self;
  v12.super_class = SLDRemoteRenderingService;
  v2 = [(SLDRemoteRenderingService *)&v12 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    connectionViewIDs = v2->_connectionViewIDs;
    v2->_connectionViewIDs = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIDConnections = v2->_viewIDConnections;
    v2->_viewIDConnections = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    viewIdentifierMap = v2->_viewIdentifierMap;
    v2->_viewIdentifierMap = strongToStrongObjectsMapTable3;

    array = [MEMORY[0x277CBEB18] array];
    viewLRUCache = v2->_viewLRUCache;
    v2->_viewLRUCache = array;
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDRemoteRenderingService_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedService_onceToken_7 != -1)
  {
    dispatch_once(&sharedService_onceToken_7, block);
  }

  v2 = sharedService_sService_7;

  return v2;
}

uint64_t __42__SLDRemoteRenderingService_sharedService__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = sharedService_sService_7;
  sharedService_sService_7 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)receivedConnection:(id)connection
{
  connectionCopy = connection;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  array = [MEMORY[0x277CBEB18] array];
  [connectionViewIDs setObject:array forKey:connectionCopy];
}

- (void)lostConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v6 = [connectionViewIDs objectForKey:connectionCopy];
  v7 = [v6 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SLDRemoteRenderingService *)self _connection:connectionCopy doesNotNeedViewWithIdentifier:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  connectionViewIDs2 = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [connectionViewIDs2 removeObjectForKey:connectionCopy];

  if (![(SLDRemoteRenderingService *)self _hasConnections])
  {
    [(SLDRemoteRenderingService *)self _allConnectionsDisconnected];
  }
}

- (BOOL)_hasConnections
{
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v3 = [connectionViewIDs count] != 0;

  return v3;
}

- (void)_allConnectionsDisconnected
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "[%@] All connections have disconnected. Clearing tracking objects and niling out slot machines.", &v5, 0xCu);
  }

  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  [connectionViewIDs removeAllObjects];

  [(NSMapTable *)self->_viewIDConnections removeAllObjects];
  [(NSMapTable *)self->_viewIdentifierMap removeAllObjects];
}

- (void)_connection:(id)_connection doesNotNeedViewWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  _connectionCopy = _connection;
  identifierCopy = identifier;
  v8 = SLDaemonLogHandle(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    selfCopy = self;
    v15 = 2112;
    v16 = _connectionCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Connection [%@] does not need viewID with identifier: %@", &v13, 0x20u);
  }

  viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
  v10 = [viewIDConnections objectForKey:identifierCopy];

  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v12 = [connectionViewIDs objectForKey:_connectionCopy];

  [v10 removeObject:_connectionCopy];
  [v12 removeObject:identifierCopy];
  if (!v10 || ![v10 count])
  {
    [(SLDRemoteRenderingService *)self _destroyViewWithID:identifierCopy];
  }
}

- (void)_connection:(id)_connection onlyNeedsViewWithIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  _connectionCopy = _connection;
  identifierCopy = identifier;
  connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
  v9 = [connectionViewIDs objectForKey:_connectionCopy];
  v10 = [v9 copy];

  v11 = [v10 count];
  if (v11)
  {
    v12 = SLDaemonLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v26 = 2112;
      v27 = _connectionCopy;
      v28 = 2112;
      v29 = identifierCopy;
      _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_DEFAULT, "[%@] Connection [%@] only needs view with ID: %@", buf, 0x20u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v19 + 1) + 8 * i);
          if (([v18 isEqual:{identifierCopy, v19}] & 1) == 0)
          {
            [(SLDRemoteRenderingService *)self _connection:_connectionCopy doesNotNeedViewWithIdentifier:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)_connectionTouchedView:(id)view
{
  v35 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  viewLRUCache = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache removeObject:viewCopy];

  viewLRUCache2 = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache2 addObject:viewCopy];

  v8 = SLDaemonLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SLDRemoteRenderingService *)self _connectionTouchedView:v8];
  }

  viewLRUCache3 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v10 = [viewLRUCache3 count];

  if (v10 >= 0x21)
  {
    v12 = SLDaemonLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(SLDRemoteRenderingService *)self _connectionTouchedView:v12];
    }
  }

  viewLRUCache4 = [(SLDRemoteRenderingService *)self viewLRUCache];
  v14 = [viewLRUCache4 count];

  if (v14 >= 0x21)
  {
    do
    {
      viewLRUCache5 = [(SLDRemoteRenderingService *)self viewLRUCache];
      firstObject = [viewLRUCache5 firstObject];

      viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
      v19 = [viewIDConnections objectForKey:firstObject];
      v20 = [v19 copy];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          v25 = 0;
          do
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [(SLDRemoteRenderingService *)self _connection:*(*(&v30 + 1) + 8 * v25++) doesNotNeedViewWithIdentifier:firstObject];
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v23);
      }

      viewLRUCache6 = [(SLDRemoteRenderingService *)self viewLRUCache];
      [viewLRUCache6 removeObject:firstObject];

      viewLRUCache7 = [(SLDRemoteRenderingService *)self viewLRUCache];
      v28 = [viewLRUCache7 count];
    }

    while (v28 > 0x20);
  }

  if (v10 >= 0x21)
  {
    v29 = SLDaemonLogHandle(v15);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [(SLDRemoteRenderingService *)self _connectionTouchedView:v29];
    }
  }
}

- (void)_destroyViewWithID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = SLDaemonLogHandle(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    selfCopy = self;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Releasing view no longer needed by any connection: %@", &v22, 0x16u);
  }

  v6 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:dCopy];
  style = [dCopy style];
  v8 = [dCopy tag];
  [v6 removeContentForStyle:style tag:v8];

  viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
  [viewIDConnections removeObjectForKey:dCopy];

  viewLRUCache = [(SLDRemoteRenderingService *)self viewLRUCache];
  [viewLRUCache removeObject:dCopy];

  viewIdentifierMap = self->_viewIdentifierMap;
  style2 = [dCopy style];
  v13 = [(NSMapTable *)viewIdentifierMap objectForKey:style2];
  v14 = [dCopy tag];
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    v16 = self->_viewIdentifierMap;
    style3 = [dCopy style];
    v18 = [(NSMapTable *)v16 objectForKey:style3];

    v19 = [dCopy tag];
    [v18 removeObjectForKey:v19];

    if (![v18 count])
    {
      v20 = self->_viewIdentifierMap;
      style4 = [dCopy style];
      [(NSMapTable *)v20 removeObjectForKey:style4];
    }
  }
}

- (id)_remoteContentForViewIdentifier:(id)identifier layerContextID:(unint64_t)d connection:(id)connection
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  connectionCopy = connection;
  v10 = [(SLDRemoteRenderingService *)self slotMachineForViewIdentifier:identifierCopy];
  v11 = SLGeneralTelemetryLogHandle();
  v12 = os_signpost_id_generate(v11);

  v13 = SLGeneralTelemetryLogHandle();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  style = [identifierCopy style];
  v16 = [identifierCopy tag];
  v17 = [v10 remoteContentForLayerContextWithId:d style:style tag:v16];

  v18 = SLGeneralTelemetryLogHandle();
  v19 = v18;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v19, OS_SIGNPOST_INTERVAL_END, v12, "SlotMachineRetrieveRemoteContent", "", &v27, 2u);
  }

  if (v17)
  {
    connectionViewIDs = [(SLDRemoteRenderingService *)self connectionViewIDs];
    v22 = [connectionViewIDs objectForKey:connectionCopy];

    if (([v22 containsObject:identifierCopy]& 1) == 0)
    {
      [v22 addObject:identifierCopy];
    }

    viewIDConnections = [(SLDRemoteRenderingService *)self viewIDConnections];
    array = [viewIDConnections objectForKey:identifierCopy];

    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      viewIDConnections2 = [(SLDRemoteRenderingService *)self viewIDConnections];
      [viewIDConnections2 setObject:array forKey:identifierCopy];
    }

    if (([array containsObject:connectionCopy] & 1) == 0)
    {
      [array addObject:connectionCopy];
    }
  }

  else
  {
    v22 = SLDaemonLogHandle(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      selfCopy = self;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_error_impl(&dword_231772000, v22, OS_LOG_TYPE_ERROR, "[%@] Slot machine [%@] did not return any rendered content for viewID: %@", &v27, 0x20u);
    }
  }

  return v17;
}

- (id)_viewIDForStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  viewIdentifierMap = [(SLDRemoteRenderingService *)self viewIdentifierMap];
  v9 = [viewIdentifierMap objectForKey:styleCopy];
  v10 = [v9 objectForKey:tagCopy];

  if (!v10)
  {
    viewIdentifierMap2 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
    strongToStrongObjectsMapTable = [viewIdentifierMap2 objectForKey:styleCopy];

    if (!strongToStrongObjectsMapTable)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      viewIdentifierMap3 = [(SLDRemoteRenderingService *)self viewIdentifierMap];
      [viewIdentifierMap3 setObject:strongToStrongObjectsMapTable forKey:styleCopy];
    }

    v10 = [SLDRemoteViewIdentifier identifierForStyle:styleCopy tag:tagCopy];
    [strongToStrongObjectsMapTable setObject:v10 forKey:tagCopy];
  }

  return v10;
}

- (void)_connectionTouchedView:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 viewLRUCache];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [v4 count];
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Current unique pill count: %lu", &v5, 0x16u);
}

- (void)_connectionTouchedView:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Pruning lru cache since we've reached the limit.", &v2, 0xCu);
}

- (void)_connectionTouchedView:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "[%@] Finished pruning lru cache.", &v2, 0xCu);
}

@end