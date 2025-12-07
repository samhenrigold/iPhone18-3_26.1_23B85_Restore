@interface BBDataProviderManager
- (BBDataProviderManager)initWithDelegate:(id)delegate queue:(id)queue;
- (id)_configureDataProvider:(id)provider performMigration:(BOOL)migration;
- (id)_configureSectionInfo:(id)info forDataProvider:(id)provider;
- (id)_queue_dataProvidersForUniversalSectionID:(id)d;
- (id)dataProviderForSectionID:(id)d;
- (id)debugDescriptionWithChildren:(unint64_t)children;
- (id)localSectionIdentifiersFromDismissalSectionIdentifer:(id)identifer;
- (id)rebuildSectionInfo:(id)info forSectionID:(id)d;
- (id)universalSectionIDForSectionID:(id)d;
- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion;
- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory;
- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider;
- (void)dealloc;
- (void)loadAllDataProvidersAndPerformMigration:(BOOL)migration;
- (void)noteSettingsChanged:(id)changed forSectionID:(id)d;
- (void)performBlockOnDataProviders:(id)providers;
- (void)reloadIdentityForSectionID:(id)d withCompletion:(id)completion;
@end

@implementation BBDataProviderManager

- (BBDataProviderManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v9 = [(BBDataProviderManager *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_queue, queue);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.bulletinboard.BBDataProviderManager.loadDataProviderQueue", v11);
    loadDataProviderQueue = v10->_loadDataProviderQueue;
    v10->_loadDataProviderQueue = v12;

    v10->_loadQueueSuspended = 1;
    dispatch_suspend(v10->_loadDataProviderQueue);
    v14 = [BBRemoteDataProviderConnectionResolver resolverWithDelegate:v10];
    remoteDataProviderResolver = v10->_remoteDataProviderResolver;
    v10->_remoteDataProviderResolver = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentFactoriesBySectionID = v10->_parentFactoriesBySectionID;
    v10->_parentFactoriesBySectionID = v16;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_loadQueueSuspended)
  {
    dispatch_resume(self->_loadDataProviderQueue);
  }

  v3.receiver = self;
  v3.super_class = BBDataProviderManager;
  [(BBDataProviderManager *)&v3 dealloc];
}

- (id)debugDescriptionWithChildren:(unint64_t)children
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] stringWithString:&stru_28541A970];
  if (children)
  {
    childrenCopy = children;
    do
    {
      [v5 appendString:@"    "];
      --childrenCopy;
    }

    while (childrenCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@<%@: %p>", v5, v9, self];

  dispatch_suspend(self->_queue);
  if (self->_loadQueueSuspended)
  {
    [v10 appendFormat:@" [SUSPENDED]"];
  }

  if ([(NSMutableDictionary *)self->_parentFactoriesBySectionID count])
  {
    [v10 appendFormat:@"    %@Parent Sections", v5];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = self->_parentFactoriesBySectionID;
    v12 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [v10 appendFormat:@"        %@%@", v5, *(*(&v19 + 1) + 8 * i)];
        }

        v13 = [(NSMutableDictionary *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v16 = [(BBLocalDataProviderStore *)self->_localDataProviderStore debugDescriptionWithChildren:children + 1];
  [v10 appendFormat:@"\n%@", v16];

  v17 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver debugDescriptionWithChildren:children + 1];
  [v10 appendFormat:@"\n%@", v17];

  dispatch_resume(self->_queue);

  return v10;
}

- (void)loadAllDataProvidersAndPerformMigration:(BOOL)migration
{
  migrationCopy = migration;
  self->_loadQueueSuspended = 0;
  dispatch_resume(self->_loadDataProviderQueue);
  localDataProviderStore = self->_localDataProviderStore;

  [(BBLocalDataProviderStore *)localDataProviderStore loadAllDataProvidersAndPerformMigration:migrationCopy];
}

- (void)noteSettingsChanged:(id)changed forSectionID:(id)d
{
  changedCopy = changed;
  dCopy = d;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 noteSectionInfoDidChange:changedCopy];
  }

  else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
  {
    [BBDataProviderManager noteSettingsChanged:forSectionID:];
  }
}

- (id)rebuildSectionInfo:(id)info forSectionID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:dCopy];
  if (!v8)
  {
    v9 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:dCopy];
    v10 = v9;
    if (v9)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      dataProviderIDs = [v9 dataProviderIDs];
      v12 = [dataProviderIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(dataProviderIDs);
            }

            v16 = [(BBDataProviderManager *)self rebuildSectionInfo:infoCopy forSectionID:*(*(&v19 + 1) + 8 * i)];
          }

          v13 = [dataProviderIDs countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }

    else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
    {
      [BBDataProviderManager rebuildSectionInfo:forSectionID:];
    }
  }

  v17 = [(BBDataProviderManager *)self _configureSectionInfo:infoCopy forDataProvider:v8];

  return v17;
}

- (void)reloadIdentityForSectionID:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = [(BBDataProviderManager *)self dataProviderForSectionID:dCopy];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke;
    v9[3] = &unk_278D2B870;
    v9[4] = self;
    v11 = completionCopy;
    v10 = v8;
    [v10 reloadIdentityWithCompletion:v9];
  }

  else if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
  {
    [BBDataProviderManager reloadIdentityForSectionID:withCompletion:];
  }
}

void __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke_2;
  v3[3] = &unk_278D2A900;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t __67__BBDataProviderManager_reloadIdentityForSectionID_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)localSectionIdentifiersFromDismissalSectionIdentifer:(id)identifer
{
  v19 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = [(BBDataProviderManager *)self _queue_dataProvidersForUniversalSectionID:identiferCopy];
  if ([v6 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          sectionIdentifier = [*(*(&v14 + 1) + 8 * i) sectionIdentifier];
          [v5 addObject:sectionIdentifier];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else if ([identiferCopy length])
  {
    [v5 addObject:identiferCopy];
  }

  return v5;
}

- (void)performBlockOnDataProviders:(id)providers
{
  providersCopy = providers;
  if (!providersCopy)
  {
    [(BBDataProviderManager *)a2 performBlockOnDataProviders:?];
  }

  localDataProviderStore = self->_localDataProviderStore;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke;
  v12[3] = &unk_278D2C180;
  v12[4] = self;
  v7 = providersCopy;
  v13 = v7;
  [(BBLocalDataProviderStore *)localDataProviderStore performBlockOnDataProviders:v12];
  remoteDataProviderResolver = self->_remoteDataProviderResolver;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_3;
  v10[3] = &unk_278D2C180;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(BBRemoteDataProviderConnectionResolver *)remoteDataProviderResolver performBlockOnDataProviders:v10];
}

void __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_2;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BBDataProviderManager_performBlockOnDataProviders___block_invoke_4;
  v7[3] = &unk_278D2A900;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (id)dataProviderForSectionID:(id)d
{
  dCopy = d;
  v5 = [(BBLocalDataProviderStore *)self->_localDataProviderStore dataProviderForSectionID:dCopy];
  if (!v5)
  {
    v5 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver dataProviderForSectionID:dCopy];
  }

  return v5;
}

- (id)universalSectionIDForSectionID:(id)d
{
  dCopy = d;
  v5 = [(BBDataProviderManager *)self dataProviderForSectionID:dCopy];
  v6 = v5;
  if (v5)
  {
    universalSectionIdentifier = [v5 universalSectionIdentifier];
  }

  else
  {
    v8 = [(BBDataProviderManager *)self parentSectionDataProviderFactoryForSectionID:dCopy];
    universalSectionIdentifier = [v8 universalSectionIdentifier];
  }

  return universalSectionIdentifier;
}

- (id)_queue_dataProvidersForUniversalSectionID:(id)d
{
  v4 = MEMORY[0x277CBEB58];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  v7 = [(BBLocalDataProviderStore *)self->_localDataProviderStore dataProvidersForUniversalSectionID:dCopy];
  v8 = [(BBRemoteDataProviderConnectionResolver *)self->_remoteDataProviderResolver dataProvidersForUniversalSectionID:dCopy];

  [v6 unionSet:v7];
  [v6 unionSet:v8];

  return v6;
}

- (void)dataProviderStore:(id)store didAddParentSectionFactory:(id)factory
{
  factoryCopy = factory;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__BBDataProviderManager_dataProviderStore_didAddParentSectionFactory___block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = factoryCopy;
  selfCopy = self;
  v7 = factoryCopy;
  dispatch_async(queue, v8);
}

uint64_t __70__BBDataProviderManager_dataProviderStore_didAddParentSectionFactory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sectionIdentifier];
  if (v2)
  {
    v6 = v2;
    [*(*(a1 + 40) + 56) setObject:*(a1 + 32) forKeyedSubscript:v2];
    v3 = [*(a1 + 40) _queue_getSectionInfoForSectionID:v6];
    if (v3)
    {
      v4 = [*(a1 + 32) sectionInfo];
      [v3 updateWithDefaultSectionInfo:v4];

      [*(a1 + 32) setSectionInfo:v3];
    }

    [*(*(a1 + 40) + 8) dpManager:*(a1 + 40) addParentSectionFactory:*(a1 + 32)];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)dataProviderStore:(id)store didAddDataProvider:(id)provider performMigration:(BOOL)migration completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  loadDataProviderQueue = self->_loadDataProviderQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke;
  v14[3] = &unk_278D2C1A8;
  v14[4] = self;
  v15 = providerCopy;
  migrationCopy = migration;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = providerCopy;
  dispatch_async(loadDataProviderQueue, v14);
}

void __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke_2;
  v5[3] = &unk_278D2C1A8;
  v5[4] = v3;
  v6 = v2;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);
}

void __90__BBDataProviderManager_dataProviderStore_didAddDataProvider_performMigration_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *v9 = 138543618;
    *&v9[4] = v4;
    *&v9[12] = 2114;
    *&v9[14] = v5;
    v6 = v4;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ adding data provider %{public}@ to BBServer", v9, 0x16u);
  }

  v7 = [*(a1 + 32) _configureDataProvider:*(a1 + 40) performMigration:{*(a1 + 56), *v9, *&v9[8], v10}];
  [*(a1 + 40) startWatchdog];
  [*(*(a1 + 32) + 8) dpManager:*(a1 + 32) addDataProvider:*(a1 + 40) withSectionInfo:v7];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (void)dataProviderStore:(id)store didRemoveDataProvider:(id)provider
{
  providerCopy = provider;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__BBDataProviderManager_dataProviderStore_didRemoveDataProvider___block_invoke;
  v8[3] = &unk_278D2A628;
  v8[4] = self;
  v9 = providerCopy;
  v7 = providerCopy;
  dispatch_async(queue, v8);
}

void __65__BBDataProviderManager_dataProviderStore_didRemoveDataProvider___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    *v18 = 138543618;
    *&v18[4] = v4;
    *&v18[12] = 2114;
    *&v18[14] = v5;
    v6 = v4;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ removing data provider %{public}@ from BBServer", v18, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) sectionIdentifier];
  v9 = [v7 _queue_getSectionInfoForSectionID:v8];

  v10 = [v9 factorySectionID];

  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = [v9 factorySectionID];
    v13 = [v11 _queue_getSectionInfoForSectionID:v12];

    if (v13)
    {
      [v13 _dissociateDataProviderSectionInfo:v9];
    }
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = *(v15 + 8);
  v17 = [v14 sectionIdentifier];
  [v16 dpManager:v15 removeDataProviderSectionID:v17];
}

- (id)_configureDataProvider:(id)provider performMigration:(BOOL)migration
{
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  if (!migration)
  {
    v10 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:sectionIdentifier];
    goto LABEL_5;
  }

  canPerformMigration = [providerCopy canPerformMigration];
  v9 = [(BBDataProviderManager *)self _queue_getSectionInfoForSectionID:sectionIdentifier];
  v10 = v9;
  if (!canPerformMigration)
  {
LABEL_5:
    v12 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v11 = [v9 copy];
  v12 = 1;
LABEL_6:
  v13 = [(BBDataProviderManager *)self _configureSectionInfo:v10 forDataProvider:providerCopy];
  v14 = v13;
  if (v12 && v11)
  {
    v15 = [v13 copy];
    if ([providerCopy migrateSectionInfo:v15 oldSectionInfo:v11])
    {
      v16 = BBLogMigration;
      if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138544130;
        v20 = sectionIdentifier;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Data provider <%{public}@> performed settings migration.\n\tPrevious build settings:   %{public}@\n\tPre-migration settings:    %{public}@\n\tMigrated (final) settings: %{public}@", &v19, 0x2Au);
      }

      goto LABEL_16;
    }
  }

  v17 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = sectionIdentifier;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Section settings for data provider %{public}@: %{public}@", &v19, 0x16u);
  }

  v15 = v14;
LABEL_16:

  return v15;
}

- (id)_configureSectionInfo:(id)info forDataProvider:(id)provider
{
  v77 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  v57 = providerCopy;
  v7 = [BBSectionInfo defaultSectionInfoForSection:providerCopy];
  v8 = v7;
  if (infoCopy || !v7)
  {
    [infoCopy updateWithDefaultSectionInfo:v7];
  }

  if ([v8 suppressFromSettings])
  {

    infoCopy = 0;
  }

  if (infoCopy)
  {
    v9 = infoCopy;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  defaultSubsectionInfos = [v57 defaultSubsectionInfos];
  if ([defaultSubsectionInfos count])
  {
  }

  else
  {
    subsections = [v10 subsections];
    v13 = [subsections count];

    if (!v13)
    {
      array = 0;
      goto LABEL_57;
    }
  }

  v54 = v8;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB58] set];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  defaultSubsectionInfos2 = [v57 defaultSubsectionInfos];
  v17 = [defaultSubsectionInfos2 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v67;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(defaultSubsectionInfos2);
        }

        v21 = *(*(&v66 + 1) + 8 * i);
        subsectionID = [v21 subsectionID];
        if (subsectionID && ([v15 containsObject:subsectionID] & 1) == 0)
        {
          [array2 addObject:v21];
          [v15 addObject:subsectionID];
        }

        else
        {
          v23 = BBLogDataProvider;
          if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v73 = subsectionID;
            v74 = 2112;
            v75 = sectionIdentifier;
            _os_log_error_impl(&dword_241EFF000, v23, OS_LOG_TYPE_ERROR, "BBServer: Ignoring empty or duplicate subsectionID (%@) from data provider %@.", buf, 0x16u);
          }
        }
      }

      v18 = [defaultSubsectionInfos2 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v18);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  subsections2 = [v10 subsections];
  v26 = [subsections2 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v63;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v63 != v28)
        {
          objc_enumerationMutation(subsections2);
        }

        v30 = *(*(&v62 + 1) + 8 * j);
        subsectionID2 = [v30 subsectionID];
        [dictionary setObject:v30 forKey:subsectionID2];
      }

      v27 = [subsections2 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v27);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v32 = array2;
  v33 = [v32 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v59;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v58 + 1) + 8 * k);
        subsectionID3 = [v37 subsectionID];
        if (!subsectionID3)
        {
          v42 = BBLogDataProvider;
          if (!os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 138412290;
          v73 = sectionIdentifier;
          v43 = v42;
          v44 = "BBServer: Ignoring subsection with no subsectionID, from data provider %@.";
          v45 = 12;
LABEL_48:
          _os_log_error_impl(&dword_241EFF000, v43, OS_LOG_TYPE_ERROR, v44, buf, v45);
          goto LABEL_51;
        }

        if ([v37 sectionType] != 2)
        {
          v46 = BBLogDataProvider;
          if (!os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 138412546;
          v73 = subsectionID3;
          v74 = 2112;
          v75 = sectionIdentifier;
          v43 = v46;
          v44 = "BBServer: Ignoring subsection (%@) not flagged as BBSectionTypeSubsection from data provider %@.";
          v45 = 22;
          goto LABEL_48;
        }

        v39 = [dictionary objectForKey:subsectionID3];
        if (v37)
        {
          v40 = v39 == 0;
        }

        else
        {
          v40 = 0;
        }

        if (v40)
        {
          [v37 setSectionID:sectionIdentifier];
          [v10 _addSubsection:v37];
          v41 = v37;
          [dictionary removeObjectForKey:subsectionID3];
LABEL_50:
          [array addObject:v41];
          v47 = [v57 displayNameForSubsectionID:subsectionID3];
          [v41 setDisplayName:v47];

          goto LABEL_51;
        }

        v41 = v39;
        [v39 updateWithDefaultSectionInfo:v37];
        [dictionary removeObjectForKey:subsectionID3];
        if (v41)
        {
          goto LABEL_50;
        }

LABEL_51:
      }

      v34 = [v32 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v34);
  }

  if ([dictionary count])
  {
    v48 = BBLogDataProvider;
    if (os_log_type_enabled(BBLogDataProvider, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      allKeys = [dictionary allKeys];
      *buf = 138543618;
      v73 = sectionIdentifier;
      v74 = 2114;
      v75 = allKeys;
      _os_log_impl(&dword_241EFF000, v49, OS_LOG_TYPE_DEFAULT, "Abandoned subsections for data provider <%{public}@>, removing them: %{public}@", buf, 0x16u);
    }
  }

  v8 = v54;
LABEL_57:
  if ([array count])
  {
    v51 = array;
  }

  else
  {
    v51 = 0;
  }

  [v10 setSubsections:v51];
  v52 = v10;

  return v10;
}

- (void)noteSettingsChanged:forSectionID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, v6);
}

- (void)rebuildSectionInfo:forSectionID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, v6);
}

- (void)reloadIdentityForSectionID:withCompletion:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_241EFF000, v0, v1, "%s no data provider found for: %@", v2, v3, v4, v5, v6);
}

- (void)performBlockOnDataProviders:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBDataProviderManager.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end