@interface BRCSyncContextProvider
- (BRCSyncContextProvider)initWithAccountSession:(id)session;
- (id)_syncContextForContextIdentifier:(id)identifier isShared:(BOOL)shared createIfNeeded:(BOOL)needed;
- (id)_syncContextIdentifierForMangledID:(id)d metadata:(BOOL)metadata;
- (id)allSyncContexts;
- (id)metadataSyncContextForMangledID:(id)d;
- (id)transferSyncContextForMangledID:(id)d createIfNeeded:(BOOL)needed;
- (void)closeSyncContexts;
@end

@implementation BRCSyncContextProvider

- (BRCSyncContextProvider)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = BRCSyncContextProvider;
  v6 = [(BRCSyncContextProvider *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    syncContexts = v6->_syncContexts;
    v6->_syncContexts = v7;

    objc_storeStrong(&v6->_session, session);
  }

  return v6;
}

- (id)_syncContextForContextIdentifier:(id)identifier isShared:(BOOL)shared createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  sharedCopy = shared;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSMutableDictionary *)selfCopy->_syncContexts objectForKeyedSubscript:identifierCopy];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = !neededCopy;
  }

  if (!v11)
  {
    if (selfCopy->_syncContexts)
    {
      v10 = [[BRCSyncContext alloc] initWithSession:selfCopy->_session contextIdentifier:identifierCopy isShared:sharedCopy];
      [(NSMutableDictionary *)selfCopy->_syncContexts setObject:v10 forKeyedSubscript:identifierCopy];
      [(BRCSyncContext *)v10 resume];
    }

    else
    {
      v10 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (id)_syncContextIdentifierForMangledID:(id)d metadata:(BOOL)metadata
{
  metadataCopy = metadata;
  dCopy = d;
  if ([dCopy isShared])
  {
    if (metadataCopy)
    {
      aliasTargetContainerString = *MEMORY[0x277CFADA8];
    }

    else
    {
      aliasTargetContainerString = [dCopy aliasTargetContainerString];
    }
  }

  else
  {
    if (metadataCopy && [dCopy isCloudDocsMangledID])
    {
      v7 = MEMORY[0x277CCACA8];
      appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
      v9 = [v7 stringWithFormat:@"%@-metadata", appLibraryOrZoneName];

      goto LABEL_10;
    }

    aliasTargetContainerString = [dCopy appLibraryOrZoneName];
  }

  v9 = aliasTargetContainerString;
LABEL_10:

  return v9;
}

- (id)transferSyncContextForMangledID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  v7 = [(BRCSyncContextProvider *)self _syncContextIdentifierForMangledID:dCopy metadata:0];
  isShared = [dCopy isShared];

  v9 = [(BRCSyncContextProvider *)self _syncContextForContextIdentifier:v7 isShared:isShared createIfNeeded:neededCopy];

  return v9;
}

- (id)metadataSyncContextForMangledID:(id)d
{
  dCopy = d;
  v5 = [(BRCSyncContextProvider *)self _syncContextIdentifierForMangledID:dCopy metadata:1];
  isShared = [dCopy isShared];

  v7 = [(BRCSyncContextProvider *)self _syncContextForContextIdentifier:v5 isShared:isShared createIfNeeded:1];

  return v7;
}

- (id)allSyncContexts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_syncContexts allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)closeSyncContexts
{
  v38 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allSyncContexts = [(BRCSyncContextProvider *)selfCopy allSyncContexts];
  syncContexts = selfCopy->_syncContexts;
  selfCopy->_syncContexts = 0;

  objc_sync_exit(selfCopy);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = allSyncContexts;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        __brc_create_section(0, "[BRCSyncContextProvider closeSyncContexts]", 107, 0, &v23);
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v32 = v23;
          v33 = 2112;
          v34 = v9;
          v35 = 2112;
          v36 = v10;
          _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cancelling %@...%@", buf, 0x20u);
        }

        [v9 cancel];
        __brc_leave_section(&v23);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        __brc_create_section(0, "[BRCSyncContextProvider closeSyncContexts]", 112, 0, &v23);
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v32 = v23;
          v33 = 2112;
          v34 = v16;
          v35 = 2112;
          v36 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx closing %@...%@", buf, 0x20u);
        }

        [v16 close];
        __brc_leave_section(&v23);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v13);
  }
}

@end