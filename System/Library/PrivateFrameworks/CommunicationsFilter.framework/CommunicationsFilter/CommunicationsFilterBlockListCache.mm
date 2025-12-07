@interface CommunicationsFilterBlockListCache
- (CommunicationsFilterBlockListCache)init;
- (int64_t)cachedResponseForItem:(id)item;
- (void)removeItemFromCache:(id)cache;
- (void)setResponse:(BOOL)response forItem:(id)item;
- (void)syncListEmptyState;
@end

@implementation CommunicationsFilterBlockListCache

- (CommunicationsFilterBlockListCache)init
{
  v17.receiver = self;
  v17.super_class = CommunicationsFilterBlockListCache;
  v2 = [(CommunicationsFilterBlockListCache *)&v17 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [CMFNotificationObserver alloc];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(CMFSyncAgentBlockListUpdated, "UTF8String")}];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__CommunicationsFilterBlockListCache_init__block_invoke;
    v14[3] = &unk_278DE6DE8;
    objc_copyWeak(&v15, &location);
    v7 = [(CMFNotificationObserver *)v3 initWithName:v4 queue:v5 callback:v14];
    blockListUpdateObserver = v2->_blockListUpdateObserver;
    v2->_blockListUpdateObserver = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    recentItems = v2->_recentItems;
    v2->_recentItems = v9;

    v2->_listIsEmpty = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__CommunicationsFilterBlockListCache_init__block_invoke_2;
    handler[3] = &unk_278DE6E10;
    v13 = v2;
    notify_register_dispatch("_CMFBlockListIsEmptyToken", &v2->_notifyEmptyListToken, MEMORY[0x277D85CD0], handler);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__CommunicationsFilterBlockListCache_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _blockListChanged];
    WeakRetained = v2;
  }
}

void __42__CommunicationsFilterBlockListCache_init__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_sync_enter(v2);
  v5 = CMFDefaultLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BDE000, v5, OS_LOG_TYPE_DEFAULT, "Notify empty token changed.", v6, 2u);
  }

  [*(a1 + 32) syncListEmptyState];
  objc_sync_exit(v2);
}

- (int64_t)cachedResponseForItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  if (selfCopy->_listIsEmpty)
  {
    v8 = CMFDefaultLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243BDE000, v8, OS_LOG_TYPE_DEFAULT, "Since _listIsEmpty return NO", buf, 2u);
    }

    isInList = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = selfCopy->_recentItems;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = *v17;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if ([v14 matchesItem:{itemCopy, v16}])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v8 = v14;

      if (!v8)
      {
        goto LABEL_16;
      }

      isInList = [v8 isInList];
    }

    else
    {
LABEL_13:

      v8 = 0;
LABEL_16:
      isInList = -1;
    }
  }

  objc_sync_exit(selfCopy);
  return isInList;
}

- (void)removeItemFromCache:(id)cache
{
  v21 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = selfCopy->_recentItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 matchesItem:cacheCopy])
        {
          v13 = v10;

          if (v13)
          {
            v11 = [(NSMutableArray *)selfCopy->_recentItems removeObject:v13];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:
  v14 = CMFDefaultLog(v11, v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_243BDE000, v14, OS_LOG_TYPE_DEFAULT, "", v15, 2u);
  }

  [(CommunicationsFilterBlockListCache *)selfCopy syncListEmptyState];
  objc_sync_exit(selfCopy);
}

- (void)setResponse:(BOOL)response forItem:(id)item
{
  responseCopy = response;
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = selfCopy->_recentItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      if ([v12 matchesItem:{itemCopy, v18}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_12;
    }

    [(NSMutableArray *)selfCopy->_recentItems removeObject:v13];
    [(NSMutableArray *)selfCopy->_recentItems insertObject:v13 atIndex:0];
    v14 = [v13 setIsInList:responseCopy];
  }

  else
  {
LABEL_9:

LABEL_12:
    if ([(NSMutableArray *)selfCopy->_recentItems count]>= 0xA)
    {
      [(NSMutableArray *)selfCopy->_recentItems removeLastObject];
    }

    v16 = [[CommunicationFilterItemCache alloc] initWithFilterItem:itemCopy isInList:-1];
    [(NSMutableArray *)selfCopy->_recentItems insertObject:v16 atIndex:0];

    v13 = 0;
  }

  v17 = CMFDefaultLog(v14, v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = responseCopy;
    _os_log_impl(&dword_243BDE000, v17, OS_LOG_TYPE_DEFAULT, "cache setResponse = %d", buf, 8u);
  }

  objc_sync_exit(selfCopy);
}

- (void)syncListEmptyState
{
  state64 = self->_listIsEmpty;
  state = notify_get_state(self->_notifyEmptyListToken, &state64);
  v4 = state64;
  self->_listIsEmpty = state64 != 0;
  v6 = CMFDefaultLog(state, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v11 = 0;
      v8 = "Our list is empty.";
      v9 = &v11;
LABEL_6:
      _os_log_impl(&dword_243BDE000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else if (v7)
  {
    v10 = 0;
    v8 = "Our list is not empty.";
    v9 = &v10;
    goto LABEL_6;
  }
}

@end