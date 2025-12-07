@interface BRCDownloadTrackers
- (BRCAccountSession)session;
- (BRCDownloadTrackers)initWithSession:(id)session;
- (id)trackedFileObjectIDs;
- (void)addDownloadTracker:(id)tracker forFileObjectID:(id)d withEtagIfLoser:(id)loser;
- (void)document:(id)document didCompleteDownloadEtagIfLoser:(id)loser kind:(int)kind withError:(id)error;
- (void)removeDownloadTracker:(id)tracker;
@end

@implementation BRCDownloadTrackers

- (BRCDownloadTrackers)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = BRCDownloadTrackers;
  v5 = [(BRCDownloadTrackers *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

- (id)trackedFileObjectIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (void)addDownloadTracker:(id)tracker forFileObjectID:(id)d withEtagIfLoser:(id)loser
{
  v32 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  dCopy = d;
  loserCopy = loser;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v22 = 134219010;
    v23 = trackerCopy;
    v24 = 2112;
    v25 = trackerCopy;
    v26 = 2112;
    v27 = dCopy;
    v28 = 2112;
    v29 = loserCopy;
    v30 = 2112;
    v31 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] addDownloadTracker %p %@ forFileObjectID %@ withEtagIfLoser %@%@", &v22, 0x34u);
  }

  if (!selfCopy->_trackersByFileObjectID)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackersByFileObjectID = selfCopy->_trackersByFileObjectID;
    selfCopy->_trackersByFileObjectID = v14;
  }

  v16 = +[BRCTrackedVersion trackedVersionFor:withEtagIfLoser:kind:](BRCTrackedVersion, "trackedVersionFor:withEtagIfLoser:kind:", dCopy, loserCopy, [trackerCopy kind]);
  v17 = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID objectForKeyedSubscript:v16];
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID setObject:v17 forKeyedSubscript:v16];
  }

  [v17 addObject:trackerCopy];
  fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
  if (!fileObjectIDsByTracker)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v20 = selfCopy->_fileObjectIDsByTracker;
    selfCopy->_fileObjectIDsByTracker = strongToStrongObjectsMapTable;

    fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
  }

  v21 = [(NSMapTable *)fileObjectIDsByTracker objectForKey:trackerCopy];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMapTable *)selfCopy->_fileObjectIDsByTracker setObject:v21 forKey:trackerCopy];
  }

  [v21 addObject:v16];

  objc_sync_exit(selfCopy);
}

- (void)removeDownloadTracker:(id)tracker
{
  v21 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = brc_bread_crumbs();
  v7 = brc_notifications_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(BRCDownloadTrackers *)trackerCopy removeDownloadTracker:v6, v7];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMapTable *)selfCopy->_fileObjectIDsByTracker objectForKey:trackerCopy, 0];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID objectForKeyedSubscript:v12];
        [v13 removeObject:trackerCopy];
        if (![v13 count])
        {
          [(NSMutableDictionary *)selfCopy->_trackersByFileObjectID removeObjectForKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (![(NSMutableDictionary *)selfCopy->_trackersByFileObjectID count])
  {
    trackersByFileObjectID = selfCopy->_trackersByFileObjectID;
    selfCopy->_trackersByFileObjectID = 0;
  }

  [(NSMapTable *)selfCopy->_fileObjectIDsByTracker removeObjectForKey:trackerCopy];
  if (![(NSMapTable *)selfCopy->_fileObjectIDsByTracker count])
  {
    fileObjectIDsByTracker = selfCopy->_fileObjectIDsByTracker;
    selfCopy->_fileObjectIDsByTracker = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)document:(id)document didCompleteDownloadEtagIfLoser:(id)loser kind:(int)kind withError:(id)error
{
  v7 = *&kind;
  v39 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  loserCopy = loser;
  errorCopy = error;
  fileObjectID = [documentCopy fileObjectID];
  if (fileObjectID || ([documentCopy orig], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "fileObjectID"), fileObjectID = objc_claimAutoreleasedReturnValue(), v14, fileObjectID))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackersByFileObjectID = selfCopy->_trackersByFileObjectID;
    v17 = [BRCTrackedVersion trackedVersionFor:fileObjectID withEtagIfLoser:loserCopy kind:v7];
    v18 = [(NSMutableDictionary *)trackersByFileObjectID objectForKeyedSubscript:v17];
    v19 = [v18 copy];

    objc_sync_exit(selfCopy);
    if (v19)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_notifications_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v32 = documentCopy;
        v33 = 2112;
        v34 = loserCopy;
        v35 = 2112;
        v36 = errorCopy;
        v37 = 2112;
        v38 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[NOTIF] document %@ didCompleteDownloadEtagIfLoser %@ withError %@ -- notifying trackers%@", buf, 0x2Au);
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v23)
    {
      v24 = *v27;
      do
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v26 + 1) + 8 * v25++) downloadTrackedForFileObjectID:fileObjectID withEtagIfLoser:loserCopy didFinishWithError:{errorCopy, v26}];
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v23);
    }
  }
}

- (BRCAccountSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)removeDownloadTracker:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 134218498;
  v4 = a1;
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[NOTIF] Removing download tracker %p %@%@", &v3, 0x20u);
}

@end