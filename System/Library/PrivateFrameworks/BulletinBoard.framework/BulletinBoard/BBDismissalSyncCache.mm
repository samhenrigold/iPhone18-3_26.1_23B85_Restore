@interface BBDismissalSyncCache
- (BBDismissalSyncCache)init;
- (BOOL)_isTimeToCheck;
- (id)findBulletinMatch:(id)match;
- (void)_checkCache;
- (void)cacheDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section forFeeds:(unint64_t)feeds;
- (void)removeBulletinMatch:(id)match;
@end

@implementation BBDismissalSyncCache

- (BBDismissalSyncCache)init
{
  v6.receiver = self;
  v6.super_class = BBDismissalSyncCache;
  v2 = [(BBDismissalSyncCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)cacheDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section forFeeds:(unint64_t)feeds
{
  v26 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  dsCopy = ds;
  sectionCopy = section;
  v13 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413058;
    selfCopy = dictionariesCopy;
    v20 = 2112;
    v21 = dsCopy;
    v22 = 2112;
    v23 = sectionCopy;
    v24 = 2048;
    feedsCopy = feeds;
    _os_log_impl(&dword_241EFF000, v13, OS_LOG_TYPE_DEFAULT, "Request to cache dismissal dictionaries:%@ IDs:%@ inSection:%@ forFeeds:%lu", &v18, 0x2Au);
  }

  [(BBDismissalSyncCache *)self _checkCache];
  if (-[BBDismissalSyncCache count](dictionariesCopy, "count") || [dsCopy count])
  {
    v14 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:sectionCopy];
    if (!v14)
    {
      v14 = objc_alloc_init(BBDismissalSyncCacheItem);
      [(NSMutableDictionary *)self->_cache setObject:v14 forKeyedSubscript:sectionCopy];
    }

    [(BBDismissalSyncCacheItem *)v14 cacheDismissalDictionaries:dictionariesCopy dismissalIDs:dsCopy forFeeds:feeds];
    if (!self->_timeToCheck)
    {
      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:120.0];
      timeToCheck = self->_timeToCheck;
      self->_timeToCheck = v15;
    }

    v17 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "cache updated to: %@", &v18, 0xCu);
    }
  }
}

- (id)findBulletinMatch:(id)match
{
  v16 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v5 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    bulletinID = [matchCopy bulletinID];
    v14 = 138412290;
    v15 = bulletinID;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "request to find bulletin match: %@", &v14, 0xCu);
  }

  [(BBDismissalSyncCache *)self _checkCache];
  sectionID = [matchCopy sectionID];
  if (sectionID)
  {
    v9 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:sectionID];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 findBulletinMatch:matchCopy];
      [v11 setSectionID:sectionID];
      v12 = BBLogSync;
      if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Found a match: %@", &v14, 0xCu);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)removeBulletinMatch:(id)match
{
  v12 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v5 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = matchCopy;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Request to remove bulletin match:%@", &v10, 0xCu);
  }

  sectionID = [matchCopy sectionID];
  if (sectionID)
  {
    v7 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:sectionID];
    v8 = v7;
    if (v7)
    {
      [v7 removeBulletinMatch:matchCopy];
      v9 = BBLogSync;
      if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "bulletin match removed", &v10, 2u);
      }
    }
  }
}

- (BOOL)_isTimeToCheck
{
  date = [MEMORY[0x277CBEAA8] date];
  timeToCheck = [(BBDismissalSyncCache *)self timeToCheck];
  [date timeIntervalSinceDate:timeToCheck];
  v6 = v5 >= 0.0;

  return v6;
}

- (void)_checkCache
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = BBLogSync;
  if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Request to check cache: %@", &buf, 0xCu);
  }

  if ([(BBDismissalSyncCache *)self _isTimeToCheck])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cache = self->_cache;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __35__BBDismissalSyncCache__checkCache__block_invoke;
    v11 = &unk_278D2A460;
    v6 = v4;
    v12 = v6;
    p_buf = &buf;
    [(NSMutableDictionary *)cache enumerateKeysAndObjectsUsingBlock:&v8];
    [(NSMutableDictionary *)self->_cache removeObjectsForKeys:v6, v8, v9, v10, v11];
    objc_storeStrong(&self->_timeToCheck, *(*(&buf + 1) + 40));
    v7 = BBLogSync;
    if (os_log_type_enabled(BBLogSync, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "check cache purge complete: %@", v14, 0xCu);
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __35__BBDismissalSyncCache__checkCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 purgeExpired];
  v6 = v5;
  if (v5)
  {
    if ([v5 compare:*(*(*(a1 + 40) + 8) + 40)] == -1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

@end