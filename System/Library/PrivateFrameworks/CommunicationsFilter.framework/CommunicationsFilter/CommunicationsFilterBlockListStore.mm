@interface CommunicationsFilterBlockListStore
+ (id)sharedInstance;
- (BOOL)addItemForAllServices:(id)services;
- (BOOL)isItemInList:(id)list rebuiltBlockList:(id)blockList;
- (BOOL)removeAssociatedItems:(id)items;
- (BOOL)removeItemForAllServices:(id)services;
- (CommunicationsFilterBlockListStore)init;
- (id)_copyItems:(BOOL)items;
- (id)_isItemInList:(id)list blockList:(id)blockList;
- (void)_stopSharingFocusStatusWithFilterItem:(id)item;
- (void)_storeDidChangeExternally;
- (void)_updateStore:(id)store revision:(unint64_t)revision updateKVS:(BOOL)s updateLocal:(BOOL)local itemsNeedConversion:(BOOL)conversion;
- (void)clearBlockList;
- (void)dealloc;
- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification;
- (void)migrateLegacyDataStoreIfNeeded;
- (void)synchronizeDataStore;
- (void)updateDataStore;
@end

@implementation CommunicationsFilterBlockListStore

+ (id)sharedInstance
{
  if (qword_10001D488 != -1)
  {
    sub_100011E94();
  }

  return qword_10001D490;
}

- (void)clearBlockList
{
  cachedBlockList = self->_cachedBlockList;
  if (cachedBlockList)
  {

    self->_cachedBlockList = 0;
  }
}

- (CommunicationsFilterBlockListStore)init
{
  v6.receiver = self;
  v6.super_class = CommunicationsFilterBlockListStore;
  v2 = [(CommunicationsFilterBlockListStore *)&v6 init];
  if (v2)
  {
    v2->_dataStore = [[NSUbiquitousKeyValueStore alloc] _initWithStoreIdentifier:@"com.apple.cmfsyncagent" usingEndToEndEncryption:1];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:" object:NSUbiquitousKeyValueStoreDidChangeExternallyNotification, v2->_dataStore];
    [(CommunicationsFilterBlockListStore *)v2 synchronizeDataStore];
    IMSyncronizeAppPreferences();
    [(CommunicationsFilterBlockListStore *)v2 migrateLegacyDataStoreIfNeeded];
    if (_os_feature_enabled_impl())
    {
      v3 = objc_alloc_init(NSMutableArray);
      sub_100001670([(CommunicationsFilterBlockListStore *)v2 dataStore], v3, 0, 0, 0, 0);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100002A50;
      v5[3] = &unk_100018BD0;
      v5[4] = v2;
      v2->_contactsCache = [[CMFBlockedContactsCache alloc] initWithBlocklist:v5];
      v2->_blocklistAlertManager = objc_alloc_init(CMFBlockListAlertManager);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(CommunicationsFilterBlockListStore *)self clearBlockList];

  v3.receiver = self;
  v3.super_class = CommunicationsFilterBlockListStore;
  [(CommunicationsFilterBlockListStore *)&v3 dealloc];
}

- (void)migrateLegacyDataStoreIfNeeded
{
  v3 = [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"];
  if (v3)
  {
    v5 = sub_1000015F8(v3, v4);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 138412290;
    v13 = @"__kCMFBlockListStoreTopLevelKey";
    v6 = "Cancelling legacy data store migration; data store contains a value for key %@";
    v7 = v5;
    goto LABEL_4;
  }

  v8 = [+[NSUbiquitousKeyValueStore defaultStore](NSUbiquitousKeyValueStore objectForKey:"objectForKey:", @"__kCMFBlockListStoreTopLevelKey"];
  v10 = sub_1000015F8(v8, v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = 138412290;
      v13 = @"__kCMFBlockListStoreTopLevelKey";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing legacy data store migration for key %@", &v12, 0xCu);
    }

    [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] setObject:v8 forKey:@"__kCMFBlockListStoreTopLevelKey"];
  }

  else if (v11)
  {
    v12 = 138412290;
    v13 = @"__kCMFBlockListStoreTopLevelKey";
    v6 = "Cancelling legacy data store migration; legacy data store does not contain a value for key %@";
    v7 = v10;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, 0xCu);
  }
}

- (void)synchronizeDataStore
{
  if (objc_opt_respondsToSelector())
  {
    synchronize = [(CMFSyncAgentDataStore *)self->_dataStore synchronize];
    v4 = synchronize;
    v6 = sub_1000015F8(synchronize, v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Data store synchronization completed successfully.", v8, 2u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100011EA8(v7);
    }
  }
}

- (void)updateDataStore
{
  v3 = sub_100001E4C(self, a2);
  dispatch_assert_queue_V2(v3);
  dataStore = [(CommunicationsFilterBlockListStore *)self dataStore];
  v10 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v9 = 0;
  sub_100001670(dataStore, v5, 0, &v10, &v9 + 1, &v9);
  LODWORD(dataStore) = [v5 count] == 0;

  v6 = sub_100002D70(dataStore);
  v8 = sub_100001E4C(v6, v7);
  dispatch_async(v8, &stru_100018BF0);
}

- (void)_storeDidChangeExternally
{
  v3 = sub_1000015F8(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "manually synchronizing and triggering update", v4, 2u);
  }

  IMSyncronizeAppPreferences();
  [(CommunicationsFilterBlockListStore *)self updateDataStore];
}

- (BOOL)addItemForAllServices:(id)services
{
  if (services)
  {
    v16 = 0;
    v5 = objc_alloc_init(NSMutableArray);
    v15 = 0;
    [(CommunicationsFilterBlockListStore *)self clearBlockList];
    sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, 0, &v16, &v15 + 1, &v15);
    v6 = [v5 count];
    if (v6 >= 0x4E21)
    {
      v8 = sub_1000015F8(v6, v7);
      v9 = 0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = 20000;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Block list is too large, greater than %d, not adding", buf, 8u);
        v9 = 0;
      }

      goto LABEL_15;
    }

    v11 = [(CommunicationsFilterBlockListStore *)self _isItemInList:services blockList:v5];
    v9 = v11 == 0;
    if (v11)
    {
      v12 = HIBYTE(v15);
      v13 = HIBYTE(v15) ^ 1 | v15;
      if ((v15 & 0x100) == 0 && (v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v5 addObject:services];
      ++v16;
      v12 = 1;
      v15 = 257;
      v13 = 1;
    }

    [(CommunicationsFilterBlockListStore *)self _updateStore:v5 revision:v16 updateKVS:v13 & 1 updateLocal:v12 & 1 itemsNeedConversion:1];
    [(CommunicationsFilterBlockListStore *)self _stopSharingFocusStatusWithFilterItem:services];
LABEL_14:
    sub_100002D70([v5 count] == 0);
LABEL_15:

    return v9;
  }

  v10 = sub_1000015F8(self, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_100011EEC(v10);
  }

  return 0;
}

- (BOOL)removeItemForAllServices:(id)services
{
  v5 = sub_1000015F8(self, a2);
  v6 = v5;
  if (services)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = services;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to remove %@", buf, 0xCu);
    }

    if (_os_feature_enabled_impl())
    {
      return [(CommunicationsFilterBlockListStore *)self removeAssociatedItems:services];
    }

    *buf = 0;
    v13 = 0;
    [(CommunicationsFilterBlockListStore *)self clearBlockList];
    v8 = objc_alloc_init(NSMutableArray);
    sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v8, 0, buf, &v13 + 1, &v13);
    v9 = [(CommunicationsFilterBlockListStore *)self _isItemInList:services blockList:v8];
    v7 = v9 != 0;
    if (v9)
    {
      [v8 removeObject:v9];
      ++*buf;
      v10 = 1;
      v13 = 257;
      v11 = 1;
    }

    else
    {
      v10 = HIBYTE(v13);
      v11 = HIBYTE(v13) ^ 1 | v13;
      if ((v13 & 0x100) == 0 && (v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    [(CommunicationsFilterBlockListStore *)self _updateStore:v8 revision:*buf updateKVS:v11 & 1 updateLocal:v10 & 1 itemsNeedConversion:1];
LABEL_12:
    sub_100002D70([v8 count] == 0);

    return v7;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100011F30(v6);
  }

  return 0;
}

- (BOOL)removeAssociatedItems:(id)items
{
  v27 = 0;
  v26 = 0;
  [(CommunicationsFilterBlockListStore *)self clearBlockList];
  v5 = objc_alloc_init(NSMutableArray);
  sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, 0, &v27, &v26 + 1, &v26);
  v6 = [(CommunicationsFilterBlockListStore *)self isItemInList:items rebuiltBlockList:v5];
  if (!v6)
  {
    v20 = sub_1000015F8(v6, v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No need to query associated handles, we've already removed them", buf, 2u);
    }

    goto LABEL_17;
  }

  v8 = [(CMFBlockedContactsCache *)self->_contactsCache associatedContacts:items];
  v9 = [v8 objectForKeyedSubscript:@"associatedFilterItems"];
  v10 = [v8 objectForKeyedSubscript:@"associatedContacts"];
  v12 = sub_1000015F8(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Remove the following handles: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v23;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v9);
      }

      v18 = [(CommunicationsFilterBlockListStore *)self _isItemInList:*(*(&v22 + 1) + 8 * i) blockList:v5];
      if (v18)
      {
        [v5 removeObject:v18];
        v15 = 1;
      }
    }

    v14 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v14);
  if ((v15 & 1) == 0)
  {
LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v19 = 1;
  v26 = 257;
  ++v27;
  [(CMFBlockListAlertManager *)self->_blocklistAlertManager postBlockListChangeAlertIfNecessaryWithUpdatedContacts:v10];
LABEL_18:
  if (v26 & 0x100) != 0 || (v26)
  {
    [CommunicationsFilterBlockListStore _updateStore:"_updateStore:revision:updateKVS:updateLocal:itemsNeedConversion:" revision:v5 updateKVS:v27 updateLocal:v26 & 1u | ((v26 & 0x100) == 0) itemsNeedConversion:?];
  }

  sub_100002D70([v5 count] == 0);

  return v19;
}

- (id)_copyItems:(BOOL)items
{
  itemsCopy = items;
  v38 = 0;
  v37 = 0;
  [(CommunicationsFilterBlockListStore *)self clearBlockList];
  v5 = objc_alloc_init(NSMutableArray);
  sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, itemsCopy, &v38, &v37 + 1, &v37);
  if (v37 & 0x100) != 0 || (v37)
  {
    [CommunicationsFilterBlockListStore _updateStore:"_updateStore:revision:updateKVS:updateLocal:itemsNeedConversion:" revision:v5 updateKVS:v38 updateLocal:v37 & 1u | ((v37 & 0x100) == 0) itemsNeedConversion:?];
  }

  if (!_os_feature_enabled_impl())
  {
    return v5;
  }

  getBlockedCache = [(CMFBlockedContactsCache *)[(CommunicationsFilterBlockListStore *)self contactsCache] getBlockedCache];
  v7 = objc_alloc_init(NSMutableArray);
  if (itemsCopy)
  {
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v8 = [getBlockedCache countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(getBlockedCache);
          }

          [v7 addObject:{objc_msgSend(*(*(&v33 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [getBlockedCache countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v9);
    }

    v12 = [v7 arrayByAddingObjectsFromArray:v5];
    v13 = v12;

    v16 = sub_1000015F8(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 count];
      *buf = 134217984;
      v41 = v17;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Returning blockList with size %lu", buf, 0xCu);
    }
  }

  else
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v18 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v5);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v22];
          }

          else
          {
            v23 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:v22];
            if (v23)
            {
              [v7 addObject:v23];
            }
          }
        }

        v19 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v19);
    }

    v12 = [v7 arrayByAddingObjectsFromArray:getBlockedCache];
    v24 = v12;

    v16 = sub_1000015F8(v25, v26);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v12 count];
      *buf = 134217984;
      v41 = v27;
      goto LABEL_30;
    }
  }

  return v12;
}

- (id)_isItemInList:(id)list blockList:(id)blockList
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [blockList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(blockList);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 matchesFilterItem:list])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [blockList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isItemInList:(id)list rebuiltBlockList:(id)blockList
{
  v13 = 0;
  v12 = 0;
  if (![(CommunicationsFilterBlockListStore *)self cachedBlockList])
  {
    if (!blockList)
    {
      blockList = +[NSMutableArray array];
      sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], blockList, 0, &v13, &v12 + 1, &v12);
    }

    [(CommunicationsFilterBlockListStore *)self setCachedBlockList:blockList];
  }

  v7 = [(CommunicationsFilterBlockListStore *)self _isItemInList:list blockList:[(CommunicationsFilterBlockListStore *)self cachedBlockList]];
  if ((v12 & 0x100) != 0 || v12 == 1)
  {
    cachedBlockList = [(CommunicationsFilterBlockListStore *)self cachedBlockList];
    [(CommunicationsFilterBlockListStore *)self _updateStore:cachedBlockList revision:v13 updateKVS:v12 updateLocal:HIBYTE(v12) itemsNeedConversion:1];
  }

  v9 = _os_feature_enabled_impl();
  v10 = v9;
  if (v7)
  {
    LOBYTE(v9) = 1;
  }

  if (v10 && !v7)
  {
    LOBYTE(v9) = [(CMFBlockedContactsCache *)self->_contactsCache isItemBlocked:list];
  }

  return v9;
}

- (void)_updateStore:(id)store revision:(unint64_t)revision updateKVS:(BOOL)s updateLocal:(BOOL)local itemsNeedConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  localCopy = local;
  sCopy = s;
  if (s || local)
  {
    if (_os_feature_enabled_impl())
    {
      revisionCopy = revision;
      selfCopy = self;
      v13 = objc_alloc_init(NSMutableArray);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v14 = [store countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = *v39;
        do
        {
          v18 = 0;
          do
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(store);
            }

            v19 = *(*(&v38 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v19];
            }

            else
            {
              v20 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:v19];
              if (v20)
              {
                [v13 addObject:v20];
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v14 = [store countByEnumeratingWithState:&v38 objects:v46 count:16];
          v16 = v14;
        }

        while (v14);
      }

      v21 = sub_1000015F8(v14, v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Regenerating contacts cache", buf, 2u);
      }

      self = selfCopy;
      [(CMFBlockedContactsCache *)[(CommunicationsFilterBlockListStore *)selfCopy contactsCache] updateCacheWithBlocklist:v13];

      revision = revisionCopy;
    }

    if (sCopy && localCopy)
    {
      if (conversionCopy)
      {
        v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [store count]);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = [store countByEnumeratingWithState:&v42 objects:buf count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v43;
          do
          {
            v26 = 0;
            do
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(store);
              }

              -[NSMutableArray addObject:](v22, "addObject:", [*(*(&v42 + 1) + 8 * v26) dictionaryRepresentation]);
              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [store countByEnumeratingWithState:&v42 objects:buf count:16];
          }

          while (v24);
        }

        store = v22;
      }

      v27 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1), @"__kCMFBlockListStoreVersionKey", store, @"__kCMFBlockListStoreArrayKey", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", revision), @"__kCMFBlockListStoreRevisionKey", +[NSDate date], @"__kCMFBlockListStoreRevisionTimestampKey", @"__kCMFBlockListStoreTypeValue", @"__kCMFBlockListStoreTypeKey", 0);
    }

    else
    {
      v27 = sCopy ? IMGetAppValueForKey() : [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"];
    }

    v29 = v27;
    if (v27)
    {
      v30 = sub_1000015F8(v27, v28);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        v35 = sub_100001BF8(v29);
        *buf = 138412802;
        v48 = v35;
        v49 = 1024;
        v50 = sCopy;
        v51 = 1024;
        v52 = localCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "updating store to %@, updateKVS: %d, updateLocal: %d", buf, 0x18u);
        if (!sCopy)
        {
LABEL_37:
          if (!localCopy)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else if (!sCopy)
      {
        goto LABEL_37;
      }

      v31 = [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] setObject:v29 forKey:@"__kCMFBlockListStoreTopLevelKey"];
      if (!localCopy)
      {
LABEL_39:
        v33 = sub_1000015F8(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = sub_100001BF8([(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"]);
          *buf = 138412802;
          v48 = v34;
          v49 = 1024;
          v50 = sCopy;
          v51 = 1024;
          v52 = localCopy;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "store after updating %@, updateKVS:%d, updateLocal:%d", buf, 0x18u);
        }

        return;
      }

LABEL_38:
      IMSetAppValueForKey();
      v31 = IMSyncronizeAppPreferences();
      goto LABEL_39;
    }
  }
}

- (void)_stopSharingFocusStatusWithFilterItem:(id)item
{
  unformattedID = [item unformattedID];
  v4 = [unformattedID length];
  if (v4)
  {
    v6 = sub_1000015F8(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = unformattedID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asking StatusKit to remove sharing of focus status with handle %@", &v9, 0xCu);
    }

    v7 = IMWeakLinkClass();
    v8 = IMWeakLinkClass();
    [objc_msgSend([v8 alloc] initWithStatusTypeIdentifier:{*IMWeakLinkSymbol()), "removeInvitedHandle:completion:", objc_msgSend([v7 alloc], "initWithString:", unformattedID), &stru_100018C30}];
  }
}

- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (!userInfo)
  {
    goto LABEL_7;
  }

  v7 = [userInfo objectForKeyedSubscript:NSUbiquitousKeyValueStoreChangeReasonKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = sub_1000015F8(isKindOfClass, v9);
    userInfo = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (userInfo)
    {
      sub_100011FEC(v7, v10);
    }

    goto LABEL_7;
  }

  userInfo = [v7 integerValue];
  if (userInfo != 2)
  {
LABEL_7:
    v11 = sub_100001E4C(userInfo, v6);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000041DC;
    v12[3] = &unk_100018C58;
    v12[4] = self;
    v12[5] = notification;
    dispatch_async(v11, v12);
  }
}

@end