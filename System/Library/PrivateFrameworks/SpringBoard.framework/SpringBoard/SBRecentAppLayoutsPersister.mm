@interface SBRecentAppLayoutsPersister
- (SBRecentAppLayoutsPersister)initWithPersistenceURL:(id)l layoutAttributesProvider:(id)provider;
- (id)_scheduledPersistTimer;
- (void)_enqueueDiskWrite;
- (void)_loadRecents;
- (void)_queue_writeCompressedProtobufRepresentationToDisk:(id)disk;
- (void)setRecents:(id)recents;
- (void)syncToDiskSoonIfDirty;
- (void)syncToDiskSynchronously;
@end

@implementation SBRecentAppLayoutsPersister

- (id)_scheduledPersistTimer
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__persistTimerExpired_ selector:0 userInfo:0 repeats:10.0];
  [v2 setTolerance:5.0];

  return v2;
}

- (SBRecentAppLayoutsPersister)initWithPersistenceURL:(id)l layoutAttributesProvider:(id)provider
{
  lCopy = l;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = SBRecentAppLayoutsPersister;
  v8 = [(SBRecentAppLayoutsPersister *)&v16 init];
  if (v8)
  {
    BSDispatchQueueAssertMain();
    v9 = dispatch_queue_create("com.apple.springboard.SBRecentAppLayoutsPersistence.IOQueue", 0);
    ioQueue = v8->_ioQueue;
    v8->_ioQueue = v9;

    v11 = [lCopy copy];
    persistenceURL = v8->_persistenceURL;
    v8->_persistenceURL = v11;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)v8->_persistenceURL path];
    v8->_initializedNewStoreOnDisk = [defaultManager fileExistsAtPath:path] ^ 1;

    objc_storeWeak(&v8->_layoutAttributesProvider, providerCopy);
    [(SBRecentAppLayoutsPersister *)v8 _loadRecents];
  }

  return v8;
}

- (void)setRecents:(id)recents
{
  recentsCopy = recents;
  BSDispatchQueueAssertMain();
  if (![(NSArray *)self->_recents isEqualToArray:recentsCopy])
  {
    v4 = [recentsCopy copy];
    recents = self->_recents;
    self->_recents = v4;

    if (!self->_persistTimer)
    {
      _scheduledPersistTimer = [(SBRecentAppLayoutsPersister *)self _scheduledPersistTimer];
      persistTimer = self->_persistTimer;
      self->_persistTimer = _scheduledPersistTimer;
    }
  }
}

- (void)syncToDiskSoonIfDirty
{
  BSDispatchQueueAssertMain();
  if (self->_persistTimer)
  {

    [(SBRecentAppLayoutsPersister *)self _enqueueDiskWrite];
  }
}

- (void)syncToDiskSynchronously
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_persistTimer invalidate];
  persistTimer = self->_persistTimer;
  self->_persistTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributesProvider);
  recents = self->_recents;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__SBRecentAppLayoutsPersister_syncToDiskSynchronously__block_invoke;
  v12[3] = &unk_2783AE218;
  v13 = WeakRetained;
  v6 = WeakRetained;
  v7 = [(NSArray *)recents bs_map:v12];
  ioQueue = self->_ioQueue;
  v11 = v7;
  v9 = v7;
  v10 = BSDispatchBlockCreateWithQualityOfService();
  dispatch_sync(ioQueue, v10);
}

id __54__SBRecentAppLayoutsPersister_syncToDiskSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layoutAttributesMapForAppLayout:v4 displayOrdinal:0 orientation:0];
  v6 = [*(a1 + 32) layoutAttributesEntriesForAppLayout:v4];
  v7 = [v4 protobufRepresentationWithLayoutAttributesMap:v5 layoutAttributesEntries:v6];

  return v7;
}

- (void)_loadRecents
{
  v51 = *MEMORY[0x277D85DE8];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__SBRecentAppLayoutsPersister__loadRecents__block_invoke;
  v43[3] = &unk_2783A8BC8;
  v43[4] = self;
  v43[5] = a2;
  v3 = MEMORY[0x223D6F7F0](v43);
  selfCopy = self;
  persistenceURL = self->_persistenceURL;
  v42 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:persistenceURL options:0 error:&v42];
  v7 = v42;
  v8 = v7;
  if (v6)
  {
    v41 = 0;
    v9 = [v6 decompressedDataUsingAlgorithm:0 error:&v41];
    v10 = v41;
    v11 = v10;
    if (v9)
    {
      v32 = v10;
      v34 = v8;
      v35 = v3;
      v33 = v9;
      v12 = [objc_alloc(MEMORY[0x277D43170]) initWithData:v9];
      v13 = objc_alloc_init(SBPBAppLayoutList);
      v31 = v12;
      [(SBPBAppLayoutList *)v13 readFrom:v12];
      array = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v30 = v13;
      obj = [(SBPBAppLayoutList *)v13 applayouts];
      v15 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
        do
        {
          v18 = 0;
          do
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v37 + 1) + 8 * v18);
            WeakRetained = objc_loadWeakRetained(&selfCopy->_layoutAttributesProvider);
            v21 = [SBAppLayout appLayoutWithProtobufRepresentation:v19 layoutAttributesProvider:WeakRetained];

            if (v21)
            {
              [array addObject:v21];
            }

            else
            {
              v23 = SBLogAppSwitcher(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v24 = _SBFLoggingMethodProem();
                *buf = 138543618;
                v46 = v24;
                v47 = 2114;
                v48 = v19;
                _os_log_error_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Couldn't derive app layout from Protobuf representation: %{public}@", buf, 0x16u);
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v16);
      }

      [(SBRecentAppLayoutsPersister *)selfCopy setRecents:array];
      v3 = v35;
      v9 = v33;
      v8 = v34;
      v11 = v32;
    }

    else
    {
      v26 = SBLogAppSwitcher(v10);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v46 = v29;
        v47 = 2114;
        v48 = v11;
        _os_log_error_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_ERROR, "%{public}@ Error decompressing recents: %{public}@", buf, 0x16u);
      }

      v3[2](v3);
    }
  }

  else
  {
    v25 = SBLogAppSwitcher(v7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = _SBFLoggingMethodProem();
      v28 = selfCopy->_persistenceURL;
      *buf = 138543874;
      v46 = v27;
      v47 = 2114;
      v48 = v28;
      v49 = 2114;
      v50 = v8;
      _os_log_error_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_ERROR, "%{public}@ Error reading recents from %{public}@: %{public}@", buf, 0x20u);
    }

    v3[2](v3);
  }
}

void __43__SBRecentAppLayoutsPersister__loadRecents__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = SBLogAppSwitcher(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "%{public}@ Using empty switcher model to recover from error with persisted switcher model", buf, 0xCu);
  }

  [*(a1 + 32) setRecents:MEMORY[0x277CBEBF8]];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(*(a1 + 32) + 16);
  v14 = 0;
  v6 = [v4 removeItemAtURL:v5 error:&v14];
  v7 = v14;

  v9 = SBLogAppSwitcher(v8);
  v10 = v9;
  if (!v6)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v11 = _SBFLoggingMethodProem();
    v13 = *(*(a1 + 32) + 16);
    *buf = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Error removing faulty switcher model from %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = _SBFLoggingMethodProem();
    v12 = *(*(a1 + 32) + 16);
    *buf = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, "%{public}@ Removed faulty switcher model from %{public}@", buf, 0x16u);
LABEL_6:
  }

LABEL_8:
}

- (void)_enqueueDiskWrite
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_persistTimer invalidate];
  persistTimer = self->_persistTimer;
  self->_persistTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributesProvider);
  recents = self->_recents;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SBRecentAppLayoutsPersister__enqueueDiskWrite__block_invoke;
  v12[3] = &unk_2783AE218;
  v13 = WeakRetained;
  v6 = WeakRetained;
  v7 = [(NSArray *)recents bs_map:v12];
  ioQueue = self->_ioQueue;
  v11 = v7;
  v9 = v7;
  v10 = BSDispatchBlockCreateWithQualityOfService();
  dispatch_async(ioQueue, v10);
}

id __48__SBRecentAppLayoutsPersister__enqueueDiskWrite__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layoutAttributesMapForAppLayout:v4 displayOrdinal:0 orientation:0];
  v6 = [*(a1 + 32) layoutAttributesEntriesForAppLayout:v4];
  v7 = [v4 protobufRepresentationWithLayoutAttributesMap:v5 layoutAttributesEntries:v6];

  return v7;
}

- (void)_queue_writeCompressedProtobufRepresentationToDisk:(id)disk
{
  v29 = *MEMORY[0x277D85DE8];
  ioQueue = self->_ioQueue;
  diskCopy = disk;
  dispatch_assert_queue_V2(ioQueue);
  v6 = objc_alloc_init(SBPBAppLayoutList);
  v7 = [diskCopy mutableCopy];

  [(SBPBAppLayoutList *)v6 setApplayouts:v7];
  v8 = objc_alloc_init(MEMORY[0x277D43178]);
  [(SBPBAppLayoutList *)v6 writeTo:v8];
  immutableData = [v8 immutableData];
  v22 = 0;
  v10 = [immutableData compressedDataUsingAlgorithm:0 error:&v22];
  v11 = v22;
  v12 = v11;
  if (v10)
  {
    persistenceURL = self->_persistenceURL;
    v21 = 0;
    v14 = [v10 writeToURL:persistenceURL options:268435457 error:&v21];
    v15 = v21;
    v16 = v15;
    if ((v14 & 1) == 0)
    {
      v17 = SBLogAppSwitcher(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = _SBFLoggingMethodProem();
        v20 = self->_persistenceURL;
        *buf = 138543874;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v27 = 2112;
        v28 = v16;
        _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Error writing recents to %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v16 = SBLogAppSwitcher(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v12;
      _os_log_error_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Error compressing data: %@", buf, 0x16u);
    }
  }
}

@end