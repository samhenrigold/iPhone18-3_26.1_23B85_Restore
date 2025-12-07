@interface RERelevanceProviderEnvironment
- (BOOL)addRelevanceProviderDidTriggerException:(id)exception completion:(id)completion;
- (BOOL)containsRelevanceProvider:(id)provider;
- (BOOL)isRelevanceProviderHistoric:(id)historic;
- (BOOL)isRelevanceProviderLoaded:(id)loaded;
- (BOOL)isSupportedRelevanceProvider:(id)provider;
- (NSDictionary)allProviderValues;
- (RERelevanceProviderEnvironment)initWithRelevanceEngine:(id)engine;
- (RERelevanceProviderEnvironmentDelegate)delegate;
- (id)_histogramForFeature:(id)feature;
- (id)_histogramForProvider:(id)provider;
- (id)_providerManagerForProvider:(id)provider;
- (id)_relevaneProviderWithType:(id)type withOptions:(id)options;
- (id)createRelevaneProviderWithType:(id)type withOptions:(id)options;
- (id)encodeRelevaneProvider:(id)provider;
- (id)featuresForRelevanceProvider:(id)provider;
- (id)relevancesForRelevanceProvider:(id)provider;
- (id)relevancesForRelevanceProvider:(id)provider usingContext:(id)context;
- (void)_addRelevanceValue:(id)value forProvider:(id)provider;
- (void)_queue_performUpdate:(id)update;
- (void)_removeRelevanceValueForProvider:(id)provider;
- (void)_scaleRelevanceProviderValues:(id)values values:(id)a4;
- (void)_setupRelevanceProviderManagers;
- (void)accessHistogramForFeature:(id)feature usingBlock:(id)block;
- (void)addRelevanceProvider:(id)provider completion:(id)completion;
- (void)dealloc;
- (void)immediateUpdateForRelevanceProviderManager:(id)manager completion:(id)completion;
- (void)pause;
- (void)relateRelevanceProvider:(id)provider toRelevanceProvider:(id)relevanceProvider;
- (void)removeRelevanceProvider:(id)provider completion:(id)completion;
- (void)resume;
- (void)scheduleUpdateForRelevanceProvider:(id)provider completion:(id)completion;
- (void)scheduleUpdateForRelevanceProviderManager:(id)manager completion:(id)completion;
- (void)setAllowsLocationUse:(BOOL)use;
@end

@implementation RERelevanceProviderEnvironment

- (RERelevanceProviderEnvironment)initWithRelevanceEngine:(id)engine
{
  engineCopy = engine;
  v41.receiver = self;
  v41.super_class = RERelevanceProviderEnvironment;
  v5 = [(RERelevanceEngineSubsystem *)&v41 initWithRelevanceEngine:engineCopy];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    relevanceManagers = v5->_relevanceManagers;
    v5->_relevanceManagers = array;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    relevanceClassManagerMap = v5->_relevanceClassManagerMap;
    v5->_relevanceClassManagerMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    relevanceHistogramMap = v5->_relevanceHistogramMap;
    v5->_relevanceHistogramMap = strongToStrongObjectsMapTable2;

    v12 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    relevanceValues = v5->_relevanceValues;
    v5->_relevanceValues = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    customProviders = v5->_customProviders;
    v5->_customProviders = v14;

    v16 = objc_opt_new();
    relevanceValuesLock = v5->_relevanceValuesLock;
    v5->_relevanceValuesLock = v16;

    rootFeatures = [engineCopy rootFeatures];
    v19 = [rootFeatures copy];
    supportedFeatures = v5->_supportedFeatures;
    v5->_supportedFeatures = v19;

    v21 = objc_alloc_init(REUpNextDisjointSet);
    relevanceProviderSet = v5->_relevanceProviderSet;
    v5->_relevanceProviderSet = v21;

    v23 = objc_alloc_init(REDependencyGraph);
    dependencyGraph = v5->_dependencyGraph;
    v5->_dependencyGraph = v23;

    v25 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    providersToUpdate = v5->_providersToUpdate;
    v5->_providersToUpdate = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    providerManagersToUpdate = v5->_providerManagersToUpdate;
    v5->_providerManagersToUpdate = v27;

    array2 = [MEMORY[0x277CBEB18] array];
    updateCompletionBlocks = v5->_updateCompletionBlocks;
    v5->_updateCompletionBlocks = array2;

    configuration = [engineCopy configuration];
    v5->_createDefaultRelevanceProviders = [configuration createDefaultRelevanceProviders];

    logger = [engineCopy logger];
    [logger addLoggable:v5];

    configuration2 = [engineCopy configuration];
    LOBYTE(logger) = [configuration2 wantsImmutableContent];

    objc_initWeak(&location, v5);
    queue = [(RERelevanceEngineSubsystem *)v5 queue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke;
    v36[3] = &unk_2785FC5F8;
    v37 = v5;
    v39 = logger;
    objc_copyWeak(&v38, &location);
    dispatch_sync(queue, v36);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupRelevanceProviderManagers];
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 0.05;
  }

  v3 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke_2;
  v7[3] = &unk_2785F9A90;
  objc_copyWeak(&v8, (a1 + 40));
  v4 = [REUpNextScheduler schedulerWithTransaction:@"com.apple.relevanceengine.relevanceprovidermanager-update" queue:v3 delay:v7 updateBlock:v2];
  v5 = *(a1 + 32);
  v6 = *(v5 + 120);
  *(v5 + 120) = v4;

  objc_destroyWeak(&v8);
}

void __58__RERelevanceProviderEnvironment_initWithRelevanceEngine___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_performUpdate:0];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_relevanceManagers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
        logger = [relevanceEngine logger];
        [logger removeLoggable:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  relevanceEngine2 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  logger2 = [relevanceEngine2 logger];
  [logger2 removeLoggable:self];

  v13.receiver = self;
  v13.super_class = RERelevanceProviderEnvironment;
  [(RERelevanceEngineSubsystem *)&v13 dealloc];
}

- (void)pause
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_relevanceManagers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) pauseWithCompletion:{&__block_literal_global_43, v7}];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resume
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_relevanceManagers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (![objc_opt_class() _requiresLocationServices] || self->_allowsLocationUse)
        {
          [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v8];
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __40__RERelevanceProviderEnvironment_resume__block_invoke;
          v9[3] = &unk_2785F9AE0;
          v9[4] = self;
          v9[5] = v8;
          [v8 resumeWithCompletion:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)setAllowsLocationUse:(BOOL)use
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_allowsLocationUse != use)
  {
    useCopy = use;
    self->_allowsLocationUse = use;
    if ([(RERelevanceEngineSubsystem *)self isRunning])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = self->_relevanceManagers;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            if ([objc_opt_class() _requiresLocationServices])
            {
              if (useCopy)
              {
                [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:v10];
                v11[0] = MEMORY[0x277D85DD0];
                v11[1] = 3221225472;
                v11[2] = __55__RERelevanceProviderEnvironment_setAllowsLocationUse___block_invoke;
                v11[3] = &unk_2785F9AE0;
                v11[4] = self;
                v11[5] = v10;
                [v10 resumeWithCompletion:v11];
              }

              else
              {
                [v10 pauseWithCompletion:&__block_literal_global_46_0];
              }
            }
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)_setupRelevanceProviderManagers
{
  v54 = *MEMORY[0x277D85DE8];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __65__RERelevanceProviderEnvironment__setupRelevanceProviderManagers__block_invoke;
  v49[3] = &unk_2785FC620;
  v49[4] = self;
  v3 = MEMORY[0x22AABC5E0](v49, a2);
  if (self->_createDefaultRelevanceProviders)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v4 = +[RERelevanceProviderManager providerManagerClasses];
    v5 = [v4 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
      do
      {
        v8 = 0;
        do
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(v3 + 16))(v3, *(*(&v45 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v6);
    }
  }

  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  configuration = [relevanceEngine configuration];
  relevanceProviderManagerLoader = [configuration relevanceProviderManagerLoader];

  v28 = relevanceProviderManagerLoader;
  v29 = v3;
  [relevanceProviderManagerLoader enumerationDataSourceClassesWithBlock:v3];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = 40;
  obj = self->_relevanceManagers;
  v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v32)
  {
    v31 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        _dependencyClasses = [objc_opt_class() _dependencyClasses];
        v15 = [_dependencyClasses countByEnumeratingWithState:&v37 objects:v51 count:16];
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
                objc_enumerationMutation(_dependencyClasses);
              }

              v19 = -[NSMapTable objectForKey:](self->_relevanceClassManagerMap, "objectForKey:", [*(*(&v37 + 1) + 8 * v18) _relevanceProviderClass]);
              if (v19)
              {
                [(REDependencyGraph *)self->_dependencyGraph markItem:v13 dependentOnItem:v19];
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = [_dependencyClasses countByEnumeratingWithState:&v37 objects:v51 count:16];
          }

          while (v16);
        }

        ++v12;
      }

      while (v12 != v32);
      v32 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v32);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = *(&self->super.super.isa + v27);
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * v24);
        v26 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
        [v25 _scheduleUpdate:v26];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v33 objects:v50 count:16];
    }

    while (v22);
  }
}

void __65__RERelevanceProviderEnvironment__setupRelevanceProviderManagers__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _features];
  v14 = [(REFeatureSet *)REMutableFeatureSet featureSetWithFeatures:v4];

  if ([*(*(a1 + 32) + 104) intersectsFeatureSet:v14])
  {
    v5 = [a2 alloc];
    v6 = [*(a1 + 32) queue];
    v7 = [v5 initWithQueue:v6];

    [v7 setEnvironment:*(a1 + 32)];
    [v14 intersetFeatureSet:*(*(a1 + 32) + 104)];
    [v7 setSupportedFeatures:v14];
    [*(*(a1 + 32) + 40) addObject:v7];
    [*(*(a1 + 32) + 48) setObject:v7 forKey:{objc_msgSend(objc_opt_class(), "_relevanceProviderClass")}];
    [*(*(a1 + 32) + 72) addItem:v7];
    v8 = [*(a1 + 32) relevanceEngine];
    v9 = [v8 logger];
    [v9 addLoggable:v7];

    v10 = *(a1 + 32);
    v11 = [a2 _features];
    v12 = [v11 firstObject];
    v13 = [v10 _histogramForFeature:v12];
  }
}

- (void)_queue_performUpdate:(id)update
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  [(RERelevanceEngineSubsystem *)self beginActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:self];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke;
  v41[3] = &unk_2785F9AB8;
  v41[4] = self;
  v5 = MEMORY[0x22AABC5E0](v41);
  if ([(NSHashTable *)self->_providersToUpdate count]|| [(NSMutableSet *)self->_providerManagersToUpdate count])
  {
    v23 = v5;
    v24 = updateCopy;
    v6 = [(NSMutableSet *)self->_providerManagersToUpdate mutableCopy];
    [(NSMutableSet *)self->_providerManagersToUpdate removeAllObjects];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = [v6 copy];
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          if ([(REDependencyGraph *)self->_dependencyGraph containsItem:v12])
          {
            dependencyGraph = self->_dependencyGraph;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2;
            v35[3] = &unk_2785FC648;
            v36 = v6;
            [(REDependencyGraph *)dependencyGraph enumerateDependenciesOfItem:v12 usingBlock:v35];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v9);
    }

    v14 = objc_alloc_init(REExpectation);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * j);
          [(REExpectation *)v14 beginOperation];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3;
          v29[3] = &unk_2785F9AB8;
          v30 = v14;
          [v20 _prepareForUpdateWithCompletion:v29];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v17);
    }

    queue = [(RERelevanceEngineSubsystem *)self queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4;
    v25[3] = &unk_2785FC710;
    v25[4] = self;
    v26 = v15;
    v5 = v23;
    v27 = v23;
    updateCopy = v24;
    v28 = v24;
    v22 = v15;
    [(REExpectation *)v14 notifyOperationsCompleteOrPerformUsingQueue:queue block:v25];
  }

  else
  {
    v5[2](v5);
    if (updateCopy)
    {
      updateCopy[2](updateCopy);
    }
  }
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 144) removeAllObjects];
  return [*(a1 + 32) endActivity:@"RERelevanceEngineSubsystemLoadingActivity" forObject:*(a1 + 32)];
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 128) copy];
  [*(*(a1 + 32) + 128) removeAllObjects];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = a1;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v4)
  {
    v5 = *v64;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v64 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v63 + 1) + 8 * i);
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v8 = [v7 allProviders];
        v9 = [v8 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v9)
        {
          v10 = *v60;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v60 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [v2 addObject:*(*(&v59 + 1) + 8 * j)];
            }

            v9 = [v8 countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v9);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v4);
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2810000000;
  v57 = &unk_2286CA6BA;
  v58 = 0;
  v29 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
  v12 = objc_alloc_init(REExpectation);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v70 count:16];
  if (v14)
  {
    v15 = *v51;
    v27 = v44;
    v28 = v38;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v50 + 1) + 8 * k);
        v18 = [v30[4] _providerManagerForProvider:{v17, v27, v28}];
        v19 = v18;
        if (v18)
        {
          if ([v18 containsProvider:v17])
          {
            [(REExpectation *)v12 beginOperation];
            if ([objc_opt_class() supportsHistoricProviders])
            {
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v44[0] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_54;
              v44[1] = &unk_2785FC698;
              v20 = v19;
              v45 = v20;
              v46 = v17;
              v49 = &v54;
              v47 = v29;
              v48 = v12;
              [v20 isProviderHistoric:v17 completion:v43];

              v21 = v45;
            }

            else
            {
              v37[0] = MEMORY[0x277D85DD0];
              v37[1] = 3221225472;
              v38[0] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4_61;
              v38[1] = &unk_2785FC6C0;
              v42 = &v54;
              v39 = v29;
              v40 = v17;
              v41 = v12;
              [v19 relevanceForProvider:v17 completion:v37];

              v21 = v39;
            }
          }

          else
          {
            v21 = RELogForDomain(3);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = v17;
              v68 = 2112;
              v69 = v19;
              _os_log_impl(&dword_22859F000, v21, OS_LOG_TYPE_INFO, "Can't find provider %@ in manager %@", buf, 0x16u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_30;
          }

          v21 = v17;
          *buf = [v21 value];
          os_unfair_lock_lock(v55 + 8);
          v22 = [RERelevanceValue alloc];
          v23 = [[RETaggedFeatureValueArray alloc] initWithValues:buf count:1];
          v24 = [(RERelevanceValue *)v22 initWithValues:v23 isHistoric:0];
          [v29 setObject:v24 forKey:v21];

          os_unfair_lock_unlock(v55 + 8);
        }

LABEL_30:
      }

      v14 = [v13 countByEnumeratingWithState:&v50 objects:v70 count:16];
    }

    while (v14);
  }

  v25 = [v30[4] queue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_5;
  v31[3] = &unk_2785FC6E8;
  v31[4] = v30[4];
  v36 = &v54;
  v26 = v29;
  v32 = v26;
  v33 = v30[5];
  v34 = v30[6];
  v35 = v30[7];
  [(REExpectation *)v12 notifyOperationsCompleteOrPerformUsingQueue:v25 block:v31];

  _Block_object_dispose(&v54, 8);
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_54(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2_55;
    v22[3] = &unk_2785FC670;
    v6 = &v23;
    v7 = &v24;
    v8 = *(a1 + 64);
    v9 = *(a1 + 48);
    v25 = v2;
    *&v10 = v9;
    *(&v10 + 1) = *(a1 + 40);
    v16 = v10;
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = v8;
    v23 = v16;
    v24 = v11;
    [v4 relevanceForHistoricProvider:v5 completion:v22];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3_59;
    v18[3] = &unk_2785FC670;
    v6 = &v19;
    v7 = &v20;
    v12 = *(a1 + 64);
    v13 = *(a1 + 48);
    v21 = v2;
    *&v14 = v13;
    *(&v14 + 1) = *(a1 + 40);
    v17 = v14;
    *&v15 = *(a1 + 56);
    *(&v15 + 1) = v12;
    v19 = v17;
    v20 = v15;
    [v4 relevanceForProvider:v5 completion:v18];
  }
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_2_55(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = *(a1 + 32);
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:*(a1 + 64)];
  [v5 setObject:v8 forKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v9 = *(a1 + 48);

  return [v9 endOperation];
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_3_59(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 56) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = *(a1 + 32);
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:*(a1 + 64)];
  [v5 setObject:v8 forKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  v9 = *(a1 + 48);

  return [v9 endOperation];
}

uint64_t __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_4_61(void *a1, void *a2)
{
  v3 = *(a1[7] + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  v5 = a1[4];
  v6 = [RERelevanceValue alloc];
  v7 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v4];

  v8 = [(RERelevanceValue *)v6 initWithValues:v7 isHistoric:0];
  [v5 setObject:v8 forKey:a1[5]];

  os_unfair_lock_unlock((*(a1[7] + 8) + 32));
  v9 = a1[6];

  return [v9 endOperation];
}

void __55__RERelevanceProviderEnvironment__queue_performUpdate___block_invoke_5(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 96) lock];
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  v2 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 80) objectForKey:v8];
        [*(a1 + 32) _removeRelevanceValueForProvider:v8];
        v10 = [*(a1 + 40) objectForKey:v8];
        [*(a1 + 32) _addRelevanceValue:v10 forProvider:v8];
        if (v9 != v10 && ([v9 isEqual:v10] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
  [*(*(a1 + 32) + 96) unlock];
  v11 = RELogForDomain(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) count];
    v13 = [v2 count];
    v14 = [*(a1 + 48) count];
    *buf = 134218496;
    v45 = v12;
    v46 = 2048;
    v47 = v13;
    v48 = 2048;
    v49 = v14;
    _os_log_impl(&dword_22859F000, v11, OS_LOG_TYPE_DEFAULT, "Performing update. %lu computed relevances. %lu changed providers. %lu managers to update.", buf, 0x20u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * j);
        v21 = [*(a1 + 32) delegate];
        [v21 relevanceEnvironment:*(a1 + 32) didUpdateRelevanceProvider:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v17);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = *(a1 + 48);
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v30 + 1) + 8 * k);
        if ([objc_opt_class() _wantsDelayedUpdate] && objc_msgSend(*(a1 + 48), "count") >= 2)
        {
          v28 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
          [v27 _scheduleUpdate:v28];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  (*(*(a1 + 56) + 16))();
  v29 = *(a1 + 64);
  if (v29)
  {
    (*(v29 + 16))();
  }
}

- (void)_removeRelevanceValueForProvider:(id)provider
{
  providerCopy = provider;
  v4 = [(NSMapTable *)self->_relevanceValues objectForKey:?];
  v5 = v4;
  if (v4 && ([v4 isHistoric] & 1) == 0)
  {
    values = [v5 values];
    firstFeatureValue = [values firstFeatureValue];
    v8 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:providerCopy];
    [v8 removeValue:firstFeatureValue];
  }

  [(NSMapTable *)self->_relevanceValues removeObjectForKey:providerCopy];
}

- (void)_addRelevanceValue:(id)value forProvider:(id)provider
{
  valueCopy = value;
  providerCopy = provider;
  if (([valueCopy isHistoric] & 1) == 0)
  {
    values = [valueCopy values];
    firstFeatureValue = [values firstFeatureValue];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:providerCopy];
    [v9 addValue:firstFeatureValue];
  }

  [(NSMapTable *)self->_relevanceValues setObject:valueCopy forKey:providerCopy];
}

- (id)_providerManagerForProvider:(id)provider
{
  relevanceClassManagerMap = self->_relevanceClassManagerMap;
  v4 = objc_opt_class();

  return [(NSMapTable *)relevanceClassManagerMap objectForKey:v4];
}

- (id)_histogramForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
  v6 = v5;
  if (v5)
  {
    effectiveFeatures = [v5 effectiveFeatures];
    firstObject = [effectiveFeatures firstObject];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:firstObject];

LABEL_5:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    effectiveFeatures = [providerCopy feature];
    v9 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:effectiveFeatures];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)_histogramForFeature:(id)feature
{
  featureCopy = feature;
  v5 = [(NSMapTable *)self->_relevanceHistogramMap objectForKey:featureCopy];
  if (!v5)
  {
    v5 = [[REHistogram alloc] initWithFeature:featureCopy];
    [(NSMapTable *)self->_relevanceHistogramMap setObject:v5 forKey:featureCopy];
  }

  return v5;
}

- (BOOL)addRelevanceProviderDidTriggerException:(id)exception completion:(id)completion
{
  exceptionCopy = exception;
  completionCopy = completion;
  if (exceptionCopy)
  {
    [exceptionCopy setEnvironment:self];
    v8 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:exceptionCopy];
    v9 = v8;
    if (v8)
    {
      [v8 addProvider:exceptionCopy completion:completionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders addObject:exceptionCopy];
        delegate = [(RERelevanceProviderEnvironment *)self delegate];
        [delegate relevanceEnvironment:self didUpdateRelevanceProvider:exceptionCopy];

        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v11, v12, v13, v14, v15, v16, exceptionCopy);
      }
    }

    v10 = [(REUpNextDisjointSet *)self->_relevanceProviderSet addItemDidTriggerException:exceptionCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addRelevanceProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  if (providerCopy)
  {
    [providerCopy setEnvironment:self];
    v7 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
    v8 = v7;
    if (v7)
    {
      [v7 addProvider:providerCopy completion:completionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders addObject:providerCopy];
        delegate = [(RERelevanceProviderEnvironment *)self delegate];
        [delegate relevanceEnvironment:self didUpdateRelevanceProvider:providerCopy];

        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v9, v10, v11, v12, v13, v14, providerCopy);
      }
    }

    [(REUpNextDisjointSet *)self->_relevanceProviderSet addItem:providerCopy];
  }
}

- (void)removeRelevanceProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  if (providerCopy)
  {
    [providerCopy setEnvironment:0];
    v7 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
    v8 = v7;
    if (v7)
    {
      [v7 removeProvider:providerCopy completion:completionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSHashTable *)self->_customProviders removeObject:providerCopy];
        if (completionCopy)
        {
          completionCopy[2](completionCopy);
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v9, v10, v11, v12, v13, v14, providerCopy);
      }
    }

    [(REUpNextDisjointSet *)self->_relevanceProviderSet removeItem:providerCopy];
    [(NSLock *)self->_relevanceValuesLock lock];
    [(RERelevanceProviderEnvironment *)self _removeRelevanceValueForProvider:providerCopy];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }
}

- (BOOL)containsRelevanceProvider:(id)provider
{
  if (!provider)
  {
    return 0;
  }

  environment = [provider environment];
  v5 = environment == self;

  return v5;
}

- (BOOL)isRelevanceProviderLoaded:(id)loaded
{
  loadedCopy = loaded;
  if ([(RERelevanceProviderEnvironment *)self containsRelevanceProvider:loadedCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      [(NSLock *)self->_relevanceValuesLock lock];
      v6 = [(NSMapTable *)self->_relevanceValues objectForKey:loadedCopy];
      v5 = v6 != 0;

      [(NSLock *)self->_relevanceValuesLock unlock];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)relateRelevanceProvider:(id)provider toRelevanceProvider:(id)relevanceProvider
{
  if (provider)
  {
    if (relevanceProvider)
    {
      [REUpNextDisjointSet connectItem:"connectItem:withItem:" withItem:?];
    }
  }
}

- (BOOL)isRelevanceProviderHistoric:(id)historic
{
  relevanceValuesLock = self->_relevanceValuesLock;
  historicCopy = historic;
  [(NSLock *)relevanceValuesLock lock];
  v6 = [(NSMapTable *)self->_relevanceValues objectForKey:historicCopy];

  if (v6)
  {
    isHistoric = [v6 isHistoric];
  }

  else
  {
    isHistoric = 0;
  }

  [(NSLock *)self->_relevanceValuesLock unlock];

  return isHistoric;
}

- (id)relevancesForRelevanceProvider:(id)provider usingContext:(id)context
{
  providerCopy = provider;
  contextCopy = context;
  if (!contextCopy)
  {
    v8 = [(RERelevanceProviderEnvironment *)self relevancesForRelevanceProvider:providerCopy];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [providerCopy value];
    v8 = [[RETaggedFeatureValueArray alloc] initWithValues:&value count:1];
LABEL_5:
    v9 = v8;
    goto LABEL_9;
  }

  v10 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
  v11 = [v10 relevanceForProvider:providerCopy context:contextCopy];
  v9 = [[RETaggedFeatureValueArray alloc] initWithFeatureValues:v11];
  if ([providerCopy relevancePriority] != 2)
  {
    [(NSLock *)self->_relevanceValuesLock lock];
    [(RERelevanceProviderEnvironment *)self _scaleRelevanceProviderValues:providerCopy values:v9];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }

LABEL_9:

  return v9;
}

- (id)relevancesForRelevanceProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [providerCopy value];
    v5 = [[RETaggedFeatureValueArray alloc] initWithValues:&value count:1];
  }

  else
  {
    [(NSLock *)self->_relevanceValuesLock lock];
    v6 = [(NSMapTable *)self->_relevanceValues objectForKey:providerCopy];
    values = [v6 values];
    v5 = [values copy];

    [(RERelevanceProviderEnvironment *)self _scaleRelevanceProviderValues:providerCopy values:v5];
    [(NSLock *)self->_relevanceValuesLock unlock];
  }

  return v5;
}

- (void)_scaleRelevanceProviderValues:(id)values values:(id)a4
{
  valuesCopy = values;
  v6 = a4;
  v7 = [(RERelevanceProviderEnvironment *)self featuresForRelevanceProvider:valuesCopy];
  firstObject = [v7 firstObject];
  featureType = [firstObject featureType];

  if (featureType == 2)
  {
    firstFeatureValue = [v6 firstFeatureValue];
    if (REFeatureValueTypeForTaggedPointer(firstFeatureValue) == 1)
    {
      v12 = REIntegerValueForTaggedPointer(firstFeatureValue);
    }

    else
    {
      v12 = REDoubleValueForTaggedPointer(firstFeatureValue, v11);
    }

    relevancePriority = [valuesCopy relevancePriority];
    if (relevancePriority == 3)
    {
      v14 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:valuesCopy];
      mean = [v14 mean];
      if (REFeatureValueTypeForTaggedPointer(mean) == 1)
      {
        v20 = REIntegerValueForTaggedPointer(mean);
      }

      else
      {
        v20 = REDoubleValueForTaggedPointer(mean, v19);
      }

      REReleaseFeatureValueTaggedPointer(mean);
      v21 = v20 * 0.5;
    }

    else
    {
      if (relevancePriority != 1)
      {
        if (!relevancePriority)
        {
          v12 = 0.0;
        }

        goto LABEL_19;
      }

      v14 = [(RERelevanceProviderEnvironment *)self _histogramForProvider:valuesCopy];
      mean2 = [v14 mean];
      if (REFeatureValueTypeForTaggedPointer(mean2) == 1)
      {
        v17 = REIntegerValueForTaggedPointer(mean2);
      }

      else
      {
        v17 = REDoubleValueForTaggedPointer(mean2, v16);
      }

      REReleaseFeatureValueTaggedPointer(mean2);
      v21 = (v17 + 1.0) * 0.5;
    }

    v12 = __71__RERelevanceProviderEnvironment__scaleRelevanceProviderValues_values___block_invoke(v12, v21);

LABEL_19:
    if (REFeatureValueTypeForTaggedPointer(firstFeatureValue) == 1)
    {
      v22 = RECreateIntegerFeatureValueTaggedPointer(v12);
    }

    else
    {
      v22 = RECreateDoubleFeatureValueTaggedPointer();
    }

    v23 = v22;
    if ([v6 count] == 1)
    {
      [v6 removeAllFeatureValues];
      [v6 addFeatureValue:v23];
    }

    else
    {
      [v6 removeFeatureValueAtIndex:0];
      [v6 insertFeatureValue:v23 atIndex:0];
    }

    REReleaseFeatureValueTaggedPointer(v23);
  }
}

float __71__RERelevanceProviderEnvironment__scaleRelevanceProviderValues_values___block_invoke(float a1, float a2)
{
  v2 = fmaxf(a2, 0.00000011921);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = (v2 * -2.0 + 1.0) / ((v2 + -1.0 + v2 + -1.0) * v2);
  v4 = ((1.0 - v3) * a1) + v3 * (a1 * a1);
  v5 = fmax(v4, 0.0);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v5;
  return (v6 + a1) * 0.5;
}

- (id)featuresForRelevanceProvider:(id)provider
{
  v19[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
  v6 = v5;
  if (v5)
  {
    effectiveFeatures = [v5 effectiveFeatures];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      feature = [providerCopy feature];
      v19[0] = feature;
      v15 = MEMORY[0x277CBEA60];
      v16 = v19;
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE658], @"Unsupported relevance provider: %@", v8, v9, v10, v11, v12, v13, providerCopy);
      feature = [REFeature featureWithName:&stru_283B97458 featureType:0];
      v18 = feature;
      v15 = MEMORY[0x277CBEA60];
      v16 = &v18;
    }

    effectiveFeatures = [v15 arrayWithObjects:v16 count:1];
  }

  return effectiveFeatures;
}

- (id)_relevaneProviderWithType:(id)type withOptions:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  optionsCopy = options;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_relevanceManagers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_msgSend(objc_opt_class() "_relevanceProviderClass")];
        v14 = [v13 isEqualToString:typeCopy];

        if (v14)
        {
          _relevanceProviderClass = [objc_opt_class() _relevanceProviderClass];
LABEL_20:
          v15 = [[_relevanceProviderClass alloc] initWithDictionary:optionsCopy];
          goto LABEL_21;
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_supportedFeatures;
  v15 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v8);
        }

        name = [*(*(&v22 + 1) + 8 * j) name];
        v19 = [name isEqualToString:typeCopy];

        if (v19)
        {
          _relevanceProviderClass = RECustomRelevanceProvider;
          goto LABEL_20;
        }
      }

      v15 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v15;
}

- (id)encodeRelevaneProvider:(id)provider
{
  v18[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
  if (v5)
  {
    dictionaryEncoding = [providerCopy dictionaryEncoding];
    relevanceSimulatorID = [objc_opt_class() relevanceSimulatorID];
    v8 = relevanceSimulatorID;
    if (dictionaryEncoding && [relevanceSimulatorID length])
    {
      v17 = v8;
      v18[0] = dictionaryEncoding;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = providerCopy;
      feature = [v10 feature];
      name = [feature name];

      dictionaryEncoding2 = [v10 dictionaryEncoding];

      v15 = name;
      v16 = dictionaryEncoding2;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)createRelevaneProviderWithType:(id)type withOptions:(id)options
{
  v5 = [(RERelevanceProviderEnvironment *)self _relevaneProviderWithType:type withOptions:options];
  if (v5 && [(RERelevanceProviderEnvironment *)self isSupportedRelevanceProvider:v5])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)allProviderValues
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NSLock *)self->_relevanceValuesLock lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_relevanceValues keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_relevanceValues objectForKey:v9];
        v11 = [v10 copy];
        [dictionary setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(NSLock *)self->_relevanceValuesLock unlock];
  v12 = [dictionary copy];

  return v12;
}

- (RERelevanceProviderEnvironmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)immediateUpdateForRelevanceProviderManager:(id)manager completion:(id)completion
{
  providerManagersToUpdate = self->_providerManagersToUpdate;
  completionCopy = completion;
  [(NSMutableSet *)providerManagersToUpdate addObject:manager];
  [(RERelevanceProviderEnvironment *)self _queue_performUpdate:completionCopy];
}

- (void)scheduleUpdateForRelevanceProvider:(id)provider completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  completionCopy = completion;
  v8 = RELogForDomain(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = providerCopy;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling imminent update for relevance provider %{public}@", &v11, 0xCu);
  }

  if (completionCopy)
  {
    updateCompletionBlocks = self->_updateCompletionBlocks;
    v10 = MEMORY[0x22AABC5E0](completionCopy);
    [(NSMutableArray *)updateCompletionBlocks addObject:v10];
  }

  [(NSHashTable *)self->_providersToUpdate addObject:providerCopy];
  [(REUpNextScheduler *)self->_scheduler schedule];
}

- (void)scheduleUpdateForRelevanceProviderManager:(id)manager completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  completionCopy = completion;
  v8 = RELogForDomain(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = managerCopy;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling imminent update for relevance provider manager %{public}@", &v11, 0xCu);
  }

  if (completionCopy)
  {
    updateCompletionBlocks = self->_updateCompletionBlocks;
    v10 = MEMORY[0x22AABC5E0](completionCopy);
    [(NSMutableArray *)updateCompletionBlocks addObject:v10];
  }

  [(NSMutableSet *)self->_providerManagersToUpdate addObject:managerCopy];
  [(REUpNextScheduler *)self->_scheduler schedule];
}

- (void)accessHistogramForFeature:(id)feature usingBlock:(id)block
{
  blockCopy = block;
  relevanceValuesLock = self->_relevanceValuesLock;
  featureCopy = feature;
  [(NSLock *)relevanceValuesLock lock];
  v8 = [(RERelevanceProviderEnvironment *)self _histogramForFeature:featureCopy];

  if (blockCopy && v8)
  {
    blockCopy[2](blockCopy, v8);
  }

  [(NSLock *)self->_relevanceValuesLock unlock];
}

- (BOOL)isSupportedRelevanceProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(RERelevanceProviderEnvironment *)self _providerManagerForProvider:providerCopy];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      feature = [providerCopy feature];
      v6 = [(REFeatureSet *)self->_supportedFeatures containsFeature:feature];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end