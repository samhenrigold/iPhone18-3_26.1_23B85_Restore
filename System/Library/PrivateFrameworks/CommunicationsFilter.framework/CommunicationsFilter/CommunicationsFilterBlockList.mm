@interface CommunicationsFilterBlockList
+ (id)sharedInstance;
- (BOOL)isItemInList:(id)list;
- (CommunicationsFilterBlockList)init;
- (CommunicationsFilterBlockList)initWithXPCService:(id)service;
- (id)areItemsInList:(id)list;
- (id)copyAllItems;
- (void)addItemForAllServices:(id)services;
- (void)dealloc;
- (void)removeItemForAllServices:(id)services;
@end

@implementation CommunicationsFilterBlockList

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[CommunicationsFilterBlockList sharedInstance];
  }

  return sharedInstance_sInstance;
}

- (id)copyAllItems
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, CMFXPCEventCode, 2);
  v4 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v3];
  xpc_release(v3);
  isKindOfClass = [v4 objectForKey:CMFDictionaryResultKey];
  if (isKindOfClass && (v7 = isKindOfClass, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            v14 = v13;
            [v8 addObject:v13];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = CMFDefaultLog(isKindOfClass, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CommunicationsFilterBlockList *)v15 copyAllItems];
    }

    return 0;
  }

  return v8;
}

CommunicationsFilterBlockList *__47__CommunicationsFilterBlockList_sharedInstance__block_invoke()
{
  result = objc_alloc_init(CommunicationsFilterBlockList);
  sharedInstance_sInstance = result;
  return result;
}

- (CommunicationsFilterBlockList)init
{
  v3 = objc_alloc_init(CMFXPCService);
  v4 = [(CommunicationsFilterBlockList *)self initWithXPCService:v3];

  return v4;
}

- (CommunicationsFilterBlockList)initWithXPCService:(id)service
{
  v6.receiver = self;
  v6.super_class = CommunicationsFilterBlockList;
  v4 = [(CommunicationsFilterBlockList *)&v6 init];
  if (v4)
  {
    v4->_cache = objc_alloc_init(CommunicationsFilterBlockListCache);
    v4->_queue = dispatch_queue_create("com.apple.cmfblocklist", 0);
    v4->_xpcService = service;
  }

  return v4;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  self->_queue = 0;
  v3.receiver = self;
  v3.super_class = CommunicationsFilterBlockList;
  [(CommunicationsFilterBlockList *)&v3 dealloc];
}

- (void)addItemForAllServices:(id)services
{
  dictionaryRepresentation = [services dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    v7 = dictionaryRepresentation;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v8, CMFXPCEventCode, 0);
    IMInsertDictionariesToXPCDictionary();
    [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v8, v7, 0];
    xpc_release(v8);
    cache = self->_cache;

    [(CommunicationsFilterBlockListCache *)cache removeItemFromCache:services];
  }

  else
  {
    v10 = CMFDefaultLog(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CommunicationsFilterBlockList addItemForAllServices:v10];
    }
  }
}

- (void)removeItemForAllServices:(id)services
{
  dictionaryRepresentation = [services dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    v7 = dictionaryRepresentation;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v8, CMFXPCEventCode, 1);
    IMInsertDictionariesToXPCDictionary();
    [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v8, v7, 0];
    xpc_release(v8);
    cache = self->_cache;

    [(CommunicationsFilterBlockListCache *)cache removeItemFromCache:services];
  }

  else
  {
    v10 = CMFDefaultLog(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [CommunicationsFilterBlockList removeItemForAllServices:v10];
    }
  }
}

- (BOOL)isItemInList:(id)list
{
  v5 = [(CommunicationsFilterBlockListCache *)self->_cache cachedResponseForItem:?];
  v7 = CMFDefaultLog(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 == -1)
  {
    if (v8)
    {
      *v16 = 0;
      _os_log_impl(&dword_243BDE000, v7, OS_LOG_TYPE_DEFAULT, "Item not in the cache.", v16, 2u);
    }

    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v10, CMFXPCEventCode, 3);
    dictionaryRepresentation = [list dictionaryRepresentation];
    IMInsertDictionariesToXPCDictionary();
    v11 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v10, dictionaryRepresentation, 0];
    xpc_release(v10);
    v9 = [v11 objectForKey:CMFDictionaryResultKey];
    if (v9)
    {
      v12 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[CommunicationsFilterBlockListCache setResponse:forItem:](self->_cache, "setResponse:forItem:", [v12 BOOLValue], list);
        LOBYTE(v9) = [v12 BOOLValue];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_243BDE000, v7, OS_LOG_TYPE_DEFAULT, "Item in the cache.", buf, 2u);
    }

    LOBYTE(v9) = v5 == 1;
  }

  return v9;
}

- (id)areItemsInList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  if (!list || ![list count])
  {
    return MEMORY[0x277CBEC10];
  }

  v29 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(list, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [list countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(list);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [(CommunicationsFilterBlockListCache *)self->_cache cachedResponseForItem:v10];
            if (v11 == -1)
            {
              [v5 addObject:v10];
            }

            else
            {
              [v29 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v11 == 1), v10}];
            }
          }
        }
      }

      v7 = [list countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [v12 addObject:dictionaryRepresentation];
          }
        }

        v14 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v14);
    }

    if ([v12 count])
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v18, CMFXPCEventCode, 4);
      IMInsertDictionariesToXPCDictionary();
      v19 = [(CMFXPCServiceProtocol *)self->_xpcService sendSynchronousXPCRequest:v18, v12, 0];
      xpc_release(v18);
      v20 = [v19 objectForKey:CMFDictionaryResultKey];
      if (v20)
      {
        v21 = v20;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v22 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v31;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v5);
                }

                v26 = *(*(&v30 + 1) + 8 * k);
                bOOLValue = [v21 objectForKey:{objc_msgSend(v26, "unformattedID")}];
                if (bOOLValue)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    bOOLValue = [bOOLValue BOOLValue];
                  }

                  else
                  {
                    bOOLValue = 0;
                  }
                }

                [(CommunicationsFilterBlockListCache *)self->_cache setResponse:bOOLValue forItem:v26];
                [v29 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", bOOLValue), v26}];
              }

              v23 = [v5 countByEnumeratingWithState:&v30 objects:v42 count:16];
            }

            while (v23);
          }
        }
      }
    }
  }

  return v29;
}

@end