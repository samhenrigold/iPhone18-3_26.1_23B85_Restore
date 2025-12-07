@interface TRIPurgeableConstructs
- (TRIPurgeableConstructs)initWithPurgeabilityLevel:(int)level purgeableNamespacesProvider:(id)provider paths:(id)paths;
@end

@implementation TRIPurgeableConstructs

- (TRIPurgeableConstructs)initWithPurgeabilityLevel:(int)level purgeableNamespacesProvider:(id)provider paths:(id)paths
{
  v6 = *&level;
  v29 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  pathsCopy = paths;
  v24.receiver = self;
  v24.super_class = TRIPurgeableConstructs;
  v10 = [(TRIPurgeableConstructs *)&v24 init];
  v11 = v10;
  if (v10)
  {
    [providerCopy partitionPurgeableNamespacesForPurgeabilityLevel:v6 namespaceNamesPurgeableAtNamespaceLevel:&v10->_namespaceNamesPurgeableAtNamespaceLevel eagerPurgeableFactorsByNamespaceName:&v10->_eagerPurgeableFactorsByNamespaceName cacheDeleteableFactorsByNamespaceName:&v10->_cacheDeleteableFactorsByNamespaceName];
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NSMutableSet *)v11->_namespaceNamesPurgeableAtNamespaceLevel count];
      v14 = [(NSMutableDictionary *)v11->_eagerPurgeableFactorsByNamespaceName count];
      *buf = 134218240;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Found %lu purgeable namespaces and %lu namespaces with purgeable factors", buf, 0x16u);
    }

    v15 = objc_opt_new();
    eagerPurgeableFactorsByNamespaceName = v11->_eagerPurgeableFactorsByNamespaceName;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__TRIPurgeableConstructs_initWithPurgeabilityLevel_purgeableNamespacesProvider_paths___block_invoke;
    v21[3] = &unk_279DDFD10;
    v22 = pathsCopy;
    v17 = v15;
    v23 = v17;
    [(NSMutableDictionary *)eagerPurgeableFactorsByNamespaceName enumerateKeysAndObjectsUsingBlock:v21];
    v18 = v11->_eagerPurgeableFactorsByNamespaceName;
    v11->_eagerPurgeableFactorsByNamespaceName = v17;
    v19 = v17;
  }

  return v11;
}

void __86__TRIPurgeableConstructs_initWithPurgeabilityLevel_purgeableNamespacesProvider_paths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D73760];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v13 = [v5 factorProviderWithPaths:v6 namespaceName:v8];
  v9 = MEMORY[0x277CBEB58];
  v10 = [v7 allObjects];

  v11 = [v13 factorNamesWithObfuscation:v10];
  v12 = [v9 setWithArray:v11];

  [*(a1 + 40) setObject:v12 forKey:v8];
}

@end