@interface IMPhotoLibraryPersistenceManager
+ (id)_assetFetchQueue;
+ (id)_photoLibraryInternalQueue;
+ (id)photosSyndicationIdentifiersForMessage:(id)message transcriptChatItem:(id)item;
+ (id)sharedInstance;
- (BOOL)_invalidateCacheDueToChanges:(id)changes;
- (BOOL)_isListenerRegistered:(id)registered;
- (IMPhotoLibraryPersistenceManager)init;
- (NSHashTable)listeners;
- (id)_cachedSaveStateForIdentifier:(id)identifier;
- (unint64_t)cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)library shouldFetchAndNotifyAsNeeded:(BOOL)needed didStartFetch:(BOOL *)fetch;
- (void)__notifyListeners;
- (void)_coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary;
- (void)_invalidateCaches;
- (void)_notifyListeners;
- (void)_openPhotoLibraryIfNecessary;
- (void)cacheCompletedSaveForSyndicationIdentifiers:(id)identifiers;
- (void)fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)library completion:(id)completion;
- (void)photoLibraryDidChange:(id)change;
- (void)registerPhotoLibraryPersistenceManagerListener:(id)listener;
- (void)registerPhotoLibraryPersistenceManagerSession:(id)session;
- (void)unregisterAllPhotoLibraryPersistenceManagerListeners;
- (void)unregisterPhotoLibraryPersistenceManagerListener:(id)listener;
- (void)unregisterPhotoLibraryPersistenceManagerSession:(id)session;
@end

@implementation IMPhotoLibraryPersistenceManager

+ (id)sharedInstance
{
  if (qword_1ED767898 != -1)
  {
    sub_1A84E0374();
  }

  v3 = qword_1ED767860;

  return v3;
}

- (IMPhotoLibraryPersistenceManager)init
{
  v17.receiver = self;
  v17.super_class = IMPhotoLibraryPersistenceManager;
  v2 = [(IMPhotoLibraryPersistenceManager *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierSaveStateCache = v2->_syndicationIdentifierSaveStateCache;
    v2->_syndicationIdentifierSaveStateCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierFetchResultCache = v2->_syndicationIdentifierFetchResultCache;
    v2->_syndicationIdentifierFetchResultCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    syndicationIdentifierToAssetUUIDCache = v2->_syndicationIdentifierToAssetUUIDCache;
    v2->_syndicationIdentifierToAssetUUIDCache = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    syndicationIdentifiersPendingFetch = v2->_syndicationIdentifiersPendingFetch;
    v2->_syndicationIdentifiersPendingFetch = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    syndicationIdentifiersWithActiveFetch = v2->_syndicationIdentifiersWithActiveFetch;
    v2->_syndicationIdentifiersWithActiveFetch = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    sessions = v2->_sessions;
    v2->_sessions = v13;

    photoLibrary = v2->_photoLibrary;
    v2->_photoLibrary = 0;
  }

  return v2;
}

+ (id)_assetFetchQueue
{
  if (qword_1EB2E9178 != -1)
  {
    sub_1A84E0388();
  }

  v3 = qword_1EB2E9170;

  return v3;
}

+ (id)_photoLibraryInternalQueue
{
  if (qword_1EB2E9128 != -1)
  {
    sub_1A84E039C();
  }

  v3 = qword_1EB2E9120;

  return v3;
}

+ (id)photosSyndicationIdentifiersForMessage:(id)message transcriptChatItem:(id)item
{
  v23[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  itemCopy = item;
  if (messageCopy)
  {
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v8 = [fileTransferGUIDs count];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        message = [itemCopy message];
        fileTransferGUIDs2 = [message fileTransferGUIDs];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_8;
        }

        transferGUID = [itemCopy transferGUID];
        message = transferGUID;
        if (!transferGUID)
        {
          v11 = MEMORY[0x1E695E0F0];
          goto LABEL_7;
        }

        v23[0] = transferGUID;
        fileTransferGUIDs2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      }

      v11 = fileTransferGUIDs2;
LABEL_7:

LABEL_8:
      v12 = objc_opt_new();
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = sub_1A83005FC;
      v20 = &unk_1E7811580;
      v21 = messageCopy;
      v22 = v12;
      v13 = v12;
      [v11 enumerateObjectsUsingBlock:&v17];
      v14 = [v13 copy];

      goto LABEL_10;
    }
  }

  v14 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v14;
}

- (BOOL)_invalidateCacheDueToChanges:(id)changes
{
  v34 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Invalidating cache", buf, 2u);
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion] && (objc_msgSend(changesCopy, "deletedObjectIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count") == 0, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Not flushing save state cache as there were no deletions", buf, 2u);
      }
    }

    v8 = 0;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_syndicationIdentifierFetchResultCache allKeys];
    v8 = 0;
    v9 = [allKeys countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = *v28;
      obj = allKeys;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)selfCopy->_syndicationIdentifierFetchResultCache objectForKey:v12];
          v14 = [changesCopy changeDetailsForFetchResult:v13];
          v15 = v14;
          if (v14)
          {
            fetchResultAfterChanges = [v14 fetchResultAfterChanges];
            if (fetchResultAfterChanges)
            {
              fetchResultAfterChanges2 = [v15 fetchResultAfterChanges];
              v18 = [fetchResultAfterChanges2 count];

              fetchResultBeforeChanges = [v15 fetchResultBeforeChanges];
              v20 = [fetchResultBeforeChanges count];

              [(NSMutableDictionary *)selfCopy->_syndicationIdentifierFetchResultCache setObject:fetchResultAfterChanges forKey:v12];
              v8 = (v18 != 0) ^ (v20 != 0);
            }

            else
            {
              [(NSMutableDictionary *)selfCopy->_syndicationIdentifierFetchResultCache removeObjectForKey:v12];
              v8 = 1;
            }
          }
        }

        allKeys = obj;
        v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v9);
    }

    [(NSMutableDictionary *)selfCopy->_syndicationIdentifierToAssetUUIDCache removeAllObjects];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v32 = v8 & 1;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Photo library changed, will invalidate %d", buf, 8u);
      }
    }
  }

  objc_sync_exit(selfCopy);

  return v8 & 1;
}

- (id)_cachedSaveStateForIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69A8020];
  identifierCopy = identifier;
  if ([v4 IMDeviceIsChinaRegion])
  {
    v6 = [(NSMutableDictionary *)self->_syndicationIdentifierSaveStateCache objectForKey:identifierCopy];
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_syndicationIdentifierFetchResultCache objectForKey:identifierCopy];

    if (v7)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "count") != 0}];
    }

    else
    {
      v6 = 0;
    }

    identifierCopy = v7;
  }

  return v6;
}

- (unint64_t)cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)library shouldFetchAndNotifyAsNeeded:(BOOL)needed didStartFetch:(BOOL *)fetch
{
  neededCopy = needed;
  v37 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v9 = libraryCopy;
  if (fetch)
  {
    *fetch = 0;
  }

  if ([libraryCopy count])
  {
    v26 = neededCopy;
    fetchCopy = fetch;
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v9;
    v10 = v9;
    v11 = 0;
    v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v17 = [(IMPhotoLibraryPersistenceManager *)selfCopy _cachedSaveStateForIdentifier:v15];
          objc_sync_exit(selfCopy);

          if (v17)
          {
            if ([v17 BOOLValue])
            {
              ++v11;
            }
          }

          else if (([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion] & 1) == 0)
          {
            v18 = selfCopy;
            objc_sync_enter(v18);
            v19 = [(NSMutableSet *)self->_syndicationIdentifiersWithActiveFetch containsObject:v15];
            objc_sync_exit(v18);

            if ((v19 & 1) == 0)
            {
              [v27 addObject:v15];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    if (v26 && [v27 count])
    {
      if (fetchCopy)
      {
        *fetchCopy = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v27 count];
          *buf = 136315394;
          v33 = "[IMPhotoLibraryPersistenceManager cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:shouldFetchAndNotifyAsNeeded:didStartFetch:]";
          v34 = 2048;
          v35 = v21;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "%s Adding %lu identifiers to coalesced fetch", buf, 0x16u);
        }
      }

      syndicationIdentifiersPendingFetch = [(IMPhotoLibraryPersistenceManager *)self syndicationIdentifiersPendingFetch];
      [syndicationIdentifiersPendingFetch unionSet:v27];

      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary object:0];
      [(IMPhotoLibraryPersistenceManager *)self performSelector:sel__coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary withObject:0 afterDelay:0.25];
    }

    v9 = v25;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)cacheCompletedSaveForSyndicationIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = identifiersCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      v8 = MEMORY[0x1E695E118];
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          selfCopy = self;
          objc_sync_enter(selfCopy);
          [(NSMutableDictionary *)self->_syndicationIdentifierSaveStateCache setObject:v8 forKey:v10, v12];
          objc_sync_exit(selfCopy);

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_coalescedFetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary
{
  v19 = *MEMORY[0x1E69E9840];
  syndicationIdentifiersPendingFetch = [(IMPhotoLibraryPersistenceManager *)self syndicationIdentifiersPendingFetch];
  v4 = [syndicationIdentifiersPendingFetch count];

  if (v4)
  {
    syndicationIdentifiersPendingFetch2 = [(IMPhotoLibraryPersistenceManager *)self syndicationIdentifiersPendingFetch];
    v6 = [syndicationIdentifiersPendingFetch2 copy];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v17 = 134217984;
        v18 = [v6 count];
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Fetching %lu identifiers that weren't cached", &v17, 0xCu);
      }
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1A83013E4;
    v14 = &unk_1E7812040;
    v15 = v6;
    selfCopy = self;
    v8 = v6;
    [(IMPhotoLibraryPersistenceManager *)self fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:v8 completion:&v11];
    v9 = [(IMPhotoLibraryPersistenceManager *)self syndicationIdentifiersPendingFetch:v11];
    [v9 removeAllObjects];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "IMPhotoLibraryPersistenceManager -- syndicationIdentifiersPendingFetch cleared before fetch could begin, this is an invalid state", &v17, 2u);
    }
  }
}

- (void)fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:(id)library completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  completionCopy = completion;
  v29 = libraryCopy;
  if ([libraryCopy count])
  {
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_1A8259BA0;
    v50 = sub_1A825AEFC;
    v51 = 0;
    v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = libraryCopy;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v58 count:16];
    v28 = completionCopy;
    if (v9)
    {
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v14 = [(IMPhotoLibraryPersistenceManager *)selfCopy _cachedSaveStateForIdentifier:v12];
          if (!v47[5])
          {
            v15 = [(NSMutableDictionary *)self->_syndicationIdentifierToAssetUUIDCache objectForKey:v12];
            v16 = v47[5];
            v47[5] = v15;
          }

          objc_sync_exit(selfCopy);

          if (v14)
          {
            if ([v14 BOOLValue])
            {
              ++v53[3];
            }
          }

          else if (([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion] & 1) == 0)
          {
            v17 = selfCopy;
            objc_sync_enter(v17);
            v18 = [(NSMutableSet *)self->_syndicationIdentifiersWithActiveFetch containsObject:v12];
            objc_sync_exit(v17);

            if ((v18 & 1) == 0)
            {
              [v30 addObject:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v9);
    }

    if ([v30 count] && (sub_1A8301A70(), (objc_opt_respondsToSelector() & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v30 count];
          *buf = 136315394;
          *&buf[4] = "[IMPhotoLibraryPersistenceManager fetchInfoForSyndicationIdentifiersSavedToSystemPhotoLibrary:completion:]";
          *&buf[12] = 2048;
          *&buf[14] = v20;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "%s: %ld identifiers need save state fetch", buf, 0x16u);
        }
      }

      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      syndicationIdentifiersWithActiveFetch = selfCopy2->_syndicationIdentifiersWithActiveFetch;
      allObjects = [v30 allObjects];
      [(NSMutableSet *)syndicationIdentifiersWithActiveFetch addObjectsFromArray:allObjects];

      objc_sync_exit(selfCopy2);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v57 = 0;
      v24 = selfCopy2->_photoLibrary == 0;
      v25 = dispatch_group_create();
      dispatch_group_enter(v25);
      _assetFetchQueue = [objc_opt_class() _assetFetchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8301B50;
      block[3] = &unk_1E7812068;
      v41 = v24;
      block[4] = selfCopy2;
      v39 = buf;
      v40 = &v46;
      v37 = v30;
      v38 = v25;
      v27 = v25;
      dispatch_async(_assetFetchQueue, block);

      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1A8301E9C;
      v31[3] = &unk_1E7812090;
      v33 = &v52;
      v34 = buf;
      v32 = v28;
      v35 = &v46;
      dispatch_group_notify(v27, MEMORY[0x1E69E96A0], v31);

      _Block_object_dispose(buf, 8);
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v53[3], v47[5]);
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v52, 8);
    completionCopy = v28;
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (BOOL)_isListenerRegistered:(id)registered
{
  registeredCopy = registered;
  listeners = [(IMPhotoLibraryPersistenceManager *)self listeners];
  v6 = [listeners containsObject:registeredCopy];

  return v6;
}

- (void)registerPhotoLibraryPersistenceManagerListener:(id)listener
{
  v16 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  if (!listenerCopy)
  {
    listeners = IMLogHandleForCategory();
    if (os_log_type_enabled(listeners, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E03B0(listeners, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_10;
  }

  if (![(IMPhotoLibraryPersistenceManager *)self _isListenerRegistered:listenerCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        v15 = listenerCopy;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Registering as photo library persistence change listener %p", &v14, 0xCu);
      }
    }

    listeners = [(IMPhotoLibraryPersistenceManager *)self listeners];
    [listeners addObject:listenerCopy];
LABEL_10:
  }
}

- (void)unregisterAllPhotoLibraryPersistenceManagerListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Unregistering all persistence manager listeners", buf, 2u);
    }
  }

  listeners = self->_listeners;
  if (listeners)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [(NSHashTable *)listeners copy];
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(IMPhotoLibraryPersistenceManager *)self unregisterPhotoLibraryPersistenceManagerListener:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)unregisterPhotoLibraryPersistenceManagerListener:(id)listener
{
  v20 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = listenerCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Unregistering listener %p", &v18, 0xCu);
    }
  }

  if (!listenerCopy)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E03E8(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_19;
  }

  v6 = [(IMPhotoLibraryPersistenceManager *)self _isListenerRegistered:listenerCopy];
  v7 = IMOSLoggingEnabled();
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = listenerCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Not unregistering listener because it's already not listening %p", &v18, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v7)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = listenerCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Unregistering as photo library persistence change listener %p", &v18, 0xCu);
    }
  }

  if (self->_listeners)
  {
    listeners = [(IMPhotoLibraryPersistenceManager *)self listeners];
    [listeners removeObject:listenerCopy];
  }

LABEL_20:
}

- (void)registerPhotoLibraryPersistenceManagerSession:(id)session
{
  v9 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (sessionCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = sessionCopy;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Registering active session with GUID %@", &v7, 0xCu);
      }
    }

    sessions = [(IMPhotoLibraryPersistenceManager *)self sessions];
    [sessions addObject:sessionCopy];
  }
}

- (void)unregisterPhotoLibraryPersistenceManagerSession:(id)session
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (sessionCopy)
  {
    sessions = [(IMPhotoLibraryPersistenceManager *)self sessions];
    [sessions removeObject:sessionCopy];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        sessions2 = [(IMPhotoLibraryPersistenceManager *)self sessions];
        v11 = 138412546;
        v12 = sessionCopy;
        v13 = 2048;
        v14 = [sessions2 count];
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Unregistering session with GUID %@ remaining sessions active %lu", &v11, 0x16u);
      }
    }

    sessions3 = [(IMPhotoLibraryPersistenceManager *)self sessions];
    v9 = [sessions3 count] == 0;

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "No more active sessions, unregistering all listeners and clearing caches", &v11, 2u);
        }
      }

      [(IMPhotoLibraryPersistenceManager *)self unregisterAllPhotoLibraryPersistenceManagerListeners];
      [(IMPhotoLibraryPersistenceManager *)self _invalidateCaches];
    }
  }
}

- (void)_invalidateCaches
{
  if (([MEMORY[0x1E69A8020] IMDeviceIsChinaRegion] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_syndicationIdentifierSaveStateCache removeAllObjects];
    syndicationIdentifierFetchResultCache = self->_syndicationIdentifierFetchResultCache;

    [(NSMutableDictionary *)syndicationIdentifierFetchResultCache removeAllObjects];
  }
}

- (NSHashTable)listeners
{
  listeners = self->_listeners;
  if (!listeners)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_listeners;
    self->_listeners = weakObjectsHashTable;

    _photoLibraryInternalQueue = [objc_opt_class() _photoLibraryInternalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8302874;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    dispatch_async(_photoLibraryInternalQueue, block);

    listeners = self->_listeners;
  }

  if (!self->_photoLibrary && listeners)
  {
    _photoLibraryInternalQueue2 = [objc_opt_class() _photoLibraryInternalQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A830291C;
    v9[3] = &unk_1E780FCB0;
    v9[4] = self;
    dispatch_async(_photoLibraryInternalQueue2, v9);

    listeners = self->_listeners;
  }

  return listeners;
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83029BC;
  v6[3] = &unk_1E7810140;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_notifyListeners
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel___notifyListeners object:0];

  [(IMPhotoLibraryPersistenceManager *)self performSelector:sel___notifyListeners withObject:0 afterDelay:0.25];
}

- (void)__notifyListeners
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      listeners = [(IMPhotoLibraryPersistenceManager *)self listeners];
      *buf = 134217984;
      v15 = [listeners count];
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Broadcasting changes to %lu listeners", buf, 0xCu);
    }
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allObjects = [(NSHashTable *)self->_listeners allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v9 + 1) + 8 * v8++) photoLibraryPersistedSyndicatedAssetSetDidChange];
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_openPhotoLibraryIfNecessary
{
  if (!self->_photoLibrary)
  {
    v22[5] = v2;
    v22[6] = v3;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

    v7 = sub_1A8302D8C();
    if (isRedesignedDetailsViewEnabled)
    {
      systemPhotoLibraryURL = [v7 systemPhotoLibraryURL];
      if (!systemPhotoLibraryURL)
      {
        sharedPhotoLibrary = IMLogHandleForCategory();
        if (os_log_type_enabled(sharedPhotoLibrary, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E0498(sharedPhotoLibrary, v15, v16, v17, v18, v19, v20, v21);
        }

        goto LABEL_11;
      }

      v9 = systemPhotoLibraryURL;
      sharedPhotoLibrary = [objc_alloc(sub_1A8302D8C()) initWithPhotoLibraryURL:systemPhotoLibraryURL];
    }

    else
    {
      sharedPhotoLibrary = [v7 sharedPhotoLibrary];
    }

    v22[0] = 0;
    v11 = [sharedPhotoLibrary openAndWaitWithUpgrade:0 error:v22];
    v12 = v22[0];
    if (v11)
    {
      v13 = sharedPhotoLibrary;
      p_super = &self->_photoLibrary->super;
      self->_photoLibrary = v13;
    }

    else
    {
      p_super = IMLogHandleForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0420(v12, p_super);
      }
    }

LABEL_11:
  }
}

@end