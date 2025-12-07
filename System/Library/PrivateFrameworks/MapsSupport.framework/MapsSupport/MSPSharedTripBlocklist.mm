@interface MSPSharedTripBlocklist
+ (MSPSharedTripBlocklist)sharedInstance;
+ (void)migrateFromiCloudKVSIfNeeded;
- (BOOL)containsAnyIdentifiersInArray:(id)array;
- (BOOL)containsIdentifier:(id)identifier;
- (MSPSharedTripBlocklist)init;
- (id)_fetchSyncedIdentifiers;
- (id)description;
- (void)_purgeExpiredIdentifiersIn:(id)in;
- (void)_reloadBlockedIdentifiersFromSync;
- (void)blockIdentifier:(id)identifier;
- (void)blockIdentifiers:(id)identifiers;
- (void)clearBlockedIdentifiers;
- (void)purgeExpiredIdentifiers;
- (void)storeDidChange:(id)change;
- (void)unblockIdentifiers:(id)identifiers;
@end

@implementation MSPSharedTripBlocklist

+ (MSPSharedTripBlocklist)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MSPSharedTripBlocklist_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_blocklist;

  return v2;
}

uint64_t __40__MSPSharedTripBlocklist_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_blocklist = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MSPSharedTripBlocklist)init
{
  v23 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = MSPSharedTripBlocklist;
  v2 = [(MSPSharedTripBlocklist *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = MSPGetSharedTripLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = v3;
      v7 = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), v6];

      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing...", buf, 0xCu);
    }

    v8 = dispatch_queue_create("com.apple.mapspushd.SharedTripBlocklist", 0);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    blockedIdentifiers = v3->_blockedIdentifiers;
    v3->_blockedIdentifiers = v10;

    v20 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    storeSubscriptionTypes = v3->storeSubscriptionTypes;
    v3->storeSubscriptionTypes = v12;

    mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
    [mEMORY[0x277D26670] subscribe:v3];

    v15 = v3->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__MSPSharedTripBlocklist_init__block_invoke;
    block[3] = &unk_279866158;
    v18 = v3;
    dispatch_async(v15, block);
  }

  return v3;
}

- (id)description
{
  v29 = *MEMORY[0x277D85DE8];
  allObjects = [(NSMutableSet *)self->_blockedIdentifiers allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    if ([allObjects count])
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v3;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v24 + 1) + 8 * i);
            if (v10)
            {
              v11 = MEMORY[0x277CCACA8];
              v12 = v10;
              v13 = [v11 stringWithFormat:@"%@<%p>", objc_opt_class(), v12];
            }

            else
            {
              v13 = @"<nil>";
            }

            [v4 addObject:v13];
          }

          v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v7);
      }

      v14 = [v5 componentsJoinedByString:{@", "}];
      v15 = MEMORY[0x277CCACA8];
      v16 = v5;
      v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];

      v18 = [v15 stringWithFormat:@"%@ [%@]", v17, v14];

      v3 = v23;
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = v3;
      v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

      v18 = [v19 stringWithFormat:@"%@ (empty)", v21];
    }
  }

  else
  {
    v18 = @"<nil>";
  }

  return v18;
}

- (BOOL)containsAnyIdentifiersInArray:(id)array
{
  v29 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:arrayCopy];
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSPSharedTripBlocklist_containsAnyIdentifiersInArray___block_invoke;
  block[3] = &unk_279866180;
  v18 = &v19;
  block[4] = self;
  v7 = v5;
  v17 = v7;
  dispatch_sync(isolationQueue, block);
  v9 = MSPGetSharedTripLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    if (*(v20 + 24))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    *buf = 138543874;
    v24 = selfCopy;
    v25 = 2112;
    v26 = arrayCopy;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "[%{public}@] containsIdentifiers? %@ : %@", buf, 0x20u);
  }

  v14 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v14 & 1;
}

void *__56__MSPSharedTripBlocklist_containsAnyIdentifiersInArray___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) intersectsSet:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)containsIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSPSharedTripBlocklist_containsIdentifier___block_invoke;
  block[3] = &unk_279866180;
  v17 = &v18;
  block[4] = self;
  v6 = identifierCopy;
  v16 = v6;
  dispatch_sync(isolationQueue, block);
  v8 = MSPGetSharedTripLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];

    if (*(v19 + 24))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = v11;
    *buf = 138543874;
    v23 = selfCopy;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_INFO, "[%{public}@] containsIdentifier? %@ : %@", buf, 0x20u);
  }

  v13 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v13 & 1;
}

void *__45__MSPSharedTripBlocklist_containsIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)blockIdentifier:(id)identifier
{
  v8 = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = MEMORY[0x277CBEA60];
    identifierCopy2 = identifier;
    v6 = [v4 arrayWithObjects:&identifierCopy count:1];

    [(MSPSharedTripBlocklist *)self blockIdentifiers:v6, identifierCopy, v8];
  }
}

- (void)blockIdentifiers:(id)identifiers
{
  v62 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (identifiersCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:identifiersCopy];
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__MSPSharedTripBlocklist_blockIdentifiers___block_invoke;
    block[3] = &unk_279865EF8;
    v7 = v5;
    v51 = v7;
    selfCopy = self;
    dispatch_sync(isolationQueue, block);
    if ([v7 count])
    {
      GEOConfigGetDouble();
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
      timeIntervalSinceReferenceDate = [v8 timeIntervalSinceReferenceDate];
      v11 = v10;
      v12 = MSPGetSharedTripLog(timeIntervalSinceReferenceDate);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        v16 = [v7 count];
        *buf = 138544130;
        v55 = selfCopy2;
        v56 = 2048;
        v57 = v16;
        v58 = 2112;
        v59 = v7;
        v60 = 2112;
        v61 = v8;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] blockIdentifiers | blocking %lu identifiers %@ (expires at %@)", buf, 0x2Au);
      }

      v17 = [v7 count];
      if (v17 < [identifiersCopy count])
      {
        v18 = [identifiersCopy count];
        v19 = [v7 count];
        v20 = MSPGetSharedTripLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v18 - v19;
          v22 = MEMORY[0x277CCACA8];
          selfCopy3 = self;
          selfCopy3 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

          v25 = [identifiersCopy count];
          *buf = 138543874;
          v55 = selfCopy3;
          v56 = 2048;
          v57 = v21;
          v58 = 2048;
          v59 = v25;
          _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] blockIdentifiers | %lu/%lu identifiers were already blocked", buf, 0x20u);
        }
      }

      selfCopy4 = self;
      v44 = v8;
      selfCopy5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v27 = v7;
      v28 = [v27 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v47;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [objc_alloc(MEMORY[0x277D26648]) initWithExpiryTime:v11 sharedTripIdentifier:*(*(&v46 + 1) + 8 * i)];
            if (v32)
            {
              [(__CFString *)selfCopy5 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v29);
      }

      mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
      v45 = 0;
      [mEMORY[0x277D26670] saveWithObjects:selfCopy5 error:&v45];
      v34 = v45;

      v36 = v44;
      if (v34)
      {
        v37 = MSPGetSharedTripLog(v35);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          if (selfCopy4)
          {
            v38 = MEMORY[0x277CCACA8];
            v39 = selfCopy4;
            v36 = v44;
            v40 = [v38 stringWithFormat:@"%@<%p>", objc_opt_class(), v39];
          }

          else
          {
            v40 = @"<nil>";
          }

          *buf = 138543874;
          v55 = v40;
          v56 = 2112;
          v57 = v27;
          v58 = 2112;
          v59 = v34;
          _os_log_impl(&dword_25813A000, v37, OS_LOG_TYPE_ERROR, "[%{public}@] block | failed to block identifiers %@: error: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v36 = MSPGetSharedTripLog(0);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
LABEL_29:

        goto LABEL_30;
      }

      v41 = MEMORY[0x277CCACA8];
      selfCopy5 = self;
      selfCopy5 = [v41 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy5];

      *buf = 138543618;
      v55 = selfCopy5;
      v56 = 2112;
      v57 = identifiersCopy;
      _os_log_impl(&dword_25813A000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] block | already blocked: %@", buf, 0x16u);
    }

    goto LABEL_29;
  }

LABEL_30:
}

uint64_t __43__MSPSharedTripBlocklist_blockIdentifiers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) minusSet:*(*(a1 + 40) + 8)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);

  return [v3 unionSet:v2];
}

- (void)unblockIdentifiers:(id)identifiers
{
  v49 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = MSPGetSharedTripLog(identifiersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v43 = selfCopy;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] unblockIdentifiers", buf, 0xCu);
  }

  if (identifiersCopy)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__MSPSharedTripBlocklist_unblockIdentifiers___block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v10 = identifiersCopy;
    v41 = v10;
    dispatch_sync(isolationQueue, block);
    _fetchSyncedIdentifiers = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
    if (!_fetchSyncedIdentifiers)
    {
LABEL_32:

      goto LABEL_33;
    }

    v12 = _fetchSyncedIdentifiers;
    v34 = identifiersCopy;
    v33 = v10;
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v10];
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          sharedTripIdentifier = [v20 sharedTripIdentifier];
          v22 = [v13 containsObject:sharedTripIdentifier];

          if (v22)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
      v35 = 0;
      [mEMORY[0x277D26670] deleteWithObjects:v14 error:&v35];
      v24 = v35;

      if (v24)
      {
        v26 = MSPGetSharedTripLog(v25);
        identifiersCopy = v34;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v27 = MEMORY[0x277CCACA8];
            selfCopy2 = self;
            selfCopy2 = [v27 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
          }

          else
          {
            selfCopy2 = @"<nil>";
          }

          *buf = 138543874;
          v43 = selfCopy2;
          v44 = 2112;
          v45 = v33;
          v46 = 2112;
          v47 = v24;
          _os_log_impl(&dword_25813A000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] unblock | failed to unblock identifiers %@: error: %@", buf, 0x20u);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v24 = MSPGetSharedTripLog(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        identifiersCopy = v34;
        if (self)
        {
          v30 = MEMORY[0x277CCACA8];
          selfCopy3 = self;
          selfCopy3 = [v30 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];
        }

        else
        {
          selfCopy3 = @"<nil>";
        }

        *buf = 138543618;
        v43 = selfCopy3;
        v44 = 2112;
        v45 = v33;
        _os_log_impl(&dword_25813A000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] unblock | no matching synced items to delete for %@", buf, 0x16u);

        goto LABEL_31;
      }
    }

    identifiersCopy = v34;
LABEL_31:

    goto LABEL_32;
  }

LABEL_33:
}

void __45__MSPSharedTripBlocklist_unblockIdentifiers___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v1 minusSet:v2];
}

- (void)clearBlockedIdentifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v19 = selfCopy;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] clear | blocked identifiers", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSPSharedTripBlocklist_clearBlockedIdentifiers__block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
  _fetchSyncedIdentifiers = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  if (_fetchSyncedIdentifiers)
  {
    mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
    v16 = 0;
    [mEMORY[0x277D26670] deleteWithObjects:_fetchSyncedIdentifiers error:&v16];
    v10 = v16;

    if (v10)
    {
      v12 = MSPGetSharedTripLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v13 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];

        *buf = 138543618;
        v19 = selfCopy2;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] clear | failed to delete all identifiers with error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)purgeExpiredIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v4 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] purge | requested", buf, 0xCu);
  }

  _fetchSyncedIdentifiers = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  v8 = _fetchSyncedIdentifiers;
  if (_fetchSyncedIdentifiers)
  {
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__MSPSharedTripBlocklist_purgeExpiredIdentifiers__block_invoke;
    block[3] = &unk_279865EF8;
    block[4] = self;
    v11 = _fetchSyncedIdentifiers;
    dispatch_async(isolationQueue, block);
  }
}

- (void)_purgeExpiredIdentifiersIn:(id)in
{
  v84 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v65 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(inCopy, "count")}];
  v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(inCopy, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v4 = inCopy;
  v5 = [v4 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v68;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v68 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v67 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v9, "expiryTime")}];
        timeIntervalSinceNow = [v10 timeIntervalSinceNow];
        if (v12 <= 0.0)
        {
          v13 = v12;
          v14 = MSPGetSharedTripLog(timeIntervalSinceNow);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            if (self)
            {
              v15 = MEMORY[0x277CCACA8];
              selfCopy = self;
              selfCopy = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
            }

            else
            {
              selfCopy = @"<nil>";
            }

            sharedTripIdentifier = [v9 sharedTripIdentifier];
            *buf = 138543874;
            v77 = selfCopy;
            v78 = 2112;
            v79 = sharedTripIdentifier;
            v80 = 2048;
            v81 = fabs(v13);
            _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] purge | found %@ which expired %#.1lfs ago", buf, 0x20u);
          }

          [v64 addObject:v9];
          sharedTripIdentifier2 = [v9 sharedTripIdentifier];
          [v65 addObject:sharedTripIdentifier2];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v6);
  }

  v20 = [v65 count];
  v21 = MSPGetSharedTripLog(v20);
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v23 = MEMORY[0x277CCACA8];
        selfCopy2 = self;
        selfCopy2 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2];
      }

      else
      {
        selfCopy2 = @"<nil>";
      }

      v29 = selfCopy2;
      v30 = [v65 count];
      v31 = [v4 count];
      allObjects = [v65 allObjects];
      v33 = allObjects;
      if (allObjects)
      {
        if ([allObjects count])
        {
          v58 = v31;
          v59 = v30;
          v61 = v29;
          v62 = v22;
          v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v33, "count")}];
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v60 = v33;
          v35 = v33;
          v36 = [v35 countByEnumeratingWithState:&v71 objects:buf count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v72;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v72 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v71 + 1) + 8 * j);
                if (v40)
                {
                  v41 = MEMORY[0x277CCACA8];
                  v42 = v40;
                  v43 = [v41 stringWithFormat:@"%@<%p>", objc_opt_class(), v42];
                }

                else
                {
                  v43 = @"<nil>";
                }

                [v34 addObject:v43];
              }

              v37 = [v35 countByEnumeratingWithState:&v71 objects:buf count:16];
            }

            while (v37);
          }

          v44 = [v35 componentsJoinedByString:{@", "}];
          v45 = MEMORY[0x277CCACA8];
          v46 = v35;
          v47 = [v45 stringWithFormat:@"%@<%p>", objc_opt_class(), v46];

          v48 = [v45 stringWithFormat:@"%@ [%@]", v47, v44];

          v29 = v61;
          v22 = v62;
          v30 = v59;
          v33 = v60;
          v31 = v58;
        }

        else
        {
          v49 = MEMORY[0x277CCACA8];
          v50 = v33;
          v34 = [v49 stringWithFormat:@"%@<%p>", objc_opt_class(), v50];

          v48 = [v49 stringWithFormat:@"%@ (empty)", v34];
        }
      }

      else
      {
        v48 = @"<nil>";
      }

      *buf = 138544130;
      v77 = v29;
      v78 = 2048;
      v79 = v30;
      v80 = 2048;
      v81 = *&v31;
      v82 = 2112;
      v83 = v48;
      _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] purge | will purge %lu/%lu blocked identifiers: %@", buf, 0x2Au);
    }

    [(NSMutableSet *)self->_blockedIdentifiers minusSet:v65];
    mEMORY[0x277D26670] = [MEMORY[0x277D26670] sharedStore];
    v66 = 0;
    [mEMORY[0x277D26670] deleteWithObjects:v64 error:&v66];
    v22 = v66;

    if (v22)
    {
      v53 = MSPGetSharedTripLog(v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = MEMORY[0x277CCACA8];
        selfCopy3 = self;
        selfCopy3 = [v54 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];

        *buf = 138543618;
        v77 = selfCopy3;
        v78 = 2112;
        v79 = v22;
        _os_log_impl(&dword_25813A000, v53, OS_LOG_TYPE_ERROR, "[%{public}@] purge | failed to remove identifiers with error %@", buf, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (self)
    {
      v26 = MEMORY[0x277CCACA8];
      selfCopy4 = self;
      selfCopy4 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy4];
    }

    else
    {
      selfCopy4 = @"<nil>";
    }

    v57 = [v4 count];
    *buf = 138543618;
    v77 = selfCopy4;
    v78 = 2048;
    v79 = v57;
    _os_log_impl(&dword_25813A000, v22, OS_LOG_TYPE_DEBUG, "[%{public}@] purge | found nothing to purge from %lu items", buf, 0x16u);
  }
}

- (void)_reloadBlockedIdentifiersFromSync
{
  v32 = *MEMORY[0x277D85DE8];
  _fetchSyncedIdentifiers = [(MSPSharedTripBlocklist *)self _fetchSyncedIdentifiers];
  v4 = MSPGetSharedTripLog(_fetchSyncedIdentifiers);
  v5 = v4;
  if (_fetchSyncedIdentifiers)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v6 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543618;
      v29 = selfCopy;
      v30 = 2112;
      v31 = _fetchSyncedIdentifiers;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] reload | loaded identifiers from sync: %@", buf, 0x16u);
    }

    [(MSPSharedTripBlocklist *)self _purgeExpiredIdentifiersIn:_fetchSyncedIdentifiers];
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{-[NSObject count](_fetchSyncedIdentifiers, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = _fetchSyncedIdentifiers;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          sharedTripIdentifier = [*(*(&v23 + 1) + 8 * v16) sharedTripIdentifier];
          [v5 addObject:sharedTripIdentifier];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    objc_storeStrong(&self->_blockedIdentifiers, v5);
    v19 = MSPGetSharedTripLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = MEMORY[0x277CCACA8];
      selfCopy2 = self;
      v22 = [v20 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy2, v23];

      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] reload | set local copy of identifiers: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      v9 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      selfCopy3 = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy3];
    }

    else
    {
      selfCopy3 = @"<nil>";
    }

    *buf = 138543362;
    v29 = selfCopy3;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] reload | could not load from sync", buf, 0xCu);
  }
}

- (id)_fetchSyncedIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D26650]);
  v13 = 0;
  v4 = [v3 fetchSyncAndReturnError:&v13];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v8 = MSPGetSharedTripLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v9 = MEMORY[0x277CCACA8];
        selfCopy = self;
        selfCopy = [v9 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
      }

      else
      {
        selfCopy = @"<nil>";
      }

      *buf = 138543618;
      v15 = selfCopy;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] fetch | _fetchSyncedIdentifiers failed to fetch with error: %@", buf, 0x16u);
    }
  }

  return v4;
}

- (void)storeDidChange:(id)change
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v5 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v5 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    *buf = 138543362;
    v11 = selfCopy;
    _os_log_impl(&dword_25813A000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] store | data changed, schedule reload of blocked identifiers", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MSPSharedTripBlocklist_storeDidChange___block_invoke;
  block[3] = &unk_279866158;
  block[4] = self;
  dispatch_async(isolationQueue, block);
}

+ (void)migrateFromiCloudKVSIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  BOOL = GEOConfigGetBOOL();
  v4 = [MSPMapsDefaultsAccessor get:@"ShareETABlocklistMigration2022"];
  v5 = MSPGetSharedTripLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x277CCACA8];
      selfCopy = self;
      selfCopy = [v6 stringWithFormat:@"%@<%p>", objc_opt_class(), selfCopy];
    }

    else
    {
      selfCopy = @"<nil>";
    }

    v9 = @"NO";
    if (BOOL)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | Last KVS blocklist migration performed: %{public}@, should always check: %{public}@", buf, 0x20u);
  }

  if (v4)
  {
    v11 = BOOL;
  }

  else
  {
    v11 = 1;
  }

  if (v11 == 1)
  {
    v12 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSPSharedTripBlocklist_migrateFromiCloudKVSIfNeeded__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(v12, block);
  }
}

void __54__MSPSharedTripBlocklist_migrateFromiCloudKVSIfNeeded__block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD80] defaultStore];
  v3 = [v2 dictionaryForKey:@"com.apple.mapspushd.MSPSharedTripBlacklist"];
  v4 = v3;
  if (v3)
  {
    v5 = MSPGetSharedTripLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = v6;
        v9 = [v7 stringWithFormat:@"%@<%p>", objc_opt_class(), v8];
      }

      else
      {
        v9 = @"<nil>";
      }

      *buf = 138543362;
      v37 = v9;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Found blocklist data in iCloud KVS, will migrate in background", buf, 0xCu);
    }

    v10 = [v4 objectForKeyedSubscript:@"tripIdentifiers"];
    v11 = [v10 count];
    if (v11)
    {
      v12 = MSPGetSharedTripLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        if (v13)
        {
          v14 = MEMORY[0x277CCACA8];
          v15 = v13;
          v16 = [v14 stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
        }

        else
        {
          v16 = @"<nil>";
        }

        v17 = [v10 count];
        *buf = 138543618;
        v37 = v16;
        v38 = 2048;
        v39 = v17;
        _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Migrating %lu blocked trip identifiers...", buf, 0x16u);
      }

      v18 = [*(a1 + 32) sharedInstance];
      [v18 blockIdentifiers:v10];
    }

    BOOL = GEOConfigGetBOOL();
    if (BOOL)
    {
      v20 = MSPGetSharedTripLog(BOOL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        if (v21)
        {
          v22 = MEMORY[0x277CCACA8];
          v23 = v21;
          v24 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), v23];
        }

        else
        {
          v24 = @"<nil>";
        }

        *buf = 138543362;
        v37 = v24;
        _os_log_impl(&dword_25813A000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Clearing KVS blocklist post-migration...", buf, 0xCu);
      }

      [v2 removeObjectForKey:@"com.apple.mapspushd.MSPSharedTripBlacklist"];
      BOOL = [v2 synchronize];
    }

    v25 = MSPGetSharedTripLog(BOOL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        v27 = MEMORY[0x277CCACA8];
        v28 = v26;
        v29 = [v27 stringWithFormat:@"%@<%p>", objc_opt_class(), v28];
      }

      else
      {
        v29 = @"<nil>";
      }

      *buf = 138543362;
      v37 = v29;
      _os_log_impl(&dword_25813A000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | - Finished migrating blocked trip identifiers", buf, 0xCu);
    }
  }

  v30 = [MEMORY[0x277CBEAA8] date];
  v31 = MSPGetSharedTripLog(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    if (v32)
    {
      v33 = MEMORY[0x277CCACA8];
      v34 = v32;
      v35 = [v33 stringWithFormat:@"%@<%p>", objc_opt_class(), v34];
    }

    else
    {
      v35 = @"<nil>";
    }

    *buf = 138543618;
    v37 = v35;
    v38 = 2114;
    v39 = v30;
    _os_log_impl(&dword_25813A000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] migration | Recording KVS migration check at: %{public}@", buf, 0x16u);
  }

  [MSPMapsDefaultsAccessor set:@"ShareETABlocklistMigration2022" value:v30];
}

@end