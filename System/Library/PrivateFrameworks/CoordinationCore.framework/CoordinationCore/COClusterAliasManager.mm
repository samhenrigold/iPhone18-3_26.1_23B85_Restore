@interface COClusterAliasManager
+ (id)aliasManagerWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue;
- (BOOL)_clusterIsBootstrapped:(id)bootstrapped;
- (COClusterAliasManagerDelegate)delegate;
- (COClusterAliasManagerMeshProvider)provider;
- (NSString)description;
- (id)_initWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue;
- (id)_labelForClusters:(id)clusters;
- (id)_prepareNewMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (id)_providerRequestMesh;
- (void)_activateMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters;
- (void)_addWaitingBlock:(id)block forCluster:(id)cluster;
- (void)_applyUpdates;
- (void)_deactivateMeshWithClusterIdentifier:(id)identifier;
- (void)_delegateNotifyActivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)_delegateNotifyDeactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion;
- (void)_invokeWaitingBlocksForClusters:(id)clusters;
- (void)_recomputeAssociations;
- (void)_updateClusterIdentifier:(id)identifier forCluster:(id)cluster;
- (void)didStopMeshController:(id)controller;
- (void)resolver:(id)resolver clusterIdentifierChanged:(id)changed;
- (void)startTrackingCluster:(id)cluster;
- (void)stopTrackingCluster:(id)cluster;
- (void)waitForBootstrapOfCluster:(id)cluster withBlock:(id)block;
@end

@implementation COClusterAliasManager

- (id)_initWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue
{
  providerCopy = provider;
  delegateCopy = delegate;
  queueCopy = queue;
  v35.receiver = self;
  v35.super_class = COClusterAliasManager;
  v11 = [(COClusterAliasManager *)&v35 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_provider, providerCopy);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v12->_delegateDispatchQueue, queue);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.COClusterAliasManager", v13);
    dispatchQueue = v12->_dispatchQueue;
    v12->_dispatchQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    resolvers = v12->_resolvers;
    v12->_resolvers = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
    resolving = v12->_resolving;
    v12->_resolving = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    waiting = v12->_waiting;
    v12->_waiting = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    identifiers = v12->_identifiers;
    v12->_identifiers = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    updates = v12->_updates;
    v12->_updates = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    associations = v12->_associations;
    v12->_associations = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    meshes = v12->_meshes;
    v12->_meshes = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB98]);
    starting = v12->_starting;
    v12->_starting = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB98]);
    stopping = v12->_stopping;
    v12->_stopping = v32;
  }

  return v12;
}

+ (id)aliasManagerWithProvider:(id)provider delegate:(id)delegate delegateDispatchQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  providerCopy = provider;
  v11 = [[self alloc] _initWithProvider:providerCopy delegate:delegateCopy delegateDispatchQueue:queueCopy];

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resolvers = [(COClusterAliasManager *)self resolvers];
  v7 = [resolvers count];
  identifiers = [(COClusterAliasManager *)self identifiers];
  v9 = [identifiers count];
  associations = [(COClusterAliasManager *)self associations];
  v11 = [associations count];
  meshes = [(COClusterAliasManager *)self meshes];
  v13 = [v3 stringWithFormat:@"<%@: %p r(%lu) i(%lu) a(%lu) m(%lu)>", v5, self, v7, v9, v11, objc_msgSend(meshes, "count")];

  return v13;
}

- (void)startTrackingCluster:(id)cluster
{
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__COClusterAliasManager_startTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = clusterCopy;
  v6 = clusterCopy;
  dispatch_async(dispatchQueue, v7);
}

void __46__COClusterAliasManager_startTrackingCluster___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) resolvers];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v4 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v13 = 134218498;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2048;
      v18 = v3;
      _os_log_debug_impl(&dword_244378000, v4, OS_LOG_TYPE_DEBUG, "%p already tracking %@ with %p", &v13, 0x20u);
    }
  }

  else
  {
    v3 = [COClusterResolver resolverForCluster:*(a1 + 40) delegate:*(a1 + 32)];
    v7 = [*(a1 + 32) resolvers];
    v4 = [v7 mutableCopy];

    [v4 setObject:v3 forKey:*(a1 + 40)];
    [*(a1 + 32) setResolvers:v4];
    v8 = [*(a1 + 32) resolving];
    v9 = [v8 mutableCopy];

    [v9 addObject:*(a1 + 40)];
    [*(a1 + 32) setResolving:v9];
    v10 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 134218498;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2048;
      v18 = v3;
      _os_log_impl(&dword_244378000, v10, OS_LOG_TYPE_DEFAULT, "%p will track %@ with %p", &v13, 0x20u);
    }

    [v3 activate];
  }
}

- (void)stopTrackingCluster:(id)cluster
{
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__COClusterAliasManager_stopTrackingCluster___block_invoke;
  v7[3] = &unk_278E156B0;
  v7[4] = self;
  v8 = clusterCopy;
  v6 = clusterCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__COClusterAliasManager_stopTrackingCluster___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) resolvers];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 objectForKey:v5];

  v7 = COCoreLogForCategory(13);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v2;
      v10 = *v4;
      v12 = 134218242;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%p stopping tracking %@", &v12, 0x16u);
    }

    v11 = [*v2 resolvers];
    v8 = [v11 mutableCopy];

    [v8 removeObjectForKey:*v4];
    [*v2 setResolvers:v8];
    [*v2 _updateClusterIdentifier:0 forCluster:*v4];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __45__COClusterAliasManager_stopTrackingCluster___block_invoke_cold_1();
  }
}

- (void)waitForBootstrapOfCluster:(id)cluster withBlock:(id)block
{
  clusterCopy = cluster;
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke;
  v18[3] = &unk_278E16240;
  v18[4] = self;
  v8 = blockCopy;
  v19 = v8;
  v9 = MEMORY[0x245D5FF10](v18);
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2;
  v14[3] = &unk_278E16268;
  v14[4] = self;
  v15 = clusterCopy;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = clusterCopy;
  dispatch_async(dispatchQueue, v14);
}

void __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateDispatchQueue];
  dispatch_async(v2, *(a1 + 40));
}

void __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) resolvers];
  v4 = (a1 + 40);
  v5 = [v3 objectForKey:*(a1 + 40)];

  if (v5)
  {
    if (![*v2 _clusterIsBootstrapped:*v4])
    {
      [*(a1 + 32) _addWaitingBlock:*(a1 + 56) forCluster:*(a1 + 40)];
      goto LABEL_9;
    }

    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v2;
      v8 = *v4;
      v9 = 134218242;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p already bootstrapped Cluster %@, invoking bootstrap block inline", &v9, 0x16u);
    }
  }

  else
  {
    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__COClusterAliasManager_waitForBootstrapOfCluster_withBlock___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

- (void)resolver:(id)resolver clusterIdentifierChanged:(id)changed
{
  resolverCopy = resolver;
  changedCopy = changed;
  cluster = [resolverCopy cluster];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__COClusterAliasManager_resolver_clusterIdentifierChanged___block_invoke;
  v13[3] = &unk_278E15C88;
  v14 = resolverCopy;
  selfCopy = self;
  v16 = cluster;
  v17 = changedCopy;
  v10 = changedCopy;
  v11 = cluster;
  v12 = resolverCopy;
  dispatch_async(dispatchQueue, v13);
}

void __59__COClusterAliasManager_resolver_clusterIdentifierChanged___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) resolvers];
  v4 = [v3 objectForKey:*(a1 + 48)];
  LODWORD(v2) = [v2 isEqual:v4];

  if (v2)
  {
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 40);

    [v7 _updateClusterIdentifier:v5 forCluster:v6];
  }

  else
  {
    v8 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      v13 = 134218754;
      v14 = v11;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_error_impl(&dword_244378000, v8, OS_LOG_TYPE_ERROR, "%p ignoring change to %@ for %@ from %@", &v13, 0x2Au);
    }
  }
}

- (void)_updateClusterIdentifier:(id)identifier forCluster:(id)cluster
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifiers = [(COClusterAliasManager *)self identifiers];
  v10 = [identifiers objectForKey:clusterCopy];

  updates = [(COClusterAliasManager *)self updates];
  v12 = [updates objectForKey:clusterCopy];

  v13 = identifierCopy;
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134219010;
    selfCopy = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = clusterCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p identifier updated to %@ from %@ (pending %@) for %@", &v21, 0x34u);
  }

  resolving = [(COClusterAliasManager *)self resolving];
  v16 = [resolving containsObject:clusterCopy];

  if (v16)
  {
    resolving2 = [(COClusterAliasManager *)self resolving];
    v18 = [resolving2 mutableCopy];

    [v18 removeObject:clusterCopy];
    [(COClusterAliasManager *)self setResolving:v18];
  }

  if ((v13 || v10 || v12) && (![v12 isEqual:v13] || !objc_msgSend(v10, "isEqual:", v13)))
  {
    updates2 = [(COClusterAliasManager *)self updates];
    v19 = [updates2 mutableCopy];

    if (v13)
    {
      [v19 setObject:v13 forKey:clusterCopy];
    }

    else
    {
      [v19 removeObjectForKey:clusterCopy];
    }

    [(COClusterAliasManager *)self setUpdates:v19];
    if (v10)
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:v10];
    }

    if (v13)
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:v13];
    }

    [(COClusterAliasManager *)self _applyUpdates];
  }

  else
  {
    v19 = [MEMORY[0x277CBEB98] setWithObject:clusterCopy];
    [(COClusterAliasManager *)self _invokeWaitingBlocksForClusters:v19];
  }
}

- (void)_applyUpdates
{
  v32 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  stopping = [(COClusterAliasManager *)self stopping];
  v5 = [stopping count];

  v6 = COCoreLogForCategory(13);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      stopping2 = [(COClusterAliasManager *)self stopping];
      *buf = 134218498;
      selfCopy3 = self;
      v28 = 2048;
      v29 = v5;
      v30 = 2112;
      v31 = stopping2;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p deferring updates, waiting for %lu (%@) to stop", buf, 0x20u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p applying updates", buf, 0xCu);
    }

    updates = [(COClusterAliasManager *)self updates];
    v10 = [updates copy];
    [(COClusterAliasManager *)self setIdentifiers:v10];

    [(COClusterAliasManager *)self _recomputeAssociations];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    associations = [(COClusterAliasManager *)self associations];
    v12 = [associations countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(associations);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          meshes = [(COClusterAliasManager *)self meshes];
          v18 = [meshes objectForKey:v16];

          if (!v18)
          {
            associations2 = [(COClusterAliasManager *)self associations];
            v20 = [associations2 objectForKey:v16];

            [(COClusterAliasManager *)self _activateMeshWithClusterIdentifier:v16 forClusters:v20];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [associations countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p finished applying updates", buf, 0xCu);
    }
  }
}

- (void)_recomputeAssociations
{
  v29 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  identifiers = [(COClusterAliasManager *)self identifiers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [identifiers countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [identifiers objectForKey:v10];
        v12 = [v4 objectForKey:v11];
        v13 = [v12 mutableCopy];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
        }

        [v13 addObject:v10];
        [v4 setObject:v13 forKey:v11];
      }

      v7 = [identifiers countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  [(COClusterAliasManager *)selfCopy setAssociations:v4];
  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v4 count];
    v16 = [identifiers count];
    *buf = 134218496;
    v23 = selfCopy;
    v24 = 2048;
    v25 = v15;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p recomputed associations, %lu meshes for %lu Clusters", buf, 0x20u);
  }
}

- (BOOL)_clusterIsBootstrapped:(id)bootstrapped
{
  bootstrappedCopy = bootstrapped;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  resolving = [(COClusterAliasManager *)self resolving];
  v7 = [resolving containsObject:bootstrappedCopy];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    identifiers = [(COClusterAliasManager *)self identifiers];
    v10 = [identifiers objectForKey:bootstrappedCopy];

    updates = [(COClusterAliasManager *)self updates];
    v12 = [updates objectForKey:bootstrappedCopy];

    if (v12 | v10)
    {
      v13 = [v10 isEqual:v12];
      v8 = v13;
      if (v13 && v10)
      {
        starting = [(COClusterAliasManager *)self starting];
        v15 = [starting containsObject:v10];

        v8 = v15 ^ 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

- (void)_addWaitingBlock:(id)block forCluster:(id)cluster
{
  v23 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  clusterCopy = cluster;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  waiting = [(COClusterAliasManager *)self waiting];
  v10 = [waiting objectForKey:clusterCopy];

  if (v10)
  {
    v11 = MEMORY[0x245D5FF10](blockCopy);
    v12 = [v10 arrayByAddingObject:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = MEMORY[0x245D5FF10](blockCopy);
    v12 = [v13 initWithObjects:{v11, 0}];
  }

  v14 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v19 = 2048;
    v20 = [v12 count];
    v21 = 2112;
    v22 = clusterCopy;
    _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p now %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
  }

  waiting2 = [(COClusterAliasManager *)self waiting];
  v16 = [waiting2 mutableCopy];

  [v16 setObject:v12 forKey:clusterCopy];
  [(COClusterAliasManager *)self setWaiting:v16];
}

- (void)_invokeWaitingBlocksForClusters:(id)clusters
{
  v36 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  waiting = [(COClusterAliasManager *)self waiting];
  v7 = [waiting mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = clustersCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v26;
    *&v11 = 134218242;
    v22 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if ([(COClusterAliasManager *)self _clusterIsBootstrapped:v15, v22])
        {
          waiting2 = [(COClusterAliasManager *)self waiting];
          v17 = [waiting2 objectForKey:v15];

          if (v17)
          {
            v18 = COCoreLogForCategory(13);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 count];
              *buf = 134218498;
              selfCopy2 = self;
              v31 = 2048;
              v32 = v19;
              v33 = 2112;
              v34 = v15;
              _os_log_impl(&dword_244378000, v18, OS_LOG_TYPE_DEFAULT, "%p now invoking %lu blocks waiting for bootstrap of Cluster %@", buf, 0x20u);
            }

            [array addObjectsFromArray:v17];
            [v7 removeObjectForKey:v15];
          }
        }

        else
        {
          v17 = COCoreLogForCategory(13);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            selfCopy2 = self;
            v31 = 2112;
            v32 = v15;
            _os_log_error_impl(&dword_244378000, v17, OS_LOG_TYPE_ERROR, "%p NOT invoking blocks waiting for bootstrap of Cluster %@, not bootstrapped", buf, 0x16u);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v12);
  }

  [(COClusterAliasManager *)self setWaiting:v7];
  delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__COClusterAliasManager__invokeWaitingBlocksForClusters___block_invoke;
  block[3] = &unk_278E15AB8;
  v24 = array;
  v21 = array;
  dispatch_async(delegateDispatchQueue, block);
}

void __57__COClusterAliasManager__invokeWaitingBlocksForClusters___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_deactivateMeshWithClusterIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  stopping = [(COClusterAliasManager *)self stopping];
  v7 = [stopping containsObject:identifierCopy];

  if (v7)
  {
    v8 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(COClusterAliasManager *)self _deactivateMeshWithClusterIdentifier:identifierCopy, v8];
    }
  }

  else
  {
    meshes = [(COClusterAliasManager *)self meshes];
    v8 = [meshes objectForKey:identifierCopy];

    if (v8)
    {
      stopping2 = [(COClusterAliasManager *)self stopping];
      v11 = [stopping2 setByAddingObject:identifierCopy];

      [(COClusterAliasManager *)self setStopping:v11];
      v12 = COCoreLogForCategory(13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218754;
        selfCopy2 = self;
        v18 = 2048;
        v19 = v8;
        v20 = 2112;
        v21 = identifierCopy;
        v22 = 2048;
        v23 = [v11 count];
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%p deactivating %p with %@ (%lu stopping)", &v16, 0x2Au);
      }

      starting = [(COClusterAliasManager *)self starting];
      v14 = [starting containsObject:identifierCopy];

      if (v14)
      {
        v15 = COCoreLogForCategory(13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134218498;
          selfCopy2 = self;
          v18 = 2048;
          v19 = v8;
          v20 = 2112;
          v21 = identifierCopy;
          _os_log_debug_impl(&dword_244378000, v15, OS_LOG_TYPE_DEBUG, "%p deferring deactivation of %p with %@", &v16, 0x20u);
        }
      }

      else
      {
        [v8 stop];
      }
    }
  }
}

- (void)_activateMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  meshes = [(COClusterAliasManager *)self meshes];
  v10 = [meshes objectForKey:identifierCopy];

  if (v10)
  {
    v11 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy3 = self;
      v22 = 2048;
      v23 = v10;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = clustersCopy;
      _os_log_impl(&dword_244378000, v11, OS_LOG_TYPE_DEFAULT, "%p found existing %p with %@ for %@ to activate", buf, 0x2Au);
    }

    goto LABEL_6;
  }

  v10 = [(COClusterAliasManager *)self _prepareNewMeshWithClusterIdentifier:identifierCopy forClusters:clustersCopy];
  if (v10)
  {
LABEL_6:
    starting = [(COClusterAliasManager *)self starting];
    v13 = [starting setByAddingObject:identifierCopy];

    [(COClusterAliasManager *)self setStarting:v13];
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy3 = self;
      v22 = 2048;
      v23 = v10;
      v24 = 2112;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = clustersCopy;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p activating %p with %@ for %@", buf, 0x2Au);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__COClusterAliasManager__activateMeshWithClusterIdentifier_forClusters___block_invoke;
    v16[3] = &unk_278E15C88;
    v16[4] = self;
    v17 = identifierCopy;
    v18 = v10;
    v19 = clustersCopy;
    v15 = v10;
    [(COClusterAliasManager *)self _delegateNotifyActivatingMesh:v15 withClusterIdentifier:v17 forClusters:v19 completion:v16];

    goto LABEL_9;
  }

  v15 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v22 = 2112;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = clustersCopy;
    _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%p unable to activate with %@ for %@", buf, 0x20u);
  }

LABEL_9:
}

void __72__COClusterAliasManager__activateMeshWithClusterIdentifier_forClusters___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) starting];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*(a1 + 40)];
  [*(a1 + 32) setStarting:v3];
  v4 = [*(a1 + 32) stopping];
  v5 = [v4 containsObject:*(a1 + 40)];

  if (v5)
  {
    [*(a1 + 32) didStopMeshController:*(a1 + 48)];
  }

  else
  {
    v6 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = 134219010;
      v12 = v7;
      v13 = 2048;
      v14 = v9;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      v19 = 2048;
      v20 = [v3 count];
      _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p starting %p with %@ for %@ (%lu starting)", &v11, 0x34u);
    }

    [*(a1 + 48) start];
    [*(a1 + 32) _invokeWaitingBlocksForClusters:*(a1 + 56)];
  }
}

- (id)_prepareNewMeshWithClusterIdentifier:(id)identifier forClusters:(id)clusters
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  clustersCopy = clusters;
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  anyObject = [clustersCopy anyObject];
  configuration = [anyObject configuration];

  options = [configuration options];
  _providerRequestMesh = [(COClusterAliasManager *)self _providerRequestMesh];
  [_providerRequestMesh setClusterOptions:options];
  globalServiceName = [configuration globalServiceName];
  [_providerRequestMesh setGlobalServiceName:globalServiceName];

  if (_providerRequestMesh)
  {
    v14 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      selfCopy2 = self;
      v45 = 2048;
      v46 = _providerRequestMesh;
      v47 = 2112;
      v48 = identifierCopy;
      v49 = 2112;
      v50 = clustersCopy;
      _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%p created %p with %@ for %@", buf, 0x2Au);
    }

    [_providerRequestMesh setMeshName:identifierCopy];
    v15 = [(COClusterAliasManager *)self _labelForClusters:clustersCopy];
    [_providerRequestMesh setLabel:v15];

    v16 = objc_alloc_init(_COClusterAliasManagerStateTrackingAddOn);
    [(_COClusterAliasManagerStateTrackingAddOn *)v16 setAliasManager:self];
    v37 = v16;
    [_providerRequestMesh addAddOn:v16];
    meshes = [(COClusterAliasManager *)self meshes];
    v36 = meshes;
    if ([MEMORY[0x277CFD0B8] isSharedCompanionLinkClientEnabled])
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      allValues = [meshes allValues];
      v19 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v39;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v39 != v21)
            {
              objc_enumerationMutation(allValues);
            }

            companionLinkClientFactory = [*(*(&v38 + 1) + 8 * i) companionLinkClientFactory];
            if (companionLinkClientFactory)
            {
              v24 = companionLinkClientFactory;

              goto LABEL_15;
            }
          }

          v20 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = objc_alloc_init(COCompanionLinkClientFactory);
LABEL_15:
      [_providerRequestMesh setCompanionLinkClientFactory:v24];

      meshes = v36;
    }

    v25 = [meshes mutableCopy];
    [v25 setObject:_providerRequestMesh forKey:identifierCopy];
    [(COClusterAliasManager *)self setMeshes:v25];
    v26 = COCoreLogForCategory(13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v25 count];
      starting = [(COClusterAliasManager *)self starting];
      v28 = configuration;
      v29 = clustersCopy;
      v30 = identifierCopy;
      v31 = [starting count];
      stopping = [(COClusterAliasManager *)self stopping];
      v33 = [stopping count];
      *buf = 134218752;
      selfCopy2 = self;
      v45 = 2048;
      v46 = v35;
      v47 = 2048;
      v48 = v31;
      identifierCopy = v30;
      clustersCopy = v29;
      configuration = v28;
      v49 = 2048;
      v50 = v33;
      _os_log_impl(&dword_244378000, v26, OS_LOG_TYPE_DEFAULT, "%p now %lu meshes (%lu starting, %lu stopping)", buf, 0x2Au);

      meshes = v36;
    }
  }

  return _providerRequestMesh;
}

- (void)didStopMeshController:(id)controller
{
  controllerCopy = controller;
  meshName = [controllerCopy meshName];
  dispatchQueue = [(COClusterAliasManager *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__COClusterAliasManager_didStopMeshController___block_invoke;
  block[3] = &unk_278E15728;
  block[4] = self;
  v10 = meshName;
  v11 = controllerCopy;
  v7 = controllerCopy;
  v8 = meshName;
  dispatch_async(dispatchQueue, block);
}

void __47__COClusterAliasManager_didStopMeshController___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) associations];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    *buf = 134218754;
    v15 = v7;
    v16 = 2048;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "%p deactivating stopped %p with %@ for %@", buf, 0x2Au);
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__COClusterAliasManager_didStopMeshController___block_invoke_22;
  v11[3] = &unk_278E15728;
  v11[4] = v10;
  v12 = v8;
  v13 = *(a1 + 48);
  [v10 _delegateNotifyDeactivatingMesh:v9 withClusterIdentifier:v12 forClusters:v3 completion:v11];
}

void __47__COClusterAliasManager_didStopMeshController___block_invoke_22(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) meshes];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setMeshes:v3];
  v4 = [*(a1 + 32) stopping];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 40)];
  [*(a1 + 32) setStopping:v5];
  v6 = COCoreLogForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = [v3 count];
    v11 = [*(a1 + 32) starting];
    v12 = 134219266;
    v13 = v9;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = [v11 count];
    v22 = 2048;
    v23 = [v5 count];
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%p removing deactivated %p with %@ (now %lu meshes, %lu starting, %lu stopping)", &v12, 0x3Eu);
  }

  [*(a1 + 32) _applyUpdates];
}

- (id)_providerRequestMesh
{
  provider = [(COClusterAliasManager *)self provider];
  v4 = provider;
  if (provider)
  {
    v5 = [provider aliasManagerRequestsNewMesh:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_delegateNotifyActivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  meshCopy = mesh;
  identifierCopy = identifier;
  clustersCopy = clusters;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = completionCopy;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  delegate = [(COClusterAliasManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = delegate;
    selfCopy = self;
    v21 = meshCopy;
    v22 = identifierCopy;
    v23 = clustersCopy;
    v24 = v15;
    dispatch_async(delegateDispatchQueue, block);
  }

  else
  {
    v15[2](v15);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __100__COClusterAliasManager__delegateNotifyActivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dispatchQueue];
    dispatch_async(v3, *(a1 + 32));

    WeakRetained = v4;
  }
}

- (void)_delegateNotifyDeactivatingMesh:(id)mesh withClusterIdentifier:(id)identifier forClusters:(id)clusters completion:(id)completion
{
  meshCopy = mesh;
  identifierCopy = identifier;
  clustersCopy = clusters;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke;
  v25[3] = &unk_278E16290;
  objc_copyWeak(&v27, &location);
  v14 = completionCopy;
  v26 = v14;
  v15 = MEMORY[0x245D5FF10](v25);
  delegate = [(COClusterAliasManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateDispatchQueue = [(COClusterAliasManager *)self delegateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke_2;
    block[3] = &unk_278E157A0;
    v19 = delegate;
    selfCopy = self;
    v21 = meshCopy;
    v22 = identifierCopy;
    v23 = clustersCopy;
    v24 = v15;
    dispatch_async(delegateDispatchQueue, block);
  }

  else
  {
    v15[2](v15);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __102__COClusterAliasManager__delegateNotifyDeactivatingMesh_withClusterIdentifier_forClusters_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dispatchQueue];
    dispatch_async(v3, *(a1 + 32));

    WeakRetained = v4;
  }
}

- (id)_labelForClusters:(id)clusters
{
  v33 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = clustersCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        label = [*(*(&v26 + 1) + 8 * i) label];
        [v4 addObject:label];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277CFCEF0];
  v31[0] = *MEMORY[0x277CFCEE8];
  v31[1] = v11;
  v12 = *MEMORY[0x277CFCEE0];
  v31[2] = *MEMORY[0x277CFCED8];
  v31[3] = v12;
  [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
LABEL_10:
    v17 = 0;
    while (1)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v22 + 1) + 8 * v17);
      if ([v4 containsObject:{v18, v22}])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v19 = v18;

    if (v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_16:
  }

  v20 = [v4 sortedArrayUsingSelector:{sel_localizedCaseInsensitiveCompare_, v22}];
  v19 = [v20 componentsJoinedByString:@"|"];

LABEL_19:

  return v19;
}

- (COClusterAliasManagerMeshProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (COClusterAliasManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deactivateMeshWithClusterIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_244378000, log, OS_LOG_TYPE_DEBUG, "%p already deactivating %@", &v3, 0x16u);
}

@end